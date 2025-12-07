import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_advisor/core/di/providers.dart';
import 'package:genshin_advisor/services/llm/openai_llm_service.dart';
import 'package:genshin_advisor/data/repositories/json_import_repository_impl.dart';

/// Integration tests to verify services are properly registered in DI
void main() {
  group('Service Integration Tests', () {
    test('LLM Service should be properly registered', () {
      final container = ProviderContainer();
      
      final llmService = container.read(llmServiceProvider);
      expect(llmService, isA<OpenAILLMService>());
      expect(llmService.runtimeType, OpenAILLMService);
      
      container.dispose();
    });

    test('JSON Import Repository should be properly registered', () {
      final container = ProviderContainer();
      
      final importRepo = container.read(jsonImportRepositoryProvider);
      expect(importRepo, isA<JsonImportRepositoryImpl>());
      expect(importRepo.runtimeType, JsonImportRepositoryImpl);
      
      container.dispose();
    });

    test('Services should be accessible through providers', () {
      final container = ProviderContainer();
      
      // Verify both services can be accessed
      final llmService = container.read(llmServiceProvider);
      final importRepo = container.read(jsonImportRepositoryProvider);
      
      expect(llmService, isNotNull);
      expect(importRepo, isNotNull);
      expect(llmService, isA<OpenAILLMService>());
      expect(importRepo, isA<JsonImportRepositoryImpl>());
      
      container.dispose();
    });
  });
}

