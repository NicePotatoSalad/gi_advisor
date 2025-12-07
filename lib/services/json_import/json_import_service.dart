import 'dart:io';
import 'dart:convert';
import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/artifact.dart';
import 'package:genshin_advisor/domain/entities/weapon.dart';
import 'package:genshin_advisor/domain/entities/talent.dart';

/// Service for importing and parsing JSON files from Genshin Impact tools
class JsonImportService {
  /// Parse a JSON file and return a list of characters
  Future<List<Character>> parseJsonFile(File file) async {
    if (!await file.exists()) {
      throw JsonImportException('File does not exist: ${file.path}');
    }

    final jsonContent = await file.readAsString();
    final format = await detectJsonFormat(jsonContent);
    final normalizedData = await normalizeJsonData(jsonContent, format);

    return _parseCharacters(normalizedData);
  }

  /// Validate if the JSON content matches expected format
  Future<bool> validateJsonFormat(String jsonContent) async {
    try {
      final json = jsonDecode(jsonContent) as Map<String, dynamic>;
      
      // Check for GOOD format
      if (json.containsKey('format') && json['format'] == 'GOOD') {
        return json.containsKey('characters') || json.containsKey('weapons');
      }
      
      // Check for GenshinOptimizer format
      if (json.containsKey('characters') && json['characters'] is Map) {
        return true;
      }
      
      return false;
    } catch (e) {
      return false;
    }
  }

  /// Detect the JSON format (GOOD or GenshinOptimizer)
  Future<String> detectJsonFormat(String jsonContent) async {
    try {
      final json = jsonDecode(jsonContent) as Map<String, dynamic>;
      
      // GOOD format has a 'format' field set to 'GOOD'
      if (json.containsKey('format') && json['format'] == 'GOOD') {
        return 'GOOD';
      }
      
      // GenshinOptimizer format has characters as a map with character keys
      if (json.containsKey('characters') && json['characters'] is Map) {
        return 'GenshinOptimizer';
      }
      
      throw JsonImportException('Unknown JSON format');
    } catch (e) {
      if (e is JsonImportException) rethrow;
      throw JsonImportException('Invalid JSON: $e');
    }
  }

  /// Normalize JSON data to a common format
  Future<Map<String, dynamic>> normalizeJsonData(
    String jsonContent,
    String format,
  ) async {
    final json = jsonDecode(jsonContent) as Map<String, dynamic>;

    switch (format) {
      case 'GOOD':
        return _normalizeGoodFormat(json);
      case 'GenshinOptimizer':
        return _normalizeGenshinOptimizerFormat(json);
      default:
        throw JsonImportException('Unsupported format: $format');
    }
  }

  Map<String, dynamic> _normalizeGoodFormat(Map<String, dynamic> json) {
    final characters = <String, dynamic>{};
    
    if (json.containsKey('characters') && json['characters'] is List) {
      final charList = json['characters'] as List;
      for (final char in charList) {
        if (char is Map<String, dynamic> && char.containsKey('key')) {
          characters[char['key'] as String] = char;
        }
      }
    }
    
    return {'characters': characters};
  }

  Map<String, dynamic> _normalizeGenshinOptimizerFormat(
    Map<String, dynamic> json,
  ) {
    if (json.containsKey('characters') && json['characters'] is Map) {
      return json;
    }
    
    throw JsonImportException('Invalid GenshinOptimizer format');
  }

  List<Character> _parseCharacters(Map<String, dynamic> normalizedData) {
    final characters = <Character>[];
    final charMap = normalizedData['characters'] as Map<String, dynamic>?;

    if (charMap == null || charMap.isEmpty) {
      return characters;
    }

    for (final entry in charMap.entries) {
      try {
        final charData = entry.value as Map<String, dynamic>;
        final character = _parseCharacter(entry.key, charData);
        characters.add(character);
      } catch (e) {
        // Skip invalid characters and continue parsing others
        // TODO: Add proper logging service
        continue;
      }
    }

    return characters;
  }

  Character _parseCharacter(String key, Map<String, dynamic> data) {
    // Parse basic character info
    final name = data['name'] as String? ?? key;
    final level = (data['level'] as num?)?.toInt() ?? 1;
    final constellation = (data['constellation'] as num?)?.toInt() ?? 0;
    final ascension = (data['ascension'] as num?)?.toInt() ?? 0;
    final friendship = (data['friendship'] as num?)?.toInt() ?? 0;

    // Parse element
    final elementStr = (data['element'] as String?)?.toLowerCase() ?? 'anemo';
    final element = _parseElement(elementStr);

    // Parse rarity
    final rarityStr = (data['rarity'] as num?)?.toInt() ?? 5;
    final rarity = _parseRarity(rarityStr);

    // Parse weapon
    final weapon = _parseWeapon(data['weapon'] as Map<String, dynamic>?);

    // Parse artifacts
    final artifacts = _parseArtifacts(data['artifacts'] as List<dynamic>?);

    // Parse talents
    final talents = _parseTalents(data['talents'] as Map<String, dynamic>?);

    // Parse stats
    final stats = _parseCharacterStats(data['stats'] as Map<String, dynamic>?);

    return Character(
      key: key,
      name: name,
      element: element,
      rarity: rarity,
      level: level,
      constellation: constellation,
      weapon: weapon,
      artifacts: artifacts,
      talents: talents,
      stats: stats,
      friendship: friendship,
      ascension: ascension,
    );
  }

  CharacterElement _parseElement(String elementStr) {
    switch (elementStr.toLowerCase()) {
      case 'anemo':
        return CharacterElement.anemo;
      case 'geo':
        return CharacterElement.geo;
      case 'electro':
        return CharacterElement.electro;
      case 'dendro':
        return CharacterElement.dendro;
      case 'hydro':
        return CharacterElement.hydro;
      case 'pyro':
        return CharacterElement.pyro;
      case 'cryo':
        return CharacterElement.cryo;
      default:
        return CharacterElement.anemo;
    }
  }

  CharacterRarity _parseRarity(int rarity) {
    switch (rarity) {
      case 1:
        return CharacterRarity.one;
      case 2:
        return CharacterRarity.two;
      case 3:
        return CharacterRarity.three;
      case 4:
        return CharacterRarity.four;
      case 5:
        return CharacterRarity.five;
      default:
        return CharacterRarity.five;
    }
  }

  Weapon _parseWeapon(Map<String, dynamic>? weaponData) {
    if (weaponData == null) {
      return const Weapon(
        key: 'dull_blade',
        name: 'Dull Blade',
        type: WeaponType.sword,
        rarity: WeaponRarity.three,
        level: 1,
        ascension: 0,
        refinement: 1,
        stats: WeaponStats(baseAtk: 0),
      );
    }

    final key = weaponData['key'] as String? ?? 'dull_blade';
    final name = weaponData['name'] as String? ?? 'Unknown Weapon';
    final level = (weaponData['level'] as num?)?.toInt() ?? 1;
    final ascension = (weaponData['ascension'] as num?)?.toInt() ?? 0;
    final refinement = (weaponData['refinement'] as num?)?.toInt() ?? 1;

    final typeStr = (weaponData['type'] as String?)?.toLowerCase() ?? 'sword';
    final type = _parseWeaponType(typeStr);

    final rarityStr = (weaponData['rarity'] as num?)?.toInt() ?? 1;
    final rarity = _parseWeaponRarity(rarityStr);

    final stats = _parseWeaponStats(weaponData['stats'] as Map<String, dynamic>?);

    return Weapon(
      key: key,
      name: name,
      type: type,
      rarity: rarity,
      level: level,
      ascension: ascension,
      refinement: refinement,
      stats: stats,
    );
  }

  WeaponType _parseWeaponType(String typeStr) {
    switch (typeStr.toLowerCase()) {
      case 'sword':
        return WeaponType.sword;
      case 'claymore':
        return WeaponType.claymore;
      case 'polearm':
        return WeaponType.polearm;
      case 'bow':
        return WeaponType.bow;
      case 'catalyst':
        return WeaponType.catalyst;
      default:
        return WeaponType.sword;
    }
  }

  WeaponRarity _parseWeaponRarity(int rarity) {
    switch (rarity) {
      case 1:
      case 2:
      case 3:
        return WeaponRarity.three;
      case 4:
        return WeaponRarity.four;
      case 5:
        return WeaponRarity.five;
      default:
        return WeaponRarity.three;
    }
  }

  WeaponStats _parseWeaponStats(Map<String, dynamic>? statsData) {
    if (statsData == null) {
      return const WeaponStats(baseAtk: 0);
    }

    return WeaponStats(
      baseAtk: (statsData['baseAtk'] as num?)?.toDouble() ?? 0.0,
      hp: (statsData['hp'] as num?)?.toDouble() ?? 0.0,
      atk: (statsData['atk'] as num?)?.toDouble() ?? 0.0,
      def: (statsData['def'] as num?)?.toDouble() ?? 0.0,
      hpPercent: (statsData['hp_'] as num?)?.toDouble() ?? 0.0,
      atkPercent: (statsData['atk_'] as num?)?.toDouble() ?? 0.0,
      defPercent: (statsData['def_'] as num?)?.toDouble() ?? 0.0,
      critRate: (statsData['critRate_'] as num?)?.toDouble() ?? 0.0,
      critDmg: (statsData['critDMG_'] as num?)?.toDouble() ?? 0.0,
      energyRecharge: (statsData['energyRecharge_'] as num?)?.toDouble() ?? 0.0,
      elementalMastery: (statsData['elementalMastery'] as num?)?.toDouble() ?? 0.0,
    );
  }

  List<Artifact> _parseArtifacts(List<dynamic>? artifactsData) {
    if (artifactsData == null || artifactsData.isEmpty) {
      return [];
    }

    final artifacts = <Artifact>[];
    for (final artifactData in artifactsData) {
      if (artifactData is Map<String, dynamic>) {
        try {
          final artifact = _parseArtifact(artifactData);
          artifacts.add(artifact);
        } catch (e) {
          // Skip invalid artifacts and continue parsing others
          // TODO: Add proper logging service
          continue;
        }
      }
    }

    return artifacts;
  }

  Artifact _parseArtifact(Map<String, dynamic> data) {
    final setKey = data['setKey'] as String? ?? 'unknown';
    final slotKeyStr = (data['slotKey'] as String?)?.toLowerCase() ?? 'flower';
    final slotKey = _parseArtifactSlot(slotKeyStr);
    final level = (data['level'] as num?)?.toInt() ?? 0;
    final rarityStr = (data['rarity'] as num?)?.toInt() ?? 5;
    final rarity = _parseArtifactRarity(rarityStr);
    final locked = data['locked'] as bool? ?? false;

    final mainStatData = data['mainStatKey'] as String?;
    final mainStatValue = (data['mainStatValue'] as num?)?.toDouble() ?? 0.0;
    final mainStat = ArtifactStat(
      key: mainStatData ?? 'hp',
      value: mainStatValue,
    );

    final subStats = <ArtifactStat>[];
    final subStatsData = data['substats'] as List<dynamic>?;
    if (subStatsData != null) {
      for (final subStatData in subStatsData) {
        if (subStatData is Map<String, dynamic>) {
          final key = subStatData['key'] as String? ?? 'hp';
          final value = (subStatData['value'] as num?)?.toDouble() ?? 0.0;
          subStats.add(ArtifactStat(key: key, value: value));
        }
      }
    }

    return Artifact(
      setKey: setKey,
      slotKey: slotKey,
      level: level,
      rarity: rarity,
      mainStat: mainStat,
      subStats: subStats,
      locked: locked,
    );
  }

  ArtifactSlot _parseArtifactSlot(String slotStr) {
    switch (slotStr.toLowerCase()) {
      case 'flower':
        return ArtifactSlot.flower;
      case 'plume':
        return ArtifactSlot.plume;
      case 'sands':
        return ArtifactSlot.sands;
      case 'goblet':
        return ArtifactSlot.goblet;
      case 'circlet':
        return ArtifactSlot.circlet;
      default:
        return ArtifactSlot.flower;
    }
  }

  ArtifactRarity _parseArtifactRarity(int rarity) {
    switch (rarity) {
      case 3:
        return ArtifactRarity.three;
      case 4:
        return ArtifactRarity.four;
      case 5:
        return ArtifactRarity.five;
      default:
        return ArtifactRarity.five;
    }
  }

  Talents _parseTalents(Map<String, dynamic>? talentsData) {
    if (talentsData == null) {
      return const Talents(auto: 1, skill: 1, burst: 1);
    }

    return Talents(
      auto: (talentsData['auto'] as num?)?.toInt() ?? 1,
      skill: (talentsData['skill'] as num?)?.toInt() ?? 1,
      burst: (talentsData['burst'] as num?)?.toInt() ?? 1,
    );
  }

  CharacterStats _parseCharacterStats(Map<String, dynamic>? statsData) {
    if (statsData == null) {
      return const CharacterStats(
        hp: 0,
        atk: 0,
        def: 0,
        critRate: 0,
        critDmg: 0,
        energyRecharge: 0,
        elementalMastery: 0,
      );
    }

    return CharacterStats(
      hp: (statsData['hp'] as num?)?.toDouble() ?? 0.0,
      atk: (statsData['atk'] as num?)?.toDouble() ?? 0.0,
      def: (statsData['def'] as num?)?.toDouble() ?? 0.0,
      critRate: (statsData['critRate_'] as num?)?.toDouble() ?? 0.0,
      critDmg: (statsData['critDMG_'] as num?)?.toDouble() ?? 0.0,
      energyRecharge: (statsData['energyRecharge_'] as num?)?.toDouble() ?? 0.0,
      elementalMastery: (statsData['elementalMastery'] as num?)?.toDouble() ?? 0.0,
      physicalDmgBonus: (statsData['physicalDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      anemoDmgBonus: (statsData['anemoDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      geoDmgBonus: (statsData['geoDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      electroDmgBonus: (statsData['electroDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      dendroDmgBonus: (statsData['dendroDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      hydroDmgBonus: (statsData['hydroDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      pyroDmgBonus: (statsData['pyroDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      cryoDmgBonus: (statsData['cryoDmgBonus_'] as num?)?.toDouble() ?? 0.0,
      healingBonus: (statsData['healingBonus_'] as num?)?.toDouble() ?? 0.0,
    );
  }
}

/// Exception class for JSON import errors
class JsonImportException implements Exception {
  final String message;

  JsonImportException(this.message);

  @override
  String toString() => 'JsonImportException: $message';
}

