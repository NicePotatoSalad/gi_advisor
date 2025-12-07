import 'package:equatable/equatable.dart';

enum ArtifactSlot { flower, plume, sands, goblet, circlet }
enum ArtifactRarity { three, four, five }

class Artifact extends Equatable {
  const Artifact({
    required this.setKey,
    required this.slotKey,
    required this.level,
    required this.rarity,
    required this.mainStat,
    required this.subStats,
    this.locked = false,
  });

  final String setKey;
  final ArtifactSlot slotKey;
  final int level;
  final ArtifactRarity rarity;
  final ArtifactStat mainStat;
  final List<ArtifactStat> subStats;
  final bool locked;

  @override
  List<Object?> get props => [
        setKey,
        slotKey,
        level,
        rarity,
        mainStat,
        subStats,
        locked,
      ];

  bool get isMaxLevel => level == 20;
  int get maxSubStats => rarity == ArtifactRarity.five ? 4 : 3;
  double get rollEfficiency => _calculateRollEfficiency();

  double _calculateRollEfficiency() {
    if (subStats.isEmpty) return 0.0;

    double totalEfficiency = 0.0;
    for (final stat in subStats) {
      totalEfficiency += stat.rollValue / stat.maxRollValue;
    }

    return totalEfficiency / subStats.length;
  }
}

class ArtifactStat extends Equatable {
  const ArtifactStat({
    required this.key,
    required this.value,
  });

  final String key;
  final double value;

  @override
  List<Object?> get props => [key, value];

  // Maximum possible roll value for this stat at +20
  double get maxRollValue {
    switch (key) {
      case 'hp':
      case 'atk':
      case 'def':
      case 'hp_':
      case 'atk_':
      case 'def_':
      case 'energyRecharge_':
      case 'elementalMastery':
        return 5.8; // 5.8% or flat value equivalent
      case 'critRate_':
      case 'critDMG_':
        return 3.9; // 3.9%
      default:
        return 1.0; // Fallback for unknown stats
    }
  }

  // Current roll value as percentage of max
  double get rollValue {
    switch (key) {
      case 'hp':
        return (value / 4780) * 5.8; // Max HP roll
      case 'atk':
        return (value / 311) * 5.8; // Max ATK roll
      case 'def':
        return (value / 370) * 5.8; // Max DEF roll
      case 'hp_':
      case 'atk_':
      case 'def_':
      case 'energyRecharge_':
      case 'elementalMastery':
        return value; // Already percentage
      case 'critRate_':
      case 'critDMG_':
        return value; // Already percentage
      default:
        return value;
    }
  }
}

