class AppConfig {
  static const String appName = 'Genshin Advisor';
  static const String appVersion = '0.3.0';
  static const int appVersionCode = 3;

  // Database
  static const String databaseName = 'genshin_advisor.db';
  static const int databaseVersion = 1;

  // API Configuration
  static const String llmApiBaseUrl = 'https://api.openai.com/v1';
  static const String llmModel = 'gpt-4o-mini';
  static const int maxTokens = 1500;

  // File handling
  static const List<String> supportedJsonFormats = ['GOOD', 'GenshinOptimizer'];

  // Scoring thresholds
  static const double excellentThreshold = 0.85;
  static const double goodThreshold = 0.70;
  static const double averageThreshold = 0.50;

  // Investment priority weights
  static const double roleWeight = 0.3;
  static const double progressWeight = 0.25;
  static const double buildWeight = 0.25;
  static const double artifactWeight = 0.2;
}

