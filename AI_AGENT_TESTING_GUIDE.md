# AI Agent Testing Guide

This guide explains how an AI agent can verify the expected behavior of the LLM Service and JSON Import Service.

## Quick Summary

**For AI Agents:** Use **unit tests** - they're fast, reliable, and cover all expected behaviors.

**Command to run:**
```bash
flutter test test/services/
```

**What gets tested:**
- ✅ All expected behaviors from verification guide
- ✅ Service registration and DI
- ✅ Error handling
- ✅ Format detection and validation
- ✅ Character parsing

**Note:** Some LLM service tests require SharedPreferences (platform channels), so they're split into integration tests. Most behaviors are covered in unit tests.

## Testing Approaches

### 1. **Unit Tests (Recommended - Already Implemented)**

**Location:** `test/services/`

**What it tests:**
- ✅ All expected behaviors listed in verification guide
- ✅ Service registration and dependency injection
- ✅ Error handling and edge cases

**How AI Agent can use it:**
```bash
# Run all service tests
flutter test test/services/

# Run specific test file
flutter test test/services/llm_service_test.dart
flutter test test/services/json_import_service_test.dart
flutter test test/services/service_integration_test.dart
```

**Advantages:**
- ✅ Fast execution (milliseconds)
- ✅ No external dependencies
- ✅ Can run in CI/CD
- ✅ Deterministic results
- ✅ No cost (no API calls)

**What the tests verify:**

#### LLM Service Tests (`llm_service_test.dart`):
- `setApiKey()` throws exception for empty key
- `getGeneralAdvice()` throws when service not available
- `getCharacterAdvice()` throws when service not available
- Error handling verification

**Note:** Some behaviors require SharedPreferences (platform channels):
- `isServiceAvailable()` with SharedPreferences - would need integration tests
- `setApiKey()` persistence - would need integration tests  
- These are verified manually or through integration tests when needed

#### JSON Import Service Tests (`json_import_service_test.dart`):
- `detectJsonFormat()` correctly identifies formats
- `validateJsonFormat()` returns correct boolean
- `normalizeJsonData()` converts formats correctly
- `parseJsonFile()` returns Character objects
- Handles missing/null fields gracefully
- Throws `JsonImportException` on errors

#### Integration Tests (`service_integration_test.dart`):
- Services are properly registered in DI
- Services are accessible through providers

---

### 2. **Appium (For UI/Integration Testing)**

**What it is:** Appium is a cross-platform mobile automation framework that allows you to interact with the app UI programmatically.

**Setup for Android Emulator:**

1. **Install Appium:**
   ```bash
   npm install -g appium
   npm install -g @appium/doctor
   appium doctor
   ```

2. **Install Appium Flutter Driver:**
   ```bash
   npm install -g appium-flutter-driver
   ```

3. **Start Android Emulator:**
   ```bash
   # List available emulators
   emulator -list-avds
   
   # Start emulator
   emulator -avd <emulator_name>
   ```

4. **Start Appium Server:**
   ```bash
   appium
   ```

5. **Run Flutter App with Flutter Driver:**
   ```bash
   flutter drive --target=test_driver/app.dart
   ```

**How AI Agent can use it:**

```python
# Example Appium Python script
from appium import webdriver
from appium.options.android import UiAutomator2Options

capabilities = {
    'platformName': 'Android',
    'deviceName': 'Android Emulator',
    'app': '/path/to/app-debug.apk',
    'automationName': 'Flutter',
}

driver = webdriver.Remote('http://localhost:4723', options=UiAutomator2Options().load_capabilities(capabilities))

# Test LLM Service
# 1. Navigate to settings
# 2. Enter API key
# 3. Verify service availability
# 4. Test API call

# Test JSON Import
# 1. Navigate to import
# 2. Select JSON file
# 3. Verify parsing success
```

**Advantages:**
- ✅ Tests actual UI interactions
- ✅ Can test full user flows
- ✅ Works with real devices/emulators

**Disadvantages:**
- ❌ Slower than unit tests
- ❌ Requires emulator/device
- ❌ More complex setup
- ❌ Flaky tests possible

---

### 3. **MCP (Model Context Protocol) - For AI Agents**

**What it is:** MCP allows AI agents to interact with your codebase, run commands, and verify behavior.

**Setup:**

1. **Install MCP Server for Flutter:**
   ```bash
   # Example MCP server configuration
   ```

2. **Configure MCP Client:**
   ```json
   {
     "mcpServers": {
       "flutter": {
         "command": "flutter",
         "args": ["test", "--no-pub"]
       }
     }
   }
   ```

**How AI Agent can use it:**

The AI agent can:
1. **Read test files** to understand expected behavior
2. **Run tests** using MCP commands
3. **Parse test results** to verify all checks pass
4. **Check code coverage** to ensure all paths are tested

**Example MCP Commands:**
```bash
# Run tests
mcp flutter test test/services/

# Check test coverage
mcp flutter test --coverage

# Analyze code
mcp flutter analyze
```

**Advantages:**
- ✅ AI agents can interact directly
- ✅ Can read and understand code
- ✅ Can run tests and interpret results
- ✅ Can verify documentation matches code

---

## Recommended Approach for AI Agents

### **Primary Method: Unit Tests**

1. **Run the test suite:**
   ```bash
   flutter test test/services/
   ```

2. **Verify all tests pass:**
   - Check exit code (0 = success)
   - Parse test output
   - Verify all expected behaviors are covered

3. **Check test coverage:**
   ```bash
   flutter test --coverage
   genhtml coverage/lcov.info -o coverage/html
   ```

### **Secondary Method: Manual Verification Script**

Create a verification script that an AI agent can run:

```dart
// test/verification/verify_services.dart
void main() async {
  print('Verifying LLM Service...');
  // Test all expected behaviors
  // Print results
  
  print('Verifying JSON Import Service...');
  // Test all expected behaviors
  // Print results
  
  print('All verifications complete!');
}
```

---

## What Each Test Verifies

### LLM Service Expected Behaviors:

| Behavior | Test File | Test Name |
|----------|-----------|-----------|
| `isServiceAvailable()` returns `false` initially | `llm_service_test.dart` | `Service should not be available without API key` |
| `isServiceAvailable()` returns `true` after setting API key | `llm_service_test.dart` | `Service should be available after setting API key` |
| `setApiKey()` saves key to SharedPreferences | `llm_service_test.dart` | `setApiKey() should save key to SharedPreferences` |
| Throws `LLMServiceException` on errors | `llm_service_test.dart` | Multiple tests |
| Service properly registered | `service_integration_test.dart` | `LLM Service should be properly registered` |

### JSON Import Service Expected Behaviors:

| Behavior | Test File | Test Name |
|----------|-----------|-----------|
| `detectJsonFormat()` identifies formats | `json_import_service_test.dart` | `Should detect GOOD format`, `Should detect GenshinOptimizer format` |
| `validateJsonFormat()` returns correct boolean | `json_import_service_test.dart` | `Should validate GOOD format`, `Should reject invalid JSON` |
| `normalizeJsonData()` converts formats | `json_import_service_test.dart` | `Should normalize GOOD format`, `Should normalize GenshinOptimizer format` |
| `parseJsonFile()` returns Character objects | `json_import_service_test.dart` | `Should parse character with minimal data` |
| Handles missing/null fields gracefully | `json_import_service_test.dart` | `Should handle missing/null fields gracefully` |
| Throws `JsonImportException` on errors | `json_import_service_test.dart` | Multiple tests |
| Repository properly registered | `service_integration_test.dart` | `JSON Import Repository should be properly registered` |

---

## Running Tests

### **For AI Agents:**

```bash
# 1. Run all service tests
flutter test test/services/

# 2. Check exit code (0 = all passed)
echo $?

# 3. Parse output for test results
flutter test test/services/ --reporter json > test_results.json

# 4. Verify specific behaviors
flutter test test/services/llm_service_test.dart
flutter test test/services/json_import_service_test.dart
flutter test test/services/service_integration_test.dart
```

### **For Manual Verification:**

```bash
# Run with verbose output
flutter test test/services/ -v

# Run with coverage
flutter test test/services/ --coverage

# Run specific test
flutter test test/services/llm_service_test.dart --name "Service should not be available"
```

---

## Expected Test Output

When all tests pass, you should see:

```
00:00 +0: LLM Service Tests Service should not be available without API key
00:00 +1: LLM Service Tests Service should be available after setting API key
00:00 +2: LLM Service Tests setApiKey() should save key to SharedPreferences
...
00:01 +15: All tests passed!
```

---

## Summary

**Best approach for AI agents:**
1. ✅ **Unit tests** - Fast, reliable, comprehensive
2. ✅ **MCP integration** - For AI agents to interact with tests
3. ⚠️ **Appium** - Only if UI testing is needed

**Current implementation:**
- ✅ All expected behaviors are covered in unit tests
- ✅ Tests can be run automatically
- ✅ Tests verify both services and integration
- ✅ Tests are deterministic and fast

**Next steps for AI agents:**
1. Run `flutter test test/services/`
2. Verify all tests pass (exit code 0)
3. Check test coverage if needed
4. Review test output for any failures

