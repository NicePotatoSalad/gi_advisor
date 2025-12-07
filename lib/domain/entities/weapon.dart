import 'package:equatable/equatable.dart';

enum WeaponType { sword, claymore, polearm, bow, catalyst }
enum WeaponRarity { three, four, five }

class Weapon extends Equatable {
  const Weapon({
    required this.key,
    required this.name,
    required this.type,
    required this.rarity,
    required this.level,
    required this.ascension,
    required this.refinement,
    required this.stats,
  });

  final String key;
  final String name;
  final WeaponType type;
  final WeaponRarity rarity;
  final int level;
  final int ascension;
  final int refinement;
  final WeaponStats stats;

  @override
  List<Object?> get props => [
        key,
        name,
        type,
        rarity,
        level,
        ascension,
        refinement,
        stats,
      ];

  bool get isMaxLevel => level == 90;
  bool get isFullyAscended => ascension == 6;
  bool get isMaxRefinement => refinement == 5;
}

class WeaponStats extends Equatable {
  const WeaponStats({
    required this.baseAtk,
    this.hp = 0.0,
    this.atk = 0.0,
    this.def = 0.0,
    this.hpPercent = 0.0,
    this.atkPercent = 0.0,
    this.defPercent = 0.0,
    this.critRate = 0.0,
    this.critDmg = 0.0,
    this.energyRecharge = 0.0,
    this.elementalMastery = 0.0,
    this.physicalDmgBonus = 0.0,
    this.anemoDmgBonus = 0.0,
    this.geoDmgBonus = 0.0,
    this.electroDmgBonus = 0.0,
    this.dendroDmgBonus = 0.0,
    this.hydroDmgBonus = 0.0,
    this.pyroDmgBonus = 0.0,
    this.cryoDmgBonus = 0.0,
  });

  final double baseAtk;
  final double hp;
  final double atk;
  final double def;
  final double hpPercent;
  final double atkPercent;
  final double defPercent;
  final double critRate;
  final double critDmg;
  final double energyRecharge;
  final double elementalMastery;
  final double physicalDmgBonus;
  final double anemoDmgBonus;
  final double geoDmgBonus;
  final double electroDmgBonus;
  final double dendroDmgBonus;
  final double hydroDmgBonus;
  final double pyroDmgBonus;
  final double cryoDmgBonus;

  @override
  List<Object?> get props => [
        baseAtk,
        hp,
        atk,
        def,
        hpPercent,
        atkPercent,
        defPercent,
        critRate,
        critDmg,
        energyRecharge,
        elementalMastery,
        physicalDmgBonus,
        anemoDmgBonus,
        geoDmgBonus,
        electroDmgBonus,
        dendroDmgBonus,
        hydroDmgBonus,
        pyroDmgBonus,
        cryoDmgBonus,
      ];
}

