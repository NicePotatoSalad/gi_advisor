import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_advisor/domain/repositories/json_import_repository.dart';
import 'package:genshin_advisor/domain/repositories/character_repository.dart';
import 'package:genshin_advisor/services/json_import/json_import_service.dart';

/// Controller for managing JSON import state and operations
class ImportController extends StateNotifier<AsyncValue<ImportResult>> {
  final JsonImportRepository _importRepository;
  final CharacterRepository _characterRepository;

  ImportController({
    required JsonImportRepository importRepository,
    required CharacterRepository characterRepository,
  })  : _importRepository = importRepository,
        _characterRepository = characterRepository,
        super(AsyncValue.data(ImportResult.idle()));

  /// Import characters from a JSON file
  Future<void> importFromFile(File file) async {
    state = const AsyncValue.loading();

    try {
      // Parse the JSON file
      final characters = await _importRepository.parseJsonFile(file);

      if (characters.isEmpty) {
        state = AsyncValue.data(
          ImportResult.error('No characters found in the file'),
        );
        return;
      }

      // Save characters to repository
      await _characterRepository.saveCharacters(characters);

      state = AsyncValue.data(
        ImportResult.success(
          charactersImported: characters.length,
          message: 'Successfully imported ${characters.length} character(s)',
        ),
      );
    } on JsonImportException catch (e) {
      state = AsyncValue.data(
        ImportResult.error(e.message),
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(
        ImportResult.error('Failed to import file: $e'),
        stackTrace,
      );
    }
  }

  /// Reset import state to idle
  void reset() {
    state = AsyncValue.data(ImportResult.idle());
  }
}

/// Result of an import operation
class ImportResult {
  final ImportStatus status;
  final String? message;
  final int? charactersImported;

  const ImportResult({
    required this.status,
    this.message,
    this.charactersImported,
  });

  factory ImportResult.idle() {
    return const ImportResult(status: ImportStatus.idle);
  }

  factory ImportResult.success({
    required int charactersImported,
    String? message,
  }) {
    return ImportResult(
      status: ImportStatus.success,
      charactersImported: charactersImported,
      message: message ?? 'Import successful',
    );
  }

  factory ImportResult.error(String message) {
    return ImportResult(
      status: ImportStatus.error,
      message: message,
    );
  }

  bool get isIdle => status == ImportStatus.idle;
  bool get isLoading => status == ImportStatus.loading;
  bool get isSuccess => status == ImportStatus.success;
  bool get isError => status == ImportStatus.error;
}

enum ImportStatus {
  idle,
  loading,
  success,
  error,
}

