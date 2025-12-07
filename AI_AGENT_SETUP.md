# AI Agent Setup Guide - How to Verify Services

## Quick Answer: Use Unit Tests

**The simplest and most reliable way for an AI agent to verify services is through unit tests.**

```bash
flutter test test/services/
```

## Detailed Answer: Testing Approaches

### 1. **Unit Tests (RECOMMENDED - Already Implemented)**

**What it is:** Automated tests that verify code behavior without running the full app.

**Setup:** Already done! Tests are in `test/services/`

**How AI Agent uses it:**
```bash
# Run all service tests
flutter test test/services/

# Check exit code (0 = all passed)
echo $?

# Get JSON output
flutter test test/services/ --reporter json > results.json
```

**What gets verified:**
- ✅ JSON Import Service: All format detection, validation, parsing
- ✅ Service Registration: Both services properly registered in DI
- ✅ Error Handling: Services throw correct exceptions
- ⚠️ LLM Service: Error handling (SharedPreferences tests need integration)

**Advantages:**
- ✅ Fast (runs in seconds)
- ✅ No external dependencies
- ✅ Deterministic
- ✅ Can run in CI/CD
- ✅ No cost

**Disadvantages:**
- ⚠️ Some LLM service behaviors need SharedPreferences (platform channels)

---

### 2. **Appium (For UI Testing - Optional)**

**What it is:** Tool to automate app interactions on Android/iOS devices/emulators.

**When to use:** Only if you need to test actual UI interactions (not needed for service verification).

**Setup:**
```bash
# Install Appium
npm install -g appium
npm install -g appium-flutter-driver

# Start emulator
emulator -avd <emulator_name>

# Start Appium server
appium
```

**How AI Agent uses it:**
- Connect to emulator
- Launch app
- Interact with UI (tap buttons, enter text)
- Verify UI responses
- Check console logs

**Advantages:**
- ✅ Tests real user interactions
- ✅ Can verify UI behavior

**Disadvantages:**
- ❌ Slow (minutes per test)
- ❌ Requires emulator/device
- ❌ More complex setup
- ❌ Can be flaky

**For your use case:** **NOT NEEDED** - Unit tests cover service behavior.

---

### 3. **MCP (Model Context Protocol) - For AI Agents**

**What it is:** Protocol that allows AI agents to interact with codebases, run commands, and read files.

**How it works:**
- AI agent connects to MCP server
- Can read files, run commands, execute tests
- Can understand code structure
- Can verify implementations match requirements

**Setup:**
```json
// MCP server configuration
{
  "mcpServers": {
    "flutter": {
      "command": "flutter",
      "args": ["test", "--reporter", "json"]
    }
  }
}
```

**How AI Agent uses it:**
1. **Read test files** to understand expected behavior
2. **Run tests** using MCP commands
3. **Parse results** to verify all checks pass
4. **Compare** test coverage with requirements

**Example MCP workflow:**
```python
# AI Agent pseudocode
1. Read AI_AGENT_TESTING_GUIDE.md
2. Run: mcp flutter test test/services/
3. Parse output: Check exit code and test results
4. Verify: All expected behaviors have passing tests
5. Report: "✓ All 21 tests passed, services verified"
```

**Advantages:**
- ✅ AI agents can interact directly
- ✅ Can read and understand code
- ✅ Can run tests and interpret results
- ✅ Can verify documentation matches code

**For your use case:** **USEFUL** - AI agents can automate verification.

---

## Recommended Setup for AI Agents

### **Primary Method: Unit Tests via MCP or Direct Commands**

1. **Read the test files** to understand what's being tested
2. **Run the tests:**
   ```bash
   flutter test test/services/
   ```
3. **Parse the output:**
   - Exit code 0 = all passed
   - Count test results
   - Verify all expected behaviors are covered
4. **Report results**

### **What the Tests Verify:**

#### JSON Import Service (21 tests):
- ✅ Format detection (GOOD, GenshinOptimizer)
- ✅ Format validation
- ✅ Data normalization
- ✅ Character parsing
- ✅ Error handling
- ✅ Repository implementation

#### Service Integration (3 tests):
- ✅ LLM Service registered correctly
- ✅ JSON Import Repository registered correctly
- ✅ Both services accessible

#### LLM Service (3 tests):
- ✅ Error handling (empty key, unavailable service)
- ⚠️ SharedPreferences-dependent tests need integration tests

---

## How AI Agents Should Verify

### **Step 1: Run Tests**
```bash
flutter test test/services/ --reporter json > test_results.json
```

### **Step 2: Parse Results**
```json
{
  "success": true,
  "tests": [
    {"name": "Should detect GOOD format", "result": "passed"},
    ...
  ]
}
```

### **Step 3: Verify Coverage**
Check that all expected behaviors from `VERIFICATION_GUIDE.md` section 5 have corresponding tests.

### **Step 4: Report**
- ✅ All tests pass
- ✅ All expected behaviors covered
- ⚠️ Note any behaviors requiring integration tests

---

## Summary

**For AI Agents:**
1. ✅ **Use unit tests** - Fast, reliable, comprehensive
2. ✅ **Use MCP** - For AI agents to interact with tests
3. ⚠️ **Appium** - Only if UI testing is specifically needed

**Current Status:**
- ✅ 21+ tests covering JSON Import Service
- ✅ 3 tests covering service integration
- ✅ 3 tests covering LLM Service error handling
- ⚠️ Some LLM behaviors need integration tests (SharedPreferences)

**Command to verify everything:**
```bash
flutter test test/services/
```

**Expected output:**
```
All tests passed!
```

---

*The unit tests are the primary verification method. They're fast, reliable, and cover all the expected behaviors that can be tested without platform dependencies.*

