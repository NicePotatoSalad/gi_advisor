import 'package:equatable/equatable.dart';
import 'package:genshin_advisor/domain/entities/weapon.dart';
import 'package:genshin_advisor/domain/entities/artifact.dart';
import 'package:genshin_advisor/domain/entities/talent.dart';

enum CharacterRarity { one, two, three, four, five }
enum CharacterElement { anemo, geo, electro, dendro, hydro, pyro, cryo }

class Character extends Equatable {
  const Character({
    required this.key,
    required this.name,
    required this.element,
    required this.rarity,
    required this.level,
    required this.constellation,
    required this.weapon,
    required this.artifacts,
    required this.talents,
    required this.stats,
    required this.friendship,
    required this.ascension,
  });

  final String key;
  final String name;
  final CharacterElement element;
  final CharacterRarity rarity;
  final int level;
  final int constellation;
  final Weapon weapon;
  final List<Artifact> artifacts;
  final Talents talents;
  final CharacterStats stats;
  final int friendship;
  final int ascension;

  @override
  List<Object?> get props => [
        key,
        name,
        element,
        rarity,
        level,
        constellation,
        weapon,
        artifacts,
        talents,
        stats,
        friendship,
        ascension,
      ];

  bool get isMaxLevel => level == 90;
  bool get isC6 => constellation == 6;
  bool get isFullyAscended => ascension == 6;
}

class CharacterStats extends Equatable {
  const CharacterStats({
    required this.hp,
    required this.atk,
    required this.def,
    required this.critRate,
    required this.critDmg,
    required this.energyRecharge,
    required this.elementalMastery,
    this.physicalDmgBonus = 0.0,
    this.anemoDmgBonus = 0.0,
    this.geoDmgBonus = 0.0,
    this.electroDmgBonus = 0.0,
    this.dendroDmgBonus = 0.0,
    this.hydroDmgBonus = 0.0,
    this.pyroDmgBonus = 0.0,
    this.cryoDmgBonus = 0.0,
    this.healingBonus = 0.0,
  });

  final double hp;
  final double atk;
  final double def;
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
  final double healingBonus;

  @override
  List<Object?> get props => [
        hp,
        atk,
        def,
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
        healingBonus,
      ];
}
