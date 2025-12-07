import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static const String _isDarkModeKey = 'is_dark_mode';

  static Future<SharedPreferences> get _prefs async =>
      SharedPreferences.getInstance();

  // Theme preferences
  static Future<bool> isDarkMode() async {
    final prefs = await _prefs;
    return prefs.getBool(_isDarkModeKey) ?? false;
  }

  static Future<void> setDarkMode(bool isDark) async {
    final prefs = await _prefs;
    await prefs.setBool(_isDarkModeKey, isDark);
  }

  static Future<void> clearTheme() async {
    final prefs = await _prefs;
    await prefs.remove(_isDarkModeKey);
  }
}
