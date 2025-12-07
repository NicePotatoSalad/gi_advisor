import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';
import 'package:genshin_advisor/core/config/app_config.dart';

class AnalysisService {
  // Calculate artifact roll efficiency
  static ArtifactScoring calculateArtifactEfficiency(List<Artifact> artifacts) {
    if (artifacts.isEmpty) {
      return const ArtifactScoring(
        efficiency: 0.0,
        tier: RollTier.d,
        subStatQuality: 0.0,
        mainStatCorrectness: false,
      );
    }

    double totalEfficiency = 0.0;
    double subStatQuality = 0.0;
    int correctMainStats = 0;

    for (final artifact in artifacts) {
      totalEfficiency += artifact.rollEfficiency;
      subStatQuality += artifact.rollEfficiency;

      // TODO: Implement main stat correctness check based on character role
      correctMainStats += 1; // Placeholder
    }

    final averageEfficiency = totalEfficiency / artifacts.length;
    final averageSubStatQuality = subStatQuality / artifacts.length;
    final mainStatCorrectness = correctMainStats == artifacts.length;

    final tier = _getRollTier(averageEfficiency);

    return ArtifactScoring(
      efficiency: averageEfficiency,
      tier: tier,
      subStatQuality: averageSubStatQuality,
      mainStatCorrectness: mainStatCorrectness,
    );
  }

  // Calculate build completeness score
  static BuildScoring calculateBuildCompleteness(
    Character character,
    List<Artifact> artifacts,
  ) {
    // Main stats correctness (0-40 points)
    final mainStatsScore = _calculateMainStatsScore(character, artifacts);

    // Artifact set bonus correctness (0-30 points)
    final setBonusScore = _calculateSetBonusScore(artifacts);

    // Substat quality (0-20 points)
    final subStatsScore = _calculateSubStatsScore(artifacts);

    // Weapon synergy (0-10 points)
    final weaponSynergyScore = _calculateWeaponSynergyScore(character);

    final totalScore = mainStatsScore + setBonusScore + subStatsScore + weaponSynergyScore;

    final completenessScore = _getBuildCompletenessScore(totalScore);

    return BuildScoring(
      completenessScore: completenessScore,
      mainStatsScore: mainStatsScore,
      setBonusScore: setBonusScore,
      subStatsScore: subStatsScore,
      weaponSynergyScore: weaponSynergyScore,
      totalScore: totalScore,
    );
  }

  // Calculate investment priority score (0-100)
  static int calculateInvestmentPriority(Character character, CharacterAnalysis analysis) {
    const roleWeight = AppConfig.roleWeight;
    const progressWeight = AppConfig.progressWeight;
    const buildWeight = AppConfig.buildWeight;
    const artifactWeight = AppConfig.artifactWeight;

    // Role usefulness score (meta relevance)
    final roleScore = _getRoleUsefulnessScore(analysis.role);

    // Current progress score
    final progressScore = _calculateProgressScore(character);

    // Build quality score
    final buildScore = analysis.buildScoring.totalScore;

    // Artifact RNG dependency score
    final artifactScore = analysis.artifactScoring.efficiency * 100;

    final weightedScore = (roleScore * roleWeight) +
                         (progressScore * progressWeight) +
                         (buildScore * buildWeight) +
                         (artifactScore * artifactWeight);

    return weightedScore.clamp(0, 100).round();
  }

  // Determine character role
  static CharacterRole determineCharacterRole(Character character) {
    // This is a simplified role determination
    // In a real implementation, this would use more sophisticated logic
    // based on character stats, weapon type, and common usage patterns

    final critRate = character.stats.critRate;
    final critDmg = character.stats.critDmg;
    final energyRecharge = character.stats.energyRecharge;

    // High crit stats typically indicate DPS roles
    if (critRate > 0.1 || critDmg > 1.0) {
      return CharacterRole.mainDps;
    }

    // High ER typically indicates support roles
    if (energyRecharge > 1.5) {
      return CharacterRole.support;
    }

    // Default to sub DPS for now
    return CharacterRole.subDps;
  }

  static RollTier _getRollTier(double efficiency) {
    if (efficiency >= 0.85) return RollTier.s;
    if (efficiency >= 0.75) return RollTier.a;
    if (efficiency >= 0.60) return RollTier.b;
    if (efficiency >= 0.40) return RollTier.c;
    return RollTier.d;
  }

  static BuildCompletenessScore _getBuildCompletenessScore(double score) {
    if (score >= 85) return BuildCompletenessScore.excellent;
    if (score >= 70) return BuildCompletenessScore.good;
    if (score >= 50) return BuildCompletenessScore.average;
    return BuildCompletenessScore.poor;
  }

  static double _calculateMainStatsScore(Character character, List<Artifact> artifacts) {
    // Placeholder implementation
    // TODO: Implement proper main stat validation based on character role
    return 25.0; // 25/40 points
  }

  static double _calculateSetBonusScore(List<Artifact> artifacts) {
    // Placeholder implementation
    // TODO: Implement proper set bonus validation
    return 20.0; // 20/30 points
  }

  static double _calculateSubStatsScore(List<Artifact> artifacts) {
    if (artifacts.isEmpty) return 0.0;

    double totalScore = 0.0;
    for (final artifact in artifacts) {
      totalScore += artifact.rollEfficiency;
    }

    return (totalScore / artifacts.length) * 20; // 0-20 points
  }

  static double _calculateWeaponSynergyScore(Character character) {
    // Placeholder implementation
    // TODO: Implement weapon synergy calculation
    return 7.0; // 7/10 points
  }

  static double _getRoleUsefulnessScore(CharacterRole role) {
    // Meta relevance scores (0-100)
    switch (role) {
      case CharacterRole.mainDps:
        return 90.0;
      case CharacterRole.subDps:
        return 75.0;
      case CharacterRole.support:
        return 80.0;
      case CharacterRole.healer:
        return 85.0;
      case CharacterRole.buffer:
        return 95.0;
      case CharacterRole.driver:
        return 70.0;
      case CharacterRole.battery:
        return 65.0;
    }
  }

  static double _calculateProgressScore(Character character) {
    final talentProgress = character.talents.talentProgress;
    final ascensionProgress = character.ascension / 6.0;
    final levelProgress = character.level / 90.0;

    return ((talentProgress + ascensionProgress + levelProgress) / 3) * 100;
  }
}
