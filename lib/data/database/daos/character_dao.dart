import 'package:drift/drift.dart';
import 'package:genshin_advisor/data/database/database.dart' as db;
import 'package:genshin_advisor/domain/entities/character.dart' as domain;
import 'package:genshin_advisor/domain/entities/weapon.dart' as domain;
import 'package:genshin_advisor/domain/entities/artifact.dart';
import 'package:genshin_advisor/domain/entities/talent.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';

part 'character_dao.g.dart';

@DriftAccessor(tables: [Characters, Weapons, Artifacts, CharacterArtifacts, CharacterSummaries])
class CharacterDao extends DatabaseAccessor<AppDatabase> with _$CharacterDaoMixin {
  CharacterDao(super.db);

  // Insert or update character
  Future<int> insertCharacter(domain.Character character) async {
    final companion = CharactersCompanion.insert(
      key: character.key,
      name: character.name,
      element: character.element.name,
      rarity: character.rarity.index + 1,
      level: character.level,
      constellation: character.constellation,
      weaponId: await _getOrInsertWeapon(character.weapon),
      friendship: character.friendship,
      ascension: character.ascension,
      hp: character.stats.hp,
      atk: character.stats.atk,
      def: character.stats.def,
      critRate: character.stats.critRate,
      critDmg: character.stats.critDmg,
      energyRecharge: character.stats.energyRecharge,
      elementalMastery: character.stats.elementalMastery,
      physicalDmgBonus: character.stats.physicalDmgBonus,
      anemoDmgBonus: character.stats.anemoDmgBonus,
      geoDmgBonus: character.stats.geoDmgBonus,
      electroDmgBonus: character.stats.electroDmgBonus,
      dendroDmgBonus: character.stats.dendroDmgBonus,
      hydroDmgBonus: character.stats.hydroDmgBonus,
      pyroDmgBonus: character.stats.pyroDmgBonus,
      cryoDmgBonus: character.stats.cryoDmgBonus,
      healingBonus: character.stats.healingBonus,
      autoTalent: character.talents.auto,
      skillTalent: character.talents.skill,
      burstTalent: character.talents.burst,
    );

    return await into(characters).insertOnConflictUpdate(companion);
  }

  // Get all characters with their data
  Future<List<Character>> getAllCharacters() async {
    final query = select(characters).join([
      leftOuterJoin(weapons, weapons.id.equalsExp(characters.weaponId)),
    ]);

    final rows = await query.get();

    return rows.map((row) {
      final characterRow = row.readTable(characters);
      final weaponRow = row.readTableOrNull(weapons);

      return Character(
        key: characterRow.key,
        name: characterRow.name,
        element: CharacterElement.values.firstWhere(
          (e) => e.name == characterRow.element,
        ),
        rarity: CharacterRarity.values[characterRow.rarity - 1],
        level: characterRow.level,
        constellation: characterRow.constellation,
        weapon: weaponRow != null ? _mapWeaponRow(weaponRow) : Weapon.empty(),
        artifacts: [], // TODO: Load artifacts
        talents: Talents(
          auto: characterRow.autoTalent,
          skill: characterRow.skillTalent,
          burst: characterRow.burstTalent,
        ),
        stats: CharacterStats(
          hp: characterRow.hp,
          atk: characterRow.atk,
          def: characterRow.def,
          critRate: characterRow.critRate,
          critDmg: characterRow.critDmg,
          energyRecharge: characterRow.energyRecharge,
          elementalMastery: characterRow.elementalMastery,
          physicalDmgBonus: characterRow.physicalDmgBonus,
          anemoDmgBonus: characterRow.anemoDmgBonus,
          geoDmgBonus: characterRow.geoDmgBonus,
          electroDmgBonus: characterRow.electroDmgBonus,
          dendroDmgBonus: characterRow.dendroDmgBonus,
          hydroDmgBonus: characterRow.hydroDmgBonus,
          pyroDmgBonus: characterRow.pyroDmgBonus,
          cryoDmgBonus: characterRow.cryoDmgBonus,
          healingBonus: characterRow.healingBonus,
        ),
        friendship: characterRow.friendship,
        ascension: characterRow.ascension,
      );
    }).toList();
  }

  // Get character by key
  Future<Character?> getCharacterByKey(String key) async {
    final query = select(characters)..where((tbl) => tbl.key.equals(key));
    final row = await query.getSingleOrNull();

    if (row == null) return null;

    // TODO: Load weapon and artifacts
    return Character(
      key: row.key,
      name: row.name,
      element: CharacterElement.values.firstWhere(
        (e) => e.name == row.element,
      ),
      rarity: CharacterRarity.values[row.rarity - 1],
      level: row.level,
      constellation: row.constellation,
      weapon: Weapon.empty(), // TODO
      artifacts: [], // TODO
      talents: Talents(
        auto: row.autoTalent,
        skill: row.skillTalent,
        burst: row.burstTalent,
      ),
      stats: CharacterStats(
        hp: row.hp,
        atk: row.atk,
        def: row.def,
        critRate: row.critRate,
        critDmg: row.critDmg,
        energyRecharge: row.energyRecharge,
        elementalMastery: row.elementalMastery,
        physicalDmgBonus: row.physicalDmgBonus,
        anemoDmgBonus: row.anemoDmgBonus,
        geoDmgBonus: row.geoDmgBonus,
        electroDmgBonus: row.electroDmgBonus,
        dendroDmgBonus: row.dendroDmgBonus,
        hydroDmgBonus: row.hydroDmgBonus,
        pyroDmgBonus: row.pyroDmgBonus,
        cryoDmgBonus: row.cryoDmgBonus,
        healingBonus: row.healingBonus,
      ),
      friendship: row.friendship,
      ascension: row.ascension,
    );
  }

  // Insert character summary
  Future<int> insertCharacterSummary(int characterId, CharacterSummary summary) async {
    final companion = CharacterSummariesCompanion.insert(
      characterId: characterId,
      role: summary.role.name,
      buildCompleteness: summary.buildCompleteness,
      artifactEfficiency: summary.artifactEfficiency,
      weaponMatch: summary.weaponMatch,
      investmentPriority: summary.investmentPriority,
      strengths: summary.strengths.join(','),
      weaknesses: summary.weaknesses.join(','),
      talentProgress: summary.progress.talentProgress,
      ascensionProgress: summary.progress.ascensionProgress,
      weaponProgress: summary.progress.weaponProgress,
      overallProgress: summary.progress.overallProgress,
      lastUpdated: DateTime.now(),
    );

    return await into(characterSummaries).insertOnConflictUpdate(companion);
  }

  Future<int> _getOrInsertWeapon(Weapon weapon) async {
    final existing = await (select(weapons)..where((tbl) => tbl.key.equals(weapon.key))).getSingleOrNull();

    if (existing != null) {
      return existing.id;
    }

    final companion = WeaponsCompanion.insert(
      key: weapon.key,
      name: weapon.name,
      type: weapon.type.name,
      rarity: weapon.rarity.index + 3, // 3, 4, 5 star weapons
      level: weapon.level,
      ascension: weapon.ascension,
      refinement: weapon.refinement,
      baseAtk: weapon.stats.baseAtk,
      hp: weapon.stats.hp,
      atk: weapon.stats.atk,
      def: weapon.stats.def,
      hpPercent: weapon.stats.hpPercent,
      atkPercent: weapon.stats.atkPercent,
      defPercent: weapon.stats.defPercent,
      critRate: weapon.stats.critRate,
      critDmg: weapon.stats.critDmg,
      energyRecharge: weapon.stats.energyRecharge,
      elementalMastery: weapon.stats.elementalMastery,
      physicalDmgBonus: weapon.stats.physicalDmgBonus,
      anemoDmgBonus: weapon.stats.anemoDmgBonus,
      geoDmgBonus: weapon.stats.geoDmgBonus,
      electroDmgBonus: weapon.stats.electroDmgBonus,
      dendroDmgBonus: weapon.stats.dendroDmgBonus,
      hydroDmgBonus: weapon.stats.hydroDmgBonus,
      pyroDmgBonus: weapon.stats.pyroDmgBonus,
      cryoDmgBonus: weapon.stats.cryoDmgBonus,
    );

    return await into(weapons).insert(companion);
  }

  Weapon _mapWeaponRow(WeaponRow row) {
    return Weapon(
      key: row.key,
      name: row.name,
      type: WeaponType.values.firstWhere((t) => t.name == row.type),
      rarity: WeaponRarity.values[row.rarity - 3],
      level: row.level,
      ascension: row.ascension,
      refinement: row.refinement,
      stats: WeaponStats(
        baseAtk: row.baseAtk,
        hp: row.hp,
        atk: row.atk,
        def: row.def,
        hpPercent: row.hpPercent,
        atkPercent: row.atkPercent,
        defPercent: row.defPercent,
        critRate: row.critRate,
        critDmg: row.critDmg,
        energyRecharge: row.energyRecharge,
        elementalMastery: row.elementalMastery,
        physicalDmgBonus: row.physicalDmgBonus,
        anemoDmgBonus: row.anemoDmgBonus,
        geoDmgBonus: row.geoDmgBonus,
        electroDmgBonus: row.electroDmgBonus,
        dendroDmgBonus: row.dendroDmgBonus,
        hydroDmgBonus: row.hydroDmgBonus,
        pyroDmgBonus: row.pyroDmgBonus,
        cryoDmgBonus: row.cryoDmgBonus,
      ),
    );
  }
}

// Extension to provide empty instances for testing
extension WeaponExtensions on Weapon {
  static Weapon empty() {
    return Weapon(
      key: '',
      name: '',
      type: WeaponType.sword,
      rarity: WeaponRarity.three,
      level: 1,
      ascension: 0,
      refinement: 1,
      stats: WeaponStats(baseAtk: 0),
    );
  }
}
