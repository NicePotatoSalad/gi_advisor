import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF4A90E2), // Genshin Impact blue
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      filled: true,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF4A90E2),
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      filled: true,
    ),
  );

  // Genshin Impact specific colors
  static const Color anemoColor = Color(0xFF4BC28A);
  static const Color geoColor = Color(0xFFF4A261);
  static const Color electroColor = Color(0xFF9B59B6);
  static const Color dendroColor = Color(0xFF27AE60);
  static const Color hydroColor = Color(0xFF3498DB);
  static const Color pyroColor = Color(0xFFE74C3C);
  static const Color cryoColor = Color(0xFF85C1E9);

  // Scoring colors
  static const Color excellentColor = Color(0xFF4CAF50);
  static const Color goodColor = Color(0xFF8BC34A);
  static const Color averageColor = Color(0xFFFFC107);
  static const Color poorColor = Color(0xFFFF5722);
  static const Color brokenColor = Color(0xFFF44336);

  static Color getElementColor(String element) {
    switch (element.toLowerCase()) {
      case 'anemo':
        return anemoColor;
      case 'geo':
        return geoColor;
      case 'electro':
        return electroColor;
      case 'dendro':
        return dendroColor;
      case 'hydro':
        return hydroColor;
      case 'pyro':
        return pyroColor;
      case 'cryo':
        return cryoColor;
      default:
        return Colors.grey;
    }
  }

  static Color getScoreColor(double score) {
    if (score >= 0.85) return excellentColor;
    if (score >= 0.70) return goodColor;
    if (score >= 0.50) return averageColor;
    if (score >= 0.25) return poorColor;
    return brokenColor;
  }
}
