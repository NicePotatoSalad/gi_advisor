import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:genshin_advisor/services/json_import/json_import_service.dart';
import 'package:genshin_advisor/data/repositories/json_import_repository_impl.dart';

void main() {
  group('JSON Import Service Tests', () {
    late JsonImportService importService;
    late JsonImportRepositoryImpl importRepo;

    setUp(() {
      importService = JsonImportService();
      importRepo = JsonImportRepositoryImpl();
    });

    group('Format Detection', () {
      test('Should detect GOOD format', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final format = await importService.detectJsonFormat(jsonContent);
        expect(format, 'GOOD');
      });

      test('Should detect GenshinOptimizer format', () async {
        const jsonContent = '''
        {
          "characters": {
            "diluc": {}
          }
        }
        ''';
        
        final format = await importService.detectJsonFormat(jsonContent);
        expect(format, 'GenshinOptimizer');
      });

      test('Should throw on unknown format', () async {
        const jsonContent = '{"invalid": "format"}';
        
        expect(
          () => importService.detectJsonFormat(jsonContent),
          throwsA(isA<JsonImportException>()),
        );
      });

      test('Should throw on invalid JSON', () async {
        const jsonContent = 'invalid json';
        
        expect(
          () => importService.detectJsonFormat(jsonContent),
          throwsA(isA<JsonImportException>()),
        );
      });
    });

    group('Format Validation', () {
      test('Should validate GOOD format', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final isValid = await importService.validateJsonFormat(jsonContent);
        expect(isValid, true);
      });

      test('Should validate GenshinOptimizer format', () async {
        const jsonContent = '''
        {
          "characters": {
            "diluc": {}
          }
        }
        ''';
        
        final isValid = await importService.validateJsonFormat(jsonContent);
        expect(isValid, true);
      });

      test('Should reject invalid JSON', () async {
        const jsonContent = 'invalid json';
        
        final isValid = await importService.validateJsonFormat(jsonContent);
        expect(isValid, false);
      });

      test('Should reject JSON without format indicators', () async {
        const jsonContent = '{"some": "data"}';
        
        final isValid = await importService.validateJsonFormat(jsonContent);
        expect(isValid, false);
      });
    });

    group('Data Normalization', () {
      test('Should normalize GOOD format', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": [
            {"key": "diluc", "name": "Diluc"}
          ]
        }
        ''';
        
        final normalized = await importService.normalizeJsonData(jsonContent, 'GOOD');
        expect(normalized, isA<Map<String, dynamic>>());
        expect(normalized['characters'], isA<Map>());
        expect(normalized['characters']['diluc'], isNotNull);
      });

      test('Should normalize GenshinOptimizer format', () async {
        const jsonContent = '''
        {
          "characters": {
            "diluc": {"name": "Diluc"}
          }
        }
        ''';
        
        final normalized = await importService.normalizeJsonData(jsonContent, 'GenshinOptimizer');
        expect(normalized, isA<Map<String, dynamic>>());
        expect(normalized['characters'], isA<Map>());
      });

      test('Should throw on unsupported format', () async {
        const jsonContent = '{"test": "data"}';
        
        expect(
          () => importService.normalizeJsonData(jsonContent, 'UnknownFormat'),
          throwsA(isA<JsonImportException>()),
        );
      });
    });

    group('Character Parsing', () {
      test('Should parse empty character list', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final normalized = await importService.normalizeJsonData(jsonContent, 'GOOD');
        expect(normalized['characters'], isA<Map>());
        
        // Test with actual file
        final tempFile = File('${Directory.systemTemp.path}/test_empty.json');
        await tempFile.writeAsString(jsonContent);
        
        try {
          final characters = await importRepo.parseJsonFile(tempFile);
          expect(characters, isEmpty);
        } finally {
          if (await tempFile.exists()) {
            await tempFile.delete();
          }
        }
      });

      test('Should parse character with minimal data', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": [
            {
              "key": "diluc",
              "name": "Diluc",
              "element": "pyro",
              "rarity": 5,
              "level": 90,
              "constellation": 0,
              "ascension": 6,
              "friendship": 10,
              "weapon": {
                "key": "sword",
                "name": "Sword",
                "type": "sword",
                "rarity": 3,
                "level": 1,
                "ascension": 0,
                "refinement": 1,
                "stats": {"baseAtk": 0}
              },
              "artifacts": [],
              "talents": {"auto": 1, "skill": 1, "burst": 1},
              "stats": {
                "hp": 0,
                "atk": 0,
                "def": 0,
                "critRate_": 0,
                "critDMG_": 0,
                "energyRecharge_": 0,
                "elementalMastery": 0
              }
            }
          ]
        }
        ''';
        
        // Create temporary file
        final tempFile = File('${Directory.systemTemp.path}/test_char.json');
        await tempFile.writeAsString(jsonContent);
        
        try {
          final characters = await importRepo.parseJsonFile(tempFile);
          expect(characters.length, 1);
          expect(characters.first.key, 'diluc');
          expect(characters.first.name, 'Diluc');
          expect(characters.first.level, 90);
        } finally {
          if (await tempFile.exists()) {
            await tempFile.delete();
          }
        }
      });

      test('Should handle missing/null fields gracefully', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": [
            {
              "key": "test",
              "name": "Test"
            }
          ]
        }
        ''';
        
        final tempFile = File('${Directory.systemTemp.path}/test_minimal.json');
        await tempFile.writeAsString(jsonContent);
        
        try {
          final characters = await importRepo.parseJsonFile(tempFile);
          // Should not throw, but may have default values
          expect(characters, isA<List>());
        } catch (e) {
          // If it throws, that's also acceptable behavior
          expect(e, isA<JsonImportException>());
        } finally {
          if (await tempFile.exists()) {
            await tempFile.delete();
          }
        }
      });

      test('Should throw JsonImportException on file not found', () async {
        final nonExistentFile = File('${Directory.systemTemp.path}/nonexistent.json');
        
        expect(
          () => importRepo.parseJsonFile(nonExistentFile),
          throwsA(isA<JsonImportException>()),
        );
      });
    });

    group('Repository Implementation', () {
      test('Should validate format through repository', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final isValid = await importRepo.validateJsonFormat(jsonContent);
        expect(isValid, true);
      });

      test('Should detect format through repository', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final format = await importRepo.detectJsonFormat(jsonContent);
        expect(format, 'GOOD');
      });

      test('Should normalize data through repository', () async {
        const jsonContent = '''
        {
          "format": "GOOD",
          "characters": []
        }
        ''';
        
        final normalized = await importRepo.normalizeJsonData(jsonContent, 'GOOD');
        expect(normalized, isA<Map<String, dynamic>>());
      });
    });
  });
}

