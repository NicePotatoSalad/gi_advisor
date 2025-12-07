abstract class LLMService {
  Future<String> getCharacterAdvice(String characterSummary, String userQuestion);
  Future<String> getGeneralAdvice(String question);
  Future<bool> isServiceAvailable();
}

class LLMRequest {
  const LLMRequest({
    required this.characterSummary,
    required this.userQuestion,
    this.temperature = 0.7,
    this.maxTokens = 1500,
  });

  final String characterSummary;
  final String userQuestion;
  final double temperature;
  final int maxTokens;
}

class LLMResponse {
  const LLMResponse({
    required this.advice,
    required this.tokensUsed,
    required this.model,
    this.confidence,
  });

  final String advice;
  final int tokensUsed;
  final String model;
  final double? confidence;
}
