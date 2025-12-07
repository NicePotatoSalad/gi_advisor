import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:genshin_advisor/services/llm_service.dart';
import 'package:genshin_advisor/core/config/app_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// OpenAI implementation of LLMService
class OpenAILLMService implements LLMService {
  OpenAILLMService({
    String? apiKey,
    String? baseUrl,
    String? model,
  })  : _apiKey = apiKey,
        _baseUrl = baseUrl ?? AppConfig.llmApiBaseUrl,
        _model = model ?? AppConfig.llmModel;

  String? _apiKey;
  final String _baseUrl;
  final String _model;

  static const String _apiKeyPrefsKey = 'openai_api_key';

  /// Initialize the service by loading API key from preferences
  Future<void> initialize() async {
    if (_apiKey == null) {
      final prefs = await SharedPreferences.getInstance();
      _apiKey = prefs.getString(_apiKeyPrefsKey);
      // ignore: avoid_print
      if (_apiKey != null) {
        print('Loaded API key from preferences (length: ${_apiKey!.length})');
      }
    }
  }

  /// Save API key securely
  Future<void> setApiKey(String apiKey) async {
    if (apiKey.isEmpty) {
      throw LLMServiceException('API key cannot be empty');
    }
    _apiKey = apiKey.trim(); // Remove any whitespace
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_apiKeyPrefsKey, _apiKey!);
    // ignore: avoid_print
    print('API key saved (length: ${_apiKey!.length}, prefix: ${_apiKey!.substring(0, _apiKey!.length > 10 ? 10 : _apiKey!.length)}...)');
  }

  /// Get stored API key
  Future<String?> getApiKey() async {
    if (_apiKey != null) return _apiKey;
    await initialize();
    return _apiKey;
  }

  @override
  Future<String> getCharacterAdvice(
    String characterSummary,
    String userQuestion,
  ) async {
    if (!await isServiceAvailable()) {
      throw LLMServiceException(
        'LLM service is not available. Please check your API key.',
      );
    }

    final prompt = _buildCharacterAdvicePrompt(characterSummary, userQuestion);

    try {
      final response = await _makeRequest(prompt);
      return response;
    } catch (e) {
      throw LLMServiceException('Failed to get character advice: $e');
    }
  }

  @override
  Future<String> getGeneralAdvice(String question) async {
    if (!await isServiceAvailable()) {
      throw LLMServiceException(
        'LLM service is not available. Please check your API key.',
      );
    }

    final prompt = _buildGeneralAdvicePrompt(question);

    try {
      final response = await _makeRequest(prompt);
      return response;
    } catch (e) {
      throw LLMServiceException('Failed to get general advice: $e');
    }
  }

  @override
  Future<bool> isServiceAvailable() async {
    await initialize();
    return _apiKey != null && _apiKey!.isNotEmpty;
  }

  Future<String> _makeRequest(String prompt) async {
    await initialize();

    if (_apiKey == null || _apiKey!.isEmpty) {
      throw LLMServiceException('API key is not set');
    }

    // Debug: Log API key prefix to verify it's being used (first 7 chars for sk- prefix)
    // ignore: avoid_print
    print('Making request with API key prefix: ${_apiKey!.substring(0, _apiKey!.length > 7 ? 7 : _apiKey!.length)}...');

    final url = Uri.parse('$_baseUrl/chat/completions');

    final requestBody = {
      'model': _model,
      'messages': [
        {
          'role': 'system',
          'content': _getSystemPrompt(),
        },
        {
          'role': 'user',
          'content': prompt,
        },
      ],
      'temperature': 0.7,
      'max_tokens': AppConfig.maxTokens,
    };

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode(requestBody),
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          throw LLMServiceException('Request timeout');
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        final choices = jsonResponse['choices'] as List;
        if (choices.isNotEmpty) {
          final message = choices[0]['message'] as Map<String, dynamic>;
          return message['content'] as String;
        }
        throw LLMServiceException('No response from LLM');
      } else if (response.statusCode == 401) {
        // Get more details about the error
        try {
          final errorBody = jsonDecode(response.body) as Map<String, dynamic>;
          final errorMessage = errorBody['error']?['message'] as String? ?? 'Invalid API key';
          throw LLMServiceException('Invalid API key: $errorMessage');
        } catch (_) {
          throw LLMServiceException('Invalid API key - Check that your API key is correct and has not expired');
        }
      } else if (response.statusCode == 429) {
        throw LLMServiceException('Rate limit exceeded. Please try again later.');
      } else {
        // Log the full response for debugging
        // ignore: avoid_print
        print('API Error Response (${response.statusCode}): ${response.body}');
        try {
          final errorBody = jsonDecode(response.body) as Map<String, dynamic>;
          final errorMessage = errorBody['error']?['message'] as String? ??
              'Unknown error occurred';
          throw LLMServiceException('API error (${response.statusCode}): $errorMessage');
        } catch (e) {
          throw LLMServiceException('API error (${response.statusCode}): ${response.body}');
        }
      }
    } on LLMServiceException {
      rethrow;
    } catch (e) {
      throw LLMServiceException('Network error: $e');
    }
  }

  String _buildCharacterAdvicePrompt(String characterSummary, String userQuestion) {
    return '''You are an expert Genshin Impact advisor. Based on the following character summary, provide detailed advice to help the player optimize their build.

Character Summary:
$characterSummary

Player Question: $userQuestion

Please provide specific, actionable advice about:
- Artifact optimization
- Weapon recommendations
- Talent priorities
- Team composition suggestions
- Investment priorities

Keep your response concise but comprehensive (under 500 words).''';
  }

  String _buildGeneralAdvicePrompt(String question) {
    return '''You are an expert Genshin Impact advisor. Answer the following question with helpful, accurate information about the game.

Question: $question

Please provide a clear, concise answer (under 300 words).''';
  }

  String _getSystemPrompt() {
    return '''You are an expert Genshin Impact advisor with deep knowledge of:
- Character builds and optimization
- Artifact sets and main/substat priorities
- Weapon synergies
- Team compositions
- Meta strategies and investment priorities

Provide accurate, helpful advice based on current game mechanics and meta knowledge.''';
  }
}

/// Exception class for LLM service errors
class LLMServiceException implements Exception {
  final String message;

  LLMServiceException(this.message);

  @override
  String toString() => 'LLMServiceException: $message';
}

