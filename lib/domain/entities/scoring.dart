import 'package:equatable/equatable.dart';

enum RollTier { s, a, b, c, d }
enum BuildCompletenessScore { excellent, good, average, poor, broken }
enum CharacterRole { mainDps, subDps, support, healer, buffer, driver, battery }

class ArtifactScoring extends Equatable {
  const ArtifactScoring({
    required this.efficiency,
    required this.tier,
    required this.subStatQuality,
    required this.mainStatCorrectness,
  });

  final double efficiency; // 0.0 - 1.0
  final RollTier tier;
  final double subStatQuality; // 0.0 - 1.0
  final bool mainStatCorrectness;

  @override
  List<Object?> get props => [
        efficiency,
        tier,
        subStatQuality,
        mainStatCorrectness,
      ];
}

class BuildScoring extends Equatable {
  const BuildScoring({
    required this.completenessScore,
    required this.mainStatsScore,
    required this.setBonusScore,
    required this.subStatsScore,
    required this.weaponSynergyScore,
    required this.totalScore,
  });

  final BuildCompletenessScore completenessScore;
  final double mainStatsScore; // 0-40
  final double setBonusScore; // 0-30
  final double subStatsScore; // 0-20
  final double weaponSynergyScore; // 0-10
  final double totalScore; // 0-100

  @override
  List<Object?> get props => [
        completenessScore,
        mainStatsScore,
        setBonusScore,
        subStatsScore,
        weaponSynergyScore,
        totalScore,
      ];
}

class CharacterAnalysis extends Equatable {
  const CharacterAnalysis({
    required this.role,
    required this.buildScoring,
    required this.artifactScoring,
    required this.investmentPriority,
    required this.strengths,
    required this.weaknesses,
  });

  final CharacterRole role;
  final BuildScoring buildScoring;
  final ArtifactScoring artifactScoring;
  final int investmentPriority; // 0-100
  final List<String> strengths;
  final List<String> weaknesses;

  @override
  List<Object?> get props => [
        role,
        buildScoring,
        artifactScoring,
        investmentPriority,
        strengths,
        weaknesses,
      ];
}

class CharacterSummary extends Equatable {
  const CharacterSummary({
    required this.key,
    required this.name,
    required this.element,
    required this.rarity,
    required this.level,
    required this.constellation,
    required this.role,
    required this.buildCompleteness,
    required this.artifactEfficiency,
    required this.weaponMatch,
    required this.investmentPriority,
    required this.strengths,
    required this.weaknesses,
    required this.progress,
  });

  final String key;
  final String name;
  final String element;
  final int rarity;
  final int level;
  final int constellation;
  final CharacterRole role;
  final double buildCompleteness; // 0.0 - 1.0
  final double artifactEfficiency; // 0.0 - 1.0
  final double weaponMatch; // 0.0 - 1.0
  final int investmentPriority; // 0-100
  final List<String> strengths;
  final List<String> weaknesses;
  final CharacterProgress progress;

  @override
  List<Object?> get props => [
        key,
        name,
        element,
        rarity,
        level,
        constellation,
        role,
        buildCompleteness,
        artifactEfficiency,
        weaponMatch,
        investmentPriority,
        strengths,
        weaknesses,
        progress,
      ];
}

class CharacterProgress extends Equatable {
  const CharacterProgress({
    required this.talentProgress,
    required this.ascensionProgress,
    required this.weaponProgress,
    required this.overallProgress,
  });

  final double talentProgress; // 0.0 - 1.0
  final double ascensionProgress; // 0.0 - 1.0
  final double weaponProgress; // 0.0 - 1.0
  final double overallProgress; // 0.0 - 1.0

  @override
  List<Object?> get props => [
        talentProgress,
        ascensionProgress,
        weaponProgress,
        overallProgress,
  ];
}

