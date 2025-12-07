import 'package:genshin_advisor/domain/entities/scoring.dart';

/// Utility functions for character analysis and scoring
class AnalysisUtils {
  /// Formats a score as a percentage string
  static String formatPercentage(double score) {
    return '${(score * 100).round()}%';
  }

  /// Gets the display name for a character role
  static String getRoleDisplayName(CharacterRole role) {
    switch (role) {
      case CharacterRole.mainDps:
        return 'Main DPS';
      case CharacterRole.subDps:
        return 'Sub DPS';
      case CharacterRole.support:
        return 'Support';
      case CharacterRole.healer:
        return 'Healer';
      case CharacterRole.buffer:
        return 'Buffer';
      case CharacterRole.driver:
        return 'Driver';
      case CharacterRole.battery:
        return 'Battery';
    }
  }

  /// Gets the color for a roll tier
  static String getRollTierColor(RollTier tier) {
    switch (tier) {
      case RollTier.s:
        return '#4CAF50'; // Green
      case RollTier.a:
        return '#8BC34A'; // Light Green
      case RollTier.b:
        return '#FFC107'; // Amber
      case RollTier.c:
        return '#FF5722'; // Orange
      case RollTier.d:
        return '#F44336'; // Red
    }
  }

  /// Gets the display name for build completeness
  static String getBuildCompletenessName(BuildCompletenessScore score) {
    switch (score) {
      case BuildCompletenessScore.excellent:
        return 'Excellent';
      case BuildCompletenessScore.good:
        return 'Good';
      case BuildCompletenessScore.average:
        return 'Average';
      case BuildCompletenessScore.poor:
        return 'Poor';
      case BuildCompletenessScore.broken:
        return 'Broken';
    }
  }

  /// Calculates overall character progress
  static double calculateOverallProgress(CharacterProgress progress) {
    final weights = {
      'talent': 0.4,
      'ascension': 0.3,
      'weapon': 0.3,
    };

    return (progress.talentProgress * weights['talent']!) +
           (progress.ascensionProgress * weights['ascension']!) +
           (progress.weaponProgress * weights['weapon']!);
  }
}
