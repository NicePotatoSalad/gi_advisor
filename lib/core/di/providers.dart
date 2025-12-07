import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:genshin_advisor/core/config/router_config.dart';
import 'package:genshin_advisor/core/theme/app_theme.dart';
import 'package:genshin_advisor/core/services/preferences_service.dart';
import 'package:genshin_advisor/presentation/providers/character_list_provider.dart';
import 'package:genshin_advisor/presentation/controllers/import_controller.dart';
import 'package:genshin_advisor/domain/repositories/character_repository.dart';
import 'package:genshin_advisor/data/repositories/character_repository_impl.dart';
import 'package:genshin_advisor/domain/repositories/json_import_repository.dart';
import 'package:genshin_advisor/data/repositories/json_import_repository_impl.dart';
import 'package:genshin_advisor/services/llm_service.dart';
import 'package:genshin_advisor/services/llm/openai_llm_service.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';

// Router
final routerProvider = Provider<GoRouter>((ref) => router);

// Theme
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) => ThemeNotifier(),
);

// Repositories
final characterRepositoryProvider = Provider<CharacterRepository>(
  (ref) => CharacterRepositoryImpl(),
);

final jsonImportRepositoryProvider = Provider<JsonImportRepository>(
  (ref) => JsonImportRepositoryImpl(),
);

// Services
final llmServiceProvider = Provider<LLMService>(
  (ref) => OpenAILLMService(),
);

// Character List
final characterListProvider = StateNotifierProvider<CharacterListNotifier, AsyncValue<List<CharacterSummary>>>(
  (ref) => CharacterListNotifier(ref.watch(characterRepositoryProvider)),
);

// Import Controller
final importControllerProvider = StateNotifierProvider<ImportController, AsyncValue<ImportResult>>(
  (ref) => ImportController(
    importRepository: ref.watch(jsonImportRepositoryProvider),
    characterRepository: ref.watch(characterRepositoryProvider),
  ),
);

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(AppTheme.lightTheme) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDark = await PreferencesService.isDarkMode();
    state = isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
  }

  Future<void> toggleTheme() async {
    final isDark = state.brightness == Brightness.dark;
    final newIsDark = !isDark;
    
    state = newIsDark ? AppTheme.darkTheme : AppTheme.lightTheme;
    await PreferencesService.setDarkMode(newIsDark);
  }
}
