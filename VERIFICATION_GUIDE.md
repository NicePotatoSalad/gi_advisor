# Verification Guide - LLM Service & JSON Import Service

This guide explains how to verify that the newly implemented LLM service and JSON import service are working correctly.

## Version: 0.2.0

---

## 1. Verify Version Update

### Check Version in App
1. Run the app: `flutter run`
2. Navigate to Settings page
3. Tap on "About" - should show "Version 0.2.0"
4. The About dialog should also display "0.2.0"

### Check Version in Code
```bash
# Verify pubspec.yaml
grep "version:" pubspec.yaml
# Should output: version: 0.2.0+1

# Verify app_config.dart
grep "appVersion" lib/core/config/app_config.dart
# Should output: static const String appVersion = '0.2.0';
```

---

## 2. Verify LLM Service

### Prerequisites
- OpenAI API key (get one from https://platform.openai.com/api-keys)

### Method 1: Using Flutter DevTools / Debug Console

1. **Run the app in debug mode:**
   ```bash
   flutter run
   ```

2. **Add a test button/widget** (temporary) in your app to test the service:
   
   Add this to any page (e.g., `settings_page.dart`):
   ```dart
   ListTile(
     title: const Text('Test LLM Service'),
     leading: const Icon(Icons.chat),
     onTap: () async {
       final llmService = ref.read(llmServiceProvider);
       
       // Set API key (first time only)
       await (llmService as OpenAILLMService).setApiKey('your-api-key-here');
       
       // Test service availability
       final isAvailable = await llmService.isServiceAvailable();
       print('LLM Service Available: $isAvailable');
       
       // Test general advice
       try {
         final advice = await llmService.getGeneralAdvice(
           'What is the best artifact set for a DPS character?'
         );
         print('LLM Response: $advice');
         ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text('Success! Check console for response')),
         );
       } catch (e) {
         print('LLM Error: $e');
         ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text('Error: $e')),
         );
       }
     },
   ),
   ```

3. **Check the console output** for:
   - "LLM Service Available: true" (if API key is set)
   - "LLM Response: [advice text]" (if request succeeds)
   - Error messages if something fails

### Method 2: Unit Test (Recommended)

Create a test file: `test/services/llm_service_test.dart`

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:genshin_advisor/services/llm/openai_llm_service.dart';

void main() {
  group('LLM Service Tests', () {
    late OpenAILLMService llmService;

    setUp(() {
      llmService = OpenAILLMService();
    });

    test('Service should not be available without API key', () async {
      final isAvailable = await llmService.isServiceAvailable();
      expect(isAvailable, false);
    });

    test('Service should be available after setting API key', () async {
      await llmService.setApiKey('test-key');
      final isAvailable = await llmService.isServiceAvailable();
      expect(isAvailable, true);
    });

    // Note: Actual API calls require a valid API key and will cost money
    // Uncomment only for manual testing with real API key
    /*
    test('Should get general advice with valid API key', () async {
      await llmService.setApiKey('your-real-api-key');
      final advice = await llmService.getGeneralAdvice('What is Genshin Impact?');
      expect(advice, isNotEmpty);
      expect(advice.length, greaterThan(0));
    });
    */
  });
}
```

Run the test:
```bash
flutter test test/services/llm_service_test.dart
```

### Method 3: Direct Code Verification

Check that the service is properly registered:

```dart
// In any widget with access to WidgetRef ref:
final llmService = ref.read(llmServiceProvider);
print('LLM Service Type: ${llmService.runtimeType}');
// Should output: LLM Service Type: OpenAILLMService
```

---

## 3. Verify JSON Import Service

### Prerequisites
- A sample GOOD format JSON file or GenshinOptimizer format JSON file

### Method 1: Using Flutter DevTools / Debug Console

1. **Create a test JSON file** (GOOD format example):
   
   Create `test_data_good.json`:
   ```json
   {
     "format": "GOOD",
     "version": 1,
     "source": "test",
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
           "key": "wolfs_gravestone",
           "name": "Wolf's Gravestone",
           "type": "claymore",
           "rarity": 5,
           "level": 90,
           "ascension": 6,
           "refinement": 1,
           "stats": {
             "baseAtk": 608
           }
         },
         "artifacts": [
           {
             "setKey": "crimson_witch_of_flames",
             "slotKey": "flower",
             "level": 20,
             "rarity": 5,
             "mainStatKey": "hp",
             "mainStatValue": 4780,
             "substats": [
               {"key": "atk_", "value": 5.8},
               {"key": "critRate_", "value": 3.9},
               {"key": "critDMG_", "value": 7.8}
             ]
           }
         ],
         "talents": {
           "auto": 10,
           "skill": 10,
           "burst": 10
         },
         "stats": {
           "hp": 20000,
           "atk": 2500,
           "def": 800,
           "critRate_": 0.65,
           "critDMG_": 1.50,
           "energyRecharge_": 1.20,
           "elementalMastery": 100
         }
       }
     ]
   }
   ```

2. **Add a test button** in your app:
   
   ```dart
   ListTile(
     title: const Text('Test JSON Import'),
     leading: const Icon(Icons.upload_file),
     onTap: () async {
       final importRepo = ref.read(jsonImportRepositoryProvider);
       
       // Pick a file
       final result = await FilePicker.platform.pickFiles(
         type: FileType.custom,
         allowedExtensions: ['json'],
       );
       
       if (result != null && result.files.single.path != null) {
         final file = File(result.files.single.path!);
         
         try {
           // Validate format
           final content = await file.readAsString();
           final isValid = await importRepo.validateJsonFormat(content);
           print('JSON Valid: $isValid');
           
           // Detect format
           final format = await importRepo.detectJsonFormat(content);
           print('Detected Format: $format');
           
           // Parse characters
           final characters = await importRepo.parseJsonFile(file);
           print('Parsed ${characters.length} characters');
           
           for (final char in characters) {
             print('Character: ${char.name} (${char.key})');
             print('  Level: ${char.level}');
             print('  Element: ${char.element}');
             print('  Artifacts: ${char.artifacts.length}');
           }
           
           ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text('Success! Parsed ${characters.length} characters')),
           );
         } catch (e) {
           print('Import Error: $e');
           ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text('Error: $e')),
           );
         }
       }
     },
   ),
   ```

3. **Check the console output** for:
   - "JSON Valid: true"
   - "Detected Format: GOOD" (or "GenshinOptimizer")
   - "Parsed X characters"
   - Character details

### Method 2: Unit Test

Create a test file: `test/services/json_import_service_test.dart`

```dart
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:genshin_advisor/services/json_import/json_import_service.dart';

void main() {
  group('JSON Import Service Tests', () {
    late JsonImportService importService;

    setUp(() {
      importService = JsonImportService();
    });

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

    test('Should reject invalid JSON', () async {
      const jsonContent = 'invalid json';
      
      final isValid = await importService.validateJsonFormat(jsonContent);
      expect(isValid, false);
    });

    test('Should parse empty character list', () async {
      const jsonContent = '''
      {
        "format": "GOOD",
        "characters": []
      }
      ''';
      
      final normalized = await importService.normalizeJsonData(jsonContent, 'GOOD');
      expect(normalized, isA<Map<String, dynamic>>());
      expect(normalized['characters'], isA<Map>());
    });
  });
}
```

Run the test:
```bash
flutter test test/services/json_import_service_test.dart
```

### Method 3: Direct Code Verification

Check that the repository is properly registered:

```dart
// In any widget with access to WidgetRef ref:
final importRepo = ref.read(jsonImportRepositoryProvider);
print('Import Repository Type: ${importRepo.runtimeType}');
// Should output: Import Repository Type: JsonImportRepositoryImpl
```

---

## 4. Integration Verification

### Verify Services are Registered

Add this to your `main.dart` or any initialization code:

```dart
void verifyServices(WidgetRef ref) {
  // Verify LLM Service
  final llmService = ref.read(llmServiceProvider);
  assert(llmService is OpenAILLMService, 'LLM Service not properly registered');
  print('✓ LLM Service registered: ${llmService.runtimeType}');
  
  // Verify JSON Import Repository
  final importRepo = ref.read(jsonImportRepositoryProvider);
  assert(importRepo is JsonImportRepositoryImpl, 'Import Repository not properly registered');
  print('✓ JSON Import Repository registered: ${importRepo.runtimeType}');
}
```

### Check Provider Registration

Verify in `lib/core/di/providers.dart`:
- `llmServiceProvider` should return `OpenAILLMService()`
- `jsonImportRepositoryProvider` should return `JsonImportRepositoryImpl()`

---

## 5. Expected Behavior

### LLM Service
- ✅ `isServiceAvailable()` returns `false` initially (no API key)
- ✅ `isServiceAvailable()` returns `true` after setting API key
- ✅ `setApiKey()` saves key to SharedPreferences
- ✅ `getGeneralAdvice()` returns advice string when API key is valid
- ✅ `getCharacterAdvice()` returns advice string when API key is valid
- ✅ Throws `LLMServiceException` on errors (invalid key, network issues, etc.)

### JSON Import Service
- ✅ `detectJsonFormat()` correctly identifies "GOOD" and "GenshinOptimizer" formats
- ✅ `validateJsonFormat()` returns `true` for valid JSON, `false` for invalid
- ✅ `normalizeJsonData()` converts both formats to common structure
- ✅ `parseJsonFile()` returns list of `Character` objects
- ✅ Handles missing/null fields gracefully
- ✅ Throws `JsonImportException` on errors

---

## 6. Troubleshooting

### LLM Service Issues

**Problem:** `isServiceAvailable()` returns false
- **Solution:** Call `setApiKey()` with a valid OpenAI API key

**Problem:** API calls fail with 401 error
- **Solution:** Check that your API key is valid and has credits

**Problem:** API calls timeout
- **Solution:** Check internet connection, API may be slow

### JSON Import Issues

**Problem:** Format detection fails
- **Solution:** Ensure JSON has proper structure (format field for GOOD, characters map for GenshinOptimizer)

**Problem:** Parsing fails with null errors
- **Solution:** JSON may be missing required fields - check the sample format

**Problem:** Characters list is empty
- **Solution:** Verify JSON contains character data in the expected structure

---

## 7. Quick Verification Checklist

- [ ] Version shows 0.2.0 in app settings
- [ ] LLM service provider is accessible via Riverpod
- [ ] JSON import repository provider is accessible via Riverpod
- [ ] LLM service can set and retrieve API key
- [ ] LLM service availability check works
- [ ] JSON format detection works for GOOD format
- [ ] JSON format detection works for GenshinOptimizer format
- [ ] JSON validation works
- [ ] Character parsing works (with sample data)
- [ ] Error handling works (invalid JSON, missing API key, etc.)

---

## 8. Next Steps

After verification:
1. Integrate LLM service into chat page
2. Integrate JSON import into settings page file picker
3. Add UI for API key management
4. Add progress indicators for imports
5. Add error messages to UI

---

*Last Updated: Version 0.2.0*

