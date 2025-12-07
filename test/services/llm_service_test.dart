import 'package:flutter_test/flutter_test.dart';
import 'package:genshin_advisor/services/llm/openai_llm_service.dart';

void main() {
  group('LLM Service Tests', () {
    late OpenAILLMService llmService;

    setUp(() {
      llmService = OpenAILLMService();
    });

    // Note: These unit tests verify error handling and service structure
    // Tests requiring SharedPreferences would need integration tests or mocks
    // The service correctly throws exceptions when not available, which is verified here

    test('setApiKey() should throw exception for empty key', () async {
      expect(
        () => llmService.setApiKey(''),
        throwsA(isA<LLMServiceException>()),
      );
    });

    test('getGeneralAdvice() should throw when service is not available', () async {
      // This test verifies that the service correctly throws an exception
      // when API key is not set (which will be the case in unit tests)
      expect(
        () => llmService.getGeneralAdvice('test question'),
        throwsA(isA<LLMServiceException>()),
      );
    });

    test('getCharacterAdvice() should throw when service is not available', () async {
      expect(
        () => llmService.getCharacterAdvice('summary', 'question'),
        throwsA(isA<LLMServiceException>()),
      );
    });

    // Note: Tests requiring SharedPreferences would need integration tests or mocks
    // Note: Actual API calls require a valid API key and will cost money
    // These tests are commented out but can be enabled for manual testing
    /*
    group('LLM Service API Integration Tests', () {
      test('Should get general advice with valid API key', () async {
        await llmService.setApiKey('your-real-api-key-here');
        final advice = await llmService.getGeneralAdvice('What is Genshin Impact?');
        expect(advice, isNotEmpty);
        expect(advice.length, greaterThan(0));
      });

      test('Should get character advice with valid API key', () async {
        await llmService.setApiKey('your-real-api-key-here');
        const summary = 'Diluc: Pyro DPS, Level 90, Crimson Witch set';
        const question = 'What artifacts should I use?';
        final advice = await llmService.getCharacterAdvice(summary, question);
        expect(advice, isNotEmpty);
        expect(advice.length, greaterThan(0));
      });

      test('Should throw LLMServiceException on invalid API key', () async {
        await llmService.setApiKey('invalid-key');
        expect(
          () => llmService.getGeneralAdvice('test'),
          throwsA(isA<LLMServiceException>()),
        );
      });
    });
    */
  });
}
