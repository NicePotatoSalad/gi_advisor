import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_advisor/presentation/controllers/import_controller.dart';
import 'package:genshin_advisor/domain/repositories/json_import_repository.dart';
import 'package:genshin_advisor/domain/repositories/character_repository.dart';
import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/weapon.dart';
import 'package:genshin_advisor/domain/entities/talent.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';
import 'package:genshin_advisor/services/json_import/json_import_service.dart';

// Mock implementations
class MockJsonImportRepository implements JsonImportRepository {
  final List<Character>? mockCharacters;
  final bool shouldThrow;
  final String? errorMessage;

  MockJsonImportRepository({
    this.mockCharacters,
    this.shouldThrow = false,
    this.errorMessage,
  });

  @override
  Future<List<Character>> parseJsonFile(File file) async {
    if (shouldThrow) {
      throw JsonImportException(errorMessage ?? 'Mock error');
    }
    return mockCharacters ?? [];
  }

  @override
  Future<bool> validateJsonFormat(String jsonContent) async {
    return !shouldThrow;
  }

  @override
  Future<String> detectJsonFormat(String jsonContent) async {
    if (shouldThrow) {
      throw JsonImportException(errorMessage ?? 'Mock error');
    }
    return 'GOOD';
  }

  @override
  Future<Map<String, dynamic>> normalizeJsonData(
    String jsonContent,
    String format,
  ) async {
    if (shouldThrow) {
      throw JsonImportException(errorMessage ?? 'Mock error');
    }
    return {'characters': {}};
  }
}

class MockCharacterRepository implements CharacterRepository {
  final List<Character> savedCharacters = [];

  @override
  Future<List<Character>> getAllCharacters() async {
    return savedCharacters;
  }

  @override
  Future<Character?> getCharacterByKey(String key) async {
    try {
      return savedCharacters.firstWhere((c) => c.key == key);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> saveCharacter(Character character) async {
    savedCharacters.add(character);
  }

  @override
  Future<void> saveCharacters(List<Character> characters) async {
    savedCharacters.addAll(characters);
  }

  @override
  Future<void> updateCharacterSummary(
    String characterKey,
    dynamic summary,
  ) async {
    // Mock implementation
  }

  @override
  Future<CharacterSummary?> getCharacterSummary(String characterKey) async {
    return null;
  }

  @override
  Future<List<CharacterSummary>> getAllCharacterSummaries() async {
    return [];
  }

  @override
  Future<void> deleteCharacter(String key) async {
    savedCharacters.removeWhere((c) => c.key == key);
  }

  @override
  Future<void> deleteAllCharacters() async {
    savedCharacters.clear();
  }
}

void main() {
  group('ImportController Tests', () {
    late MockJsonImportRepository mockImportRepo;
    late MockCharacterRepository mockCharacterRepo;
    late ImportController controller;

    setUp(() {
      mockImportRepo = MockJsonImportRepository();
      mockCharacterRepo = MockCharacterRepository();
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );
    });

    test('Initial state should be idle', () {
      final state = controller.state;
      expect(state.hasValue, true);
      state.when(
        data: (result) {
          expect(result.status, ImportStatus.idle);
          expect(result.isIdle, true);
        },
        loading: () => fail('Should not be loading'),
        error: (_, __) => fail('Should not have error'),
      );
    });

    test('Should successfully import valid file', () async {
      // Create a mock character
      final mockCharacter = Character(
        key: 'test',
        name: 'Test Character',
        element: CharacterElement.pyro,
        rarity: CharacterRarity.five,
        level: 90,
        constellation: 0,
        weapon: const Weapon(
          key: 'sword',
          name: 'Sword',
          type: WeaponType.sword,
          rarity: WeaponRarity.three,
          level: 1,
          ascension: 0,
          refinement: 1,
          stats: WeaponStats(baseAtk: 0),
        ),
        artifacts: const [],
        talents: const Talents(auto: 1, skill: 1, burst: 1),
        stats: const CharacterStats(
          hp: 0,
          atk: 0,
          def: 0,
          critRate: 0,
          critDmg: 0,
          energyRecharge: 0,
          elementalMastery: 0,
        ),
        friendship: 0,
        ascension: 0,
      );

      // Setup mock to return characters
      mockImportRepo = MockJsonImportRepository(
        mockCharacters: [mockCharacter],
      );
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );

      // Create a temporary file
      final tempFile = File('${Directory.systemTemp.path}/test_valid.json');
      await tempFile.writeAsString('{"format": "GOOD", "characters": []}');

      try {
        // Import the file
        await controller.importFromFile(tempFile);

        // Check state
        final state = controller.state;
        expect(state.hasValue, true);
        state.when(
          data: (result) {
            expect(result.status, ImportStatus.success);
            expect(result.isSuccess, true);
            expect(result.charactersImported, 1);
            expect(result.message, contains('Successfully imported'));
          },
          loading: () => fail('Should not be loading'),
          error: (_, __) => fail('Should not have error'),
        );

        // Verify characters were saved
        expect(mockCharacterRepo.savedCharacters.length, 1);
        expect(mockCharacterRepo.savedCharacters.first.key, 'test');
      } finally {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      }
    });

    test('Should handle empty file', () async {
      // Setup mock to return empty list
      mockImportRepo = MockJsonImportRepository(mockCharacters: []);
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );

      final tempFile = File('${Directory.systemTemp.path}/test_empty.json');
      await tempFile.writeAsString('{"format": "GOOD", "characters": []}');

      try {
        await controller.importFromFile(tempFile);

        final state = controller.state;
        expect(state.hasValue, true);
        state.when(
          data: (result) {
            expect(result.status, ImportStatus.error);
            expect(result.isError, true);
            expect(result.message, contains('No characters found'));
          },
          loading: () => fail('Should not be loading'),
          error: (_, __) => fail('Should not have error'),
        );
      } finally {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      }
    });

    test('Should handle JsonImportException', () async {
      // Setup mock to throw exception
      mockImportRepo = MockJsonImportRepository(
        shouldThrow: true,
        errorMessage: 'Invalid JSON format',
      );
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );

      final tempFile = File('${Directory.systemTemp.path}/test_invalid.json');
      await tempFile.writeAsString('invalid json');

      try {
        await controller.importFromFile(tempFile);

        final state = controller.state;
        expect(state.hasValue, true);
        state.when(
          data: (result) {
            expect(result.status, ImportStatus.error);
            expect(result.isError, true);
            expect(result.message, contains('Invalid JSON format'));
          },
          loading: () => fail('Should not be loading'),
          error: (_, __) => fail('Should not have error'),
        );
      } finally {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      }
    });

    test('Should handle generic exceptions', () async {
      // Setup mock to throw generic exception
      mockImportRepo = MockJsonImportRepository(shouldThrow: true);
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );

      final tempFile = File('${Directory.systemTemp.path}/test_error.json');
      await tempFile.writeAsString('{"test": "data"}');

      try {
        await controller.importFromFile(tempFile);

        final state = controller.state;
        // Should handle error gracefully - check that state is not loading
        state.when(
          data: (result) {
            // If it has data, it should be an error result
            expect(result.isError, true);
          },
          loading: () => fail('Should not be loading after import'),
          error: (error, stack) {
            // Error state is also acceptable
            expect(error, isNotNull);
          },
        );
      } finally {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      }
    });

    test('Should reset state to idle', () {
      // First set to a non-idle state
      controller.state = AsyncValue.data(
        ImportResult.success(charactersImported: 1),
      );

      // Reset
      controller.reset();

      // Check state is idle
      final state = controller.state;
      expect(state.hasValue, true);
      state.when(
        data: (result) {
          expect(result.status, ImportStatus.idle);
          expect(result.isIdle, true);
        },
        loading: () => fail('Should not be loading'),
        error: (_, __) => fail('Should not have error'),
      );
    });

    test('ImportResult should have correct status flags', () {
      final idle = ImportResult.idle();
      expect(idle.isIdle, true);
      expect(idle.isLoading, false);
      expect(idle.isSuccess, false);
      expect(idle.isError, false);

      final success = ImportResult.success(charactersImported: 5);
      expect(success.isIdle, false);
      expect(success.isLoading, false);
      expect(success.isSuccess, true);
      expect(success.isError, false);
      expect(success.charactersImported, 5);

      final error = ImportResult.error('Test error');
      expect(error.isIdle, false);
      expect(error.isLoading, false);
      expect(error.isSuccess, false);
      expect(error.isError, true);
      expect(error.message, 'Test error');
    });

    test('Should import multiple characters', () async {
      final characters = [
        Character(
          key: 'char1',
          name: 'Character 1',
          element: CharacterElement.pyro,
          rarity: CharacterRarity.five,
          level: 90,
          constellation: 0,
          weapon: const Weapon(
            key: 'sword',
            name: 'Sword',
            type: WeaponType.sword,
            rarity: WeaponRarity.three,
            level: 1,
            ascension: 0,
            refinement: 1,
            stats: WeaponStats(baseAtk: 0),
          ),
          artifacts: const [],
          talents: const Talents(auto: 1, skill: 1, burst: 1),
          stats: const CharacterStats(
            hp: 0,
            atk: 0,
            def: 0,
            critRate: 0,
            critDmg: 0,
            energyRecharge: 0,
            elementalMastery: 0,
          ),
          friendship: 0,
          ascension: 0,
        ),
        Character(
          key: 'char2',
          name: 'Character 2',
          element: CharacterElement.hydro,
          rarity: CharacterRarity.four,
          level: 80,
          constellation: 0,
          weapon: const Weapon(
            key: 'sword',
            name: 'Sword',
            type: WeaponType.sword,
            rarity: WeaponRarity.three,
            level: 1,
            ascension: 0,
            refinement: 1,
            stats: WeaponStats(baseAtk: 0),
          ),
          artifacts: const [],
          talents: const Talents(auto: 1, skill: 1, burst: 1),
          stats: const CharacterStats(
            hp: 0,
            atk: 0,
            def: 0,
            critRate: 0,
            critDmg: 0,
            energyRecharge: 0,
            elementalMastery: 0,
          ),
          friendship: 0,
          ascension: 0,
        ),
      ];

      mockImportRepo = MockJsonImportRepository(mockCharacters: characters);
      controller = ImportController(
        importRepository: mockImportRepo,
        characterRepository: mockCharacterRepo,
      );

      final tempFile = File('${Directory.systemTemp.path}/test_multi.json');
      await tempFile.writeAsString('{"format": "GOOD", "characters": []}');

      try {
        await controller.importFromFile(tempFile);

        final state = controller.state;
        expect(state.hasValue, true);
        state.when(
          data: (result) {
            expect(result.status, ImportStatus.success);
            expect(result.charactersImported, 2);
          },
          loading: () => fail('Should not be loading'),
          error: (_, __) => fail('Should not have error'),
        );

        expect(mockCharacterRepo.savedCharacters.length, 2);
      } finally {
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      }
    });
  });
}

