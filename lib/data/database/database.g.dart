// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WeaponsTable extends Weapons with TableInfo<$WeaponsTable, Weapon> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeaponsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rarityMeta = const VerificationMeta('rarity');
  @override
  late final GeneratedColumn<int> rarity = GeneratedColumn<int>(
      'rarity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ascensionMeta =
      const VerificationMeta('ascension');
  @override
  late final GeneratedColumn<int> ascension = GeneratedColumn<int>(
      'ascension', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _refinementMeta =
      const VerificationMeta('refinement');
  @override
  late final GeneratedColumn<int> refinement = GeneratedColumn<int>(
      'refinement', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _baseAtkMeta =
      const VerificationMeta('baseAtk');
  @override
  late final GeneratedColumn<double> baseAtk = GeneratedColumn<double>(
      'base_atk', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _hpMeta = const VerificationMeta('hp');
  @override
  late final GeneratedColumn<double> hp = GeneratedColumn<double>(
      'hp', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _atkMeta = const VerificationMeta('atk');
  @override
  late final GeneratedColumn<double> atk = GeneratedColumn<double>(
      'atk', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _defMeta = const VerificationMeta('def');
  @override
  late final GeneratedColumn<double> def = GeneratedColumn<double>(
      'def', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _hpPercentMeta =
      const VerificationMeta('hpPercent');
  @override
  late final GeneratedColumn<double> hpPercent = GeneratedColumn<double>(
      'hp_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _atkPercentMeta =
      const VerificationMeta('atkPercent');
  @override
  late final GeneratedColumn<double> atkPercent = GeneratedColumn<double>(
      'atk_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _defPercentMeta =
      const VerificationMeta('defPercent');
  @override
  late final GeneratedColumn<double> defPercent = GeneratedColumn<double>(
      'def_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _critRateMeta =
      const VerificationMeta('critRate');
  @override
  late final GeneratedColumn<double> critRate = GeneratedColumn<double>(
      'crit_rate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _critDmgMeta =
      const VerificationMeta('critDmg');
  @override
  late final GeneratedColumn<double> critDmg = GeneratedColumn<double>(
      'crit_dmg', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _energyRechargeMeta =
      const VerificationMeta('energyRecharge');
  @override
  late final GeneratedColumn<double> energyRecharge = GeneratedColumn<double>(
      'energy_recharge', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _elementalMasteryMeta =
      const VerificationMeta('elementalMastery');
  @override
  late final GeneratedColumn<double> elementalMastery = GeneratedColumn<double>(
      'elemental_mastery', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _physicalDmgBonusMeta =
      const VerificationMeta('physicalDmgBonus');
  @override
  late final GeneratedColumn<double> physicalDmgBonus = GeneratedColumn<double>(
      'physical_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _anemoDmgBonusMeta =
      const VerificationMeta('anemoDmgBonus');
  @override
  late final GeneratedColumn<double> anemoDmgBonus = GeneratedColumn<double>(
      'anemo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _geoDmgBonusMeta =
      const VerificationMeta('geoDmgBonus');
  @override
  late final GeneratedColumn<double> geoDmgBonus = GeneratedColumn<double>(
      'geo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _electroDmgBonusMeta =
      const VerificationMeta('electroDmgBonus');
  @override
  late final GeneratedColumn<double> electroDmgBonus = GeneratedColumn<double>(
      'electro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dendroDmgBonusMeta =
      const VerificationMeta('dendroDmgBonus');
  @override
  late final GeneratedColumn<double> dendroDmgBonus = GeneratedColumn<double>(
      'dendro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _hydroDmgBonusMeta =
      const VerificationMeta('hydroDmgBonus');
  @override
  late final GeneratedColumn<double> hydroDmgBonus = GeneratedColumn<double>(
      'hydro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _pyroDmgBonusMeta =
      const VerificationMeta('pyroDmgBonus');
  @override
  late final GeneratedColumn<double> pyroDmgBonus = GeneratedColumn<double>(
      'pyro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _cryoDmgBonusMeta =
      const VerificationMeta('cryoDmgBonus');
  @override
  late final GeneratedColumn<double> cryoDmgBonus = GeneratedColumn<double>(
      'cryo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        key,
        name,
        type,
        rarity,
        level,
        ascension,
        refinement,
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
        cryoDmgBonus
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'weapons';
  @override
  VerificationContext validateIntegrity(Insertable<Weapon> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('rarity')) {
      context.handle(_rarityMeta,
          rarity.isAcceptableOrUnknown(data['rarity']!, _rarityMeta));
    } else if (isInserting) {
      context.missing(_rarityMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('ascension')) {
      context.handle(_ascensionMeta,
          ascension.isAcceptableOrUnknown(data['ascension']!, _ascensionMeta));
    } else if (isInserting) {
      context.missing(_ascensionMeta);
    }
    if (data.containsKey('refinement')) {
      context.handle(
          _refinementMeta,
          refinement.isAcceptableOrUnknown(
              data['refinement']!, _refinementMeta));
    } else if (isInserting) {
      context.missing(_refinementMeta);
    }
    if (data.containsKey('base_atk')) {
      context.handle(_baseAtkMeta,
          baseAtk.isAcceptableOrUnknown(data['base_atk']!, _baseAtkMeta));
    } else if (isInserting) {
      context.missing(_baseAtkMeta);
    }
    if (data.containsKey('hp')) {
      context.handle(_hpMeta, hp.isAcceptableOrUnknown(data['hp']!, _hpMeta));
    } else if (isInserting) {
      context.missing(_hpMeta);
    }
    if (data.containsKey('atk')) {
      context.handle(
          _atkMeta, atk.isAcceptableOrUnknown(data['atk']!, _atkMeta));
    } else if (isInserting) {
      context.missing(_atkMeta);
    }
    if (data.containsKey('def')) {
      context.handle(
          _defMeta, def.isAcceptableOrUnknown(data['def']!, _defMeta));
    } else if (isInserting) {
      context.missing(_defMeta);
    }
    if (data.containsKey('hp_percent')) {
      context.handle(_hpPercentMeta,
          hpPercent.isAcceptableOrUnknown(data['hp_percent']!, _hpPercentMeta));
    } else if (isInserting) {
      context.missing(_hpPercentMeta);
    }
    if (data.containsKey('atk_percent')) {
      context.handle(
          _atkPercentMeta,
          atkPercent.isAcceptableOrUnknown(
              data['atk_percent']!, _atkPercentMeta));
    } else if (isInserting) {
      context.missing(_atkPercentMeta);
    }
    if (data.containsKey('def_percent')) {
      context.handle(
          _defPercentMeta,
          defPercent.isAcceptableOrUnknown(
              data['def_percent']!, _defPercentMeta));
    } else if (isInserting) {
      context.missing(_defPercentMeta);
    }
    if (data.containsKey('crit_rate')) {
      context.handle(_critRateMeta,
          critRate.isAcceptableOrUnknown(data['crit_rate']!, _critRateMeta));
    } else if (isInserting) {
      context.missing(_critRateMeta);
    }
    if (data.containsKey('crit_dmg')) {
      context.handle(_critDmgMeta,
          critDmg.isAcceptableOrUnknown(data['crit_dmg']!, _critDmgMeta));
    } else if (isInserting) {
      context.missing(_critDmgMeta);
    }
    if (data.containsKey('energy_recharge')) {
      context.handle(
          _energyRechargeMeta,
          energyRecharge.isAcceptableOrUnknown(
              data['energy_recharge']!, _energyRechargeMeta));
    } else if (isInserting) {
      context.missing(_energyRechargeMeta);
    }
    if (data.containsKey('elemental_mastery')) {
      context.handle(
          _elementalMasteryMeta,
          elementalMastery.isAcceptableOrUnknown(
              data['elemental_mastery']!, _elementalMasteryMeta));
    } else if (isInserting) {
      context.missing(_elementalMasteryMeta);
    }
    if (data.containsKey('physical_dmg_bonus')) {
      context.handle(
          _physicalDmgBonusMeta,
          physicalDmgBonus.isAcceptableOrUnknown(
              data['physical_dmg_bonus']!, _physicalDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_physicalDmgBonusMeta);
    }
    if (data.containsKey('anemo_dmg_bonus')) {
      context.handle(
          _anemoDmgBonusMeta,
          anemoDmgBonus.isAcceptableOrUnknown(
              data['anemo_dmg_bonus']!, _anemoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_anemoDmgBonusMeta);
    }
    if (data.containsKey('geo_dmg_bonus')) {
      context.handle(
          _geoDmgBonusMeta,
          geoDmgBonus.isAcceptableOrUnknown(
              data['geo_dmg_bonus']!, _geoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_geoDmgBonusMeta);
    }
    if (data.containsKey('electro_dmg_bonus')) {
      context.handle(
          _electroDmgBonusMeta,
          electroDmgBonus.isAcceptableOrUnknown(
              data['electro_dmg_bonus']!, _electroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_electroDmgBonusMeta);
    }
    if (data.containsKey('dendro_dmg_bonus')) {
      context.handle(
          _dendroDmgBonusMeta,
          dendroDmgBonus.isAcceptableOrUnknown(
              data['dendro_dmg_bonus']!, _dendroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_dendroDmgBonusMeta);
    }
    if (data.containsKey('hydro_dmg_bonus')) {
      context.handle(
          _hydroDmgBonusMeta,
          hydroDmgBonus.isAcceptableOrUnknown(
              data['hydro_dmg_bonus']!, _hydroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_hydroDmgBonusMeta);
    }
    if (data.containsKey('pyro_dmg_bonus')) {
      context.handle(
          _pyroDmgBonusMeta,
          pyroDmgBonus.isAcceptableOrUnknown(
              data['pyro_dmg_bonus']!, _pyroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_pyroDmgBonusMeta);
    }
    if (data.containsKey('cryo_dmg_bonus')) {
      context.handle(
          _cryoDmgBonusMeta,
          cryoDmgBonus.isAcceptableOrUnknown(
              data['cryo_dmg_bonus']!, _cryoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_cryoDmgBonusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Weapon map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Weapon(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      rarity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rarity'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      ascension: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ascension'])!,
      refinement: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}refinement'])!,
      baseAtk: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}base_atk'])!,
      hp: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}hp'])!,
      atk: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}atk'])!,
      def: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}def'])!,
      hpPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}hp_percent'])!,
      atkPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}atk_percent'])!,
      defPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}def_percent'])!,
      critRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}crit_rate'])!,
      critDmg: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}crit_dmg'])!,
      energyRecharge: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}energy_recharge'])!,
      elementalMastery: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}elemental_mastery'])!,
      physicalDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}physical_dmg_bonus'])!,
      anemoDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}anemo_dmg_bonus'])!,
      geoDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}geo_dmg_bonus'])!,
      electroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}electro_dmg_bonus'])!,
      dendroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}dendro_dmg_bonus'])!,
      hydroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}hydro_dmg_bonus'])!,
      pyroDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}pyro_dmg_bonus'])!,
      cryoDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cryo_dmg_bonus'])!,
    );
  }

  @override
  $WeaponsTable createAlias(String alias) {
    return $WeaponsTable(attachedDatabase, alias);
  }
}

class Weapon extends DataClass implements Insertable<Weapon> {
  final int id;
  final String key;
  final String name;
  final String type;
  final int rarity;
  final int level;
  final int ascension;
  final int refinement;
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
  const Weapon(
      {required this.id,
      required this.key,
      required this.name,
      required this.type,
      required this.rarity,
      required this.level,
      required this.ascension,
      required this.refinement,
      required this.baseAtk,
      required this.hp,
      required this.atk,
      required this.def,
      required this.hpPercent,
      required this.atkPercent,
      required this.defPercent,
      required this.critRate,
      required this.critDmg,
      required this.energyRecharge,
      required this.elementalMastery,
      required this.physicalDmgBonus,
      required this.anemoDmgBonus,
      required this.geoDmgBonus,
      required this.electroDmgBonus,
      required this.dendroDmgBonus,
      required this.hydroDmgBonus,
      required this.pyroDmgBonus,
      required this.cryoDmgBonus});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['rarity'] = Variable<int>(rarity);
    map['level'] = Variable<int>(level);
    map['ascension'] = Variable<int>(ascension);
    map['refinement'] = Variable<int>(refinement);
    map['base_atk'] = Variable<double>(baseAtk);
    map['hp'] = Variable<double>(hp);
    map['atk'] = Variable<double>(atk);
    map['def'] = Variable<double>(def);
    map['hp_percent'] = Variable<double>(hpPercent);
    map['atk_percent'] = Variable<double>(atkPercent);
    map['def_percent'] = Variable<double>(defPercent);
    map['crit_rate'] = Variable<double>(critRate);
    map['crit_dmg'] = Variable<double>(critDmg);
    map['energy_recharge'] = Variable<double>(energyRecharge);
    map['elemental_mastery'] = Variable<double>(elementalMastery);
    map['physical_dmg_bonus'] = Variable<double>(physicalDmgBonus);
    map['anemo_dmg_bonus'] = Variable<double>(anemoDmgBonus);
    map['geo_dmg_bonus'] = Variable<double>(geoDmgBonus);
    map['electro_dmg_bonus'] = Variable<double>(electroDmgBonus);
    map['dendro_dmg_bonus'] = Variable<double>(dendroDmgBonus);
    map['hydro_dmg_bonus'] = Variable<double>(hydroDmgBonus);
    map['pyro_dmg_bonus'] = Variable<double>(pyroDmgBonus);
    map['cryo_dmg_bonus'] = Variable<double>(cryoDmgBonus);
    return map;
  }

  WeaponsCompanion toCompanion(bool nullToAbsent) {
    return WeaponsCompanion(
      id: Value(id),
      key: Value(key),
      name: Value(name),
      type: Value(type),
      rarity: Value(rarity),
      level: Value(level),
      ascension: Value(ascension),
      refinement: Value(refinement),
      baseAtk: Value(baseAtk),
      hp: Value(hp),
      atk: Value(atk),
      def: Value(def),
      hpPercent: Value(hpPercent),
      atkPercent: Value(atkPercent),
      defPercent: Value(defPercent),
      critRate: Value(critRate),
      critDmg: Value(critDmg),
      energyRecharge: Value(energyRecharge),
      elementalMastery: Value(elementalMastery),
      physicalDmgBonus: Value(physicalDmgBonus),
      anemoDmgBonus: Value(anemoDmgBonus),
      geoDmgBonus: Value(geoDmgBonus),
      electroDmgBonus: Value(electroDmgBonus),
      dendroDmgBonus: Value(dendroDmgBonus),
      hydroDmgBonus: Value(hydroDmgBonus),
      pyroDmgBonus: Value(pyroDmgBonus),
      cryoDmgBonus: Value(cryoDmgBonus),
    );
  }

  factory Weapon.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Weapon(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      rarity: serializer.fromJson<int>(json['rarity']),
      level: serializer.fromJson<int>(json['level']),
      ascension: serializer.fromJson<int>(json['ascension']),
      refinement: serializer.fromJson<int>(json['refinement']),
      baseAtk: serializer.fromJson<double>(json['baseAtk']),
      hp: serializer.fromJson<double>(json['hp']),
      atk: serializer.fromJson<double>(json['atk']),
      def: serializer.fromJson<double>(json['def']),
      hpPercent: serializer.fromJson<double>(json['hpPercent']),
      atkPercent: serializer.fromJson<double>(json['atkPercent']),
      defPercent: serializer.fromJson<double>(json['defPercent']),
      critRate: serializer.fromJson<double>(json['critRate']),
      critDmg: serializer.fromJson<double>(json['critDmg']),
      energyRecharge: serializer.fromJson<double>(json['energyRecharge']),
      elementalMastery: serializer.fromJson<double>(json['elementalMastery']),
      physicalDmgBonus: serializer.fromJson<double>(json['physicalDmgBonus']),
      anemoDmgBonus: serializer.fromJson<double>(json['anemoDmgBonus']),
      geoDmgBonus: serializer.fromJson<double>(json['geoDmgBonus']),
      electroDmgBonus: serializer.fromJson<double>(json['electroDmgBonus']),
      dendroDmgBonus: serializer.fromJson<double>(json['dendroDmgBonus']),
      hydroDmgBonus: serializer.fromJson<double>(json['hydroDmgBonus']),
      pyroDmgBonus: serializer.fromJson<double>(json['pyroDmgBonus']),
      cryoDmgBonus: serializer.fromJson<double>(json['cryoDmgBonus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'rarity': serializer.toJson<int>(rarity),
      'level': serializer.toJson<int>(level),
      'ascension': serializer.toJson<int>(ascension),
      'refinement': serializer.toJson<int>(refinement),
      'baseAtk': serializer.toJson<double>(baseAtk),
      'hp': serializer.toJson<double>(hp),
      'atk': serializer.toJson<double>(atk),
      'def': serializer.toJson<double>(def),
      'hpPercent': serializer.toJson<double>(hpPercent),
      'atkPercent': serializer.toJson<double>(atkPercent),
      'defPercent': serializer.toJson<double>(defPercent),
      'critRate': serializer.toJson<double>(critRate),
      'critDmg': serializer.toJson<double>(critDmg),
      'energyRecharge': serializer.toJson<double>(energyRecharge),
      'elementalMastery': serializer.toJson<double>(elementalMastery),
      'physicalDmgBonus': serializer.toJson<double>(physicalDmgBonus),
      'anemoDmgBonus': serializer.toJson<double>(anemoDmgBonus),
      'geoDmgBonus': serializer.toJson<double>(geoDmgBonus),
      'electroDmgBonus': serializer.toJson<double>(electroDmgBonus),
      'dendroDmgBonus': serializer.toJson<double>(dendroDmgBonus),
      'hydroDmgBonus': serializer.toJson<double>(hydroDmgBonus),
      'pyroDmgBonus': serializer.toJson<double>(pyroDmgBonus),
      'cryoDmgBonus': serializer.toJson<double>(cryoDmgBonus),
    };
  }

  Weapon copyWith(
          {int? id,
          String? key,
          String? name,
          String? type,
          int? rarity,
          int? level,
          int? ascension,
          int? refinement,
          double? baseAtk,
          double? hp,
          double? atk,
          double? def,
          double? hpPercent,
          double? atkPercent,
          double? defPercent,
          double? critRate,
          double? critDmg,
          double? energyRecharge,
          double? elementalMastery,
          double? physicalDmgBonus,
          double? anemoDmgBonus,
          double? geoDmgBonus,
          double? electroDmgBonus,
          double? dendroDmgBonus,
          double? hydroDmgBonus,
          double? pyroDmgBonus,
          double? cryoDmgBonus}) =>
      Weapon(
        id: id ?? this.id,
        key: key ?? this.key,
        name: name ?? this.name,
        type: type ?? this.type,
        rarity: rarity ?? this.rarity,
        level: level ?? this.level,
        ascension: ascension ?? this.ascension,
        refinement: refinement ?? this.refinement,
        baseAtk: baseAtk ?? this.baseAtk,
        hp: hp ?? this.hp,
        atk: atk ?? this.atk,
        def: def ?? this.def,
        hpPercent: hpPercent ?? this.hpPercent,
        atkPercent: atkPercent ?? this.atkPercent,
        defPercent: defPercent ?? this.defPercent,
        critRate: critRate ?? this.critRate,
        critDmg: critDmg ?? this.critDmg,
        energyRecharge: energyRecharge ?? this.energyRecharge,
        elementalMastery: elementalMastery ?? this.elementalMastery,
        physicalDmgBonus: physicalDmgBonus ?? this.physicalDmgBonus,
        anemoDmgBonus: anemoDmgBonus ?? this.anemoDmgBonus,
        geoDmgBonus: geoDmgBonus ?? this.geoDmgBonus,
        electroDmgBonus: electroDmgBonus ?? this.electroDmgBonus,
        dendroDmgBonus: dendroDmgBonus ?? this.dendroDmgBonus,
        hydroDmgBonus: hydroDmgBonus ?? this.hydroDmgBonus,
        pyroDmgBonus: pyroDmgBonus ?? this.pyroDmgBonus,
        cryoDmgBonus: cryoDmgBonus ?? this.cryoDmgBonus,
      );
  Weapon copyWithCompanion(WeaponsCompanion data) {
    return Weapon(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      rarity: data.rarity.present ? data.rarity.value : this.rarity,
      level: data.level.present ? data.level.value : this.level,
      ascension: data.ascension.present ? data.ascension.value : this.ascension,
      refinement:
          data.refinement.present ? data.refinement.value : this.refinement,
      baseAtk: data.baseAtk.present ? data.baseAtk.value : this.baseAtk,
      hp: data.hp.present ? data.hp.value : this.hp,
      atk: data.atk.present ? data.atk.value : this.atk,
      def: data.def.present ? data.def.value : this.def,
      hpPercent: data.hpPercent.present ? data.hpPercent.value : this.hpPercent,
      atkPercent:
          data.atkPercent.present ? data.atkPercent.value : this.atkPercent,
      defPercent:
          data.defPercent.present ? data.defPercent.value : this.defPercent,
      critRate: data.critRate.present ? data.critRate.value : this.critRate,
      critDmg: data.critDmg.present ? data.critDmg.value : this.critDmg,
      energyRecharge: data.energyRecharge.present
          ? data.energyRecharge.value
          : this.energyRecharge,
      elementalMastery: data.elementalMastery.present
          ? data.elementalMastery.value
          : this.elementalMastery,
      physicalDmgBonus: data.physicalDmgBonus.present
          ? data.physicalDmgBonus.value
          : this.physicalDmgBonus,
      anemoDmgBonus: data.anemoDmgBonus.present
          ? data.anemoDmgBonus.value
          : this.anemoDmgBonus,
      geoDmgBonus:
          data.geoDmgBonus.present ? data.geoDmgBonus.value : this.geoDmgBonus,
      electroDmgBonus: data.electroDmgBonus.present
          ? data.electroDmgBonus.value
          : this.electroDmgBonus,
      dendroDmgBonus: data.dendroDmgBonus.present
          ? data.dendroDmgBonus.value
          : this.dendroDmgBonus,
      hydroDmgBonus: data.hydroDmgBonus.present
          ? data.hydroDmgBonus.value
          : this.hydroDmgBonus,
      pyroDmgBonus: data.pyroDmgBonus.present
          ? data.pyroDmgBonus.value
          : this.pyroDmgBonus,
      cryoDmgBonus: data.cryoDmgBonus.present
          ? data.cryoDmgBonus.value
          : this.cryoDmgBonus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Weapon(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('rarity: $rarity, ')
          ..write('level: $level, ')
          ..write('ascension: $ascension, ')
          ..write('refinement: $refinement, ')
          ..write('baseAtk: $baseAtk, ')
          ..write('hp: $hp, ')
          ..write('atk: $atk, ')
          ..write('def: $def, ')
          ..write('hpPercent: $hpPercent, ')
          ..write('atkPercent: $atkPercent, ')
          ..write('defPercent: $defPercent, ')
          ..write('critRate: $critRate, ')
          ..write('critDmg: $critDmg, ')
          ..write('energyRecharge: $energyRecharge, ')
          ..write('elementalMastery: $elementalMastery, ')
          ..write('physicalDmgBonus: $physicalDmgBonus, ')
          ..write('anemoDmgBonus: $anemoDmgBonus, ')
          ..write('geoDmgBonus: $geoDmgBonus, ')
          ..write('electroDmgBonus: $electroDmgBonus, ')
          ..write('dendroDmgBonus: $dendroDmgBonus, ')
          ..write('hydroDmgBonus: $hydroDmgBonus, ')
          ..write('pyroDmgBonus: $pyroDmgBonus, ')
          ..write('cryoDmgBonus: $cryoDmgBonus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        key,
        name,
        type,
        rarity,
        level,
        ascension,
        refinement,
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
        cryoDmgBonus
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Weapon &&
          other.id == this.id &&
          other.key == this.key &&
          other.name == this.name &&
          other.type == this.type &&
          other.rarity == this.rarity &&
          other.level == this.level &&
          other.ascension == this.ascension &&
          other.refinement == this.refinement &&
          other.baseAtk == this.baseAtk &&
          other.hp == this.hp &&
          other.atk == this.atk &&
          other.def == this.def &&
          other.hpPercent == this.hpPercent &&
          other.atkPercent == this.atkPercent &&
          other.defPercent == this.defPercent &&
          other.critRate == this.critRate &&
          other.critDmg == this.critDmg &&
          other.energyRecharge == this.energyRecharge &&
          other.elementalMastery == this.elementalMastery &&
          other.physicalDmgBonus == this.physicalDmgBonus &&
          other.anemoDmgBonus == this.anemoDmgBonus &&
          other.geoDmgBonus == this.geoDmgBonus &&
          other.electroDmgBonus == this.electroDmgBonus &&
          other.dendroDmgBonus == this.dendroDmgBonus &&
          other.hydroDmgBonus == this.hydroDmgBonus &&
          other.pyroDmgBonus == this.pyroDmgBonus &&
          other.cryoDmgBonus == this.cryoDmgBonus);
}

class WeaponsCompanion extends UpdateCompanion<Weapon> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> name;
  final Value<String> type;
  final Value<int> rarity;
  final Value<int> level;
  final Value<int> ascension;
  final Value<int> refinement;
  final Value<double> baseAtk;
  final Value<double> hp;
  final Value<double> atk;
  final Value<double> def;
  final Value<double> hpPercent;
  final Value<double> atkPercent;
  final Value<double> defPercent;
  final Value<double> critRate;
  final Value<double> critDmg;
  final Value<double> energyRecharge;
  final Value<double> elementalMastery;
  final Value<double> physicalDmgBonus;
  final Value<double> anemoDmgBonus;
  final Value<double> geoDmgBonus;
  final Value<double> electroDmgBonus;
  final Value<double> dendroDmgBonus;
  final Value<double> hydroDmgBonus;
  final Value<double> pyroDmgBonus;
  final Value<double> cryoDmgBonus;
  const WeaponsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.rarity = const Value.absent(),
    this.level = const Value.absent(),
    this.ascension = const Value.absent(),
    this.refinement = const Value.absent(),
    this.baseAtk = const Value.absent(),
    this.hp = const Value.absent(),
    this.atk = const Value.absent(),
    this.def = const Value.absent(),
    this.hpPercent = const Value.absent(),
    this.atkPercent = const Value.absent(),
    this.defPercent = const Value.absent(),
    this.critRate = const Value.absent(),
    this.critDmg = const Value.absent(),
    this.energyRecharge = const Value.absent(),
    this.elementalMastery = const Value.absent(),
    this.physicalDmgBonus = const Value.absent(),
    this.anemoDmgBonus = const Value.absent(),
    this.geoDmgBonus = const Value.absent(),
    this.electroDmgBonus = const Value.absent(),
    this.dendroDmgBonus = const Value.absent(),
    this.hydroDmgBonus = const Value.absent(),
    this.pyroDmgBonus = const Value.absent(),
    this.cryoDmgBonus = const Value.absent(),
  });
  WeaponsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String name,
    required String type,
    required int rarity,
    required int level,
    required int ascension,
    required int refinement,
    required double baseAtk,
    required double hp,
    required double atk,
    required double def,
    required double hpPercent,
    required double atkPercent,
    required double defPercent,
    required double critRate,
    required double critDmg,
    required double energyRecharge,
    required double elementalMastery,
    required double physicalDmgBonus,
    required double anemoDmgBonus,
    required double geoDmgBonus,
    required double electroDmgBonus,
    required double dendroDmgBonus,
    required double hydroDmgBonus,
    required double pyroDmgBonus,
    required double cryoDmgBonus,
  })  : key = Value(key),
        name = Value(name),
        type = Value(type),
        rarity = Value(rarity),
        level = Value(level),
        ascension = Value(ascension),
        refinement = Value(refinement),
        baseAtk = Value(baseAtk),
        hp = Value(hp),
        atk = Value(atk),
        def = Value(def),
        hpPercent = Value(hpPercent),
        atkPercent = Value(atkPercent),
        defPercent = Value(defPercent),
        critRate = Value(critRate),
        critDmg = Value(critDmg),
        energyRecharge = Value(energyRecharge),
        elementalMastery = Value(elementalMastery),
        physicalDmgBonus = Value(physicalDmgBonus),
        anemoDmgBonus = Value(anemoDmgBonus),
        geoDmgBonus = Value(geoDmgBonus),
        electroDmgBonus = Value(electroDmgBonus),
        dendroDmgBonus = Value(dendroDmgBonus),
        hydroDmgBonus = Value(hydroDmgBonus),
        pyroDmgBonus = Value(pyroDmgBonus),
        cryoDmgBonus = Value(cryoDmgBonus);
  static Insertable<Weapon> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? name,
    Expression<String>? type,
    Expression<int>? rarity,
    Expression<int>? level,
    Expression<int>? ascension,
    Expression<int>? refinement,
    Expression<double>? baseAtk,
    Expression<double>? hp,
    Expression<double>? atk,
    Expression<double>? def,
    Expression<double>? hpPercent,
    Expression<double>? atkPercent,
    Expression<double>? defPercent,
    Expression<double>? critRate,
    Expression<double>? critDmg,
    Expression<double>? energyRecharge,
    Expression<double>? elementalMastery,
    Expression<double>? physicalDmgBonus,
    Expression<double>? anemoDmgBonus,
    Expression<double>? geoDmgBonus,
    Expression<double>? electroDmgBonus,
    Expression<double>? dendroDmgBonus,
    Expression<double>? hydroDmgBonus,
    Expression<double>? pyroDmgBonus,
    Expression<double>? cryoDmgBonus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (rarity != null) 'rarity': rarity,
      if (level != null) 'level': level,
      if (ascension != null) 'ascension': ascension,
      if (refinement != null) 'refinement': refinement,
      if (baseAtk != null) 'base_atk': baseAtk,
      if (hp != null) 'hp': hp,
      if (atk != null) 'atk': atk,
      if (def != null) 'def': def,
      if (hpPercent != null) 'hp_percent': hpPercent,
      if (atkPercent != null) 'atk_percent': atkPercent,
      if (defPercent != null) 'def_percent': defPercent,
      if (critRate != null) 'crit_rate': critRate,
      if (critDmg != null) 'crit_dmg': critDmg,
      if (energyRecharge != null) 'energy_recharge': energyRecharge,
      if (elementalMastery != null) 'elemental_mastery': elementalMastery,
      if (physicalDmgBonus != null) 'physical_dmg_bonus': physicalDmgBonus,
      if (anemoDmgBonus != null) 'anemo_dmg_bonus': anemoDmgBonus,
      if (geoDmgBonus != null) 'geo_dmg_bonus': geoDmgBonus,
      if (electroDmgBonus != null) 'electro_dmg_bonus': electroDmgBonus,
      if (dendroDmgBonus != null) 'dendro_dmg_bonus': dendroDmgBonus,
      if (hydroDmgBonus != null) 'hydro_dmg_bonus': hydroDmgBonus,
      if (pyroDmgBonus != null) 'pyro_dmg_bonus': pyroDmgBonus,
      if (cryoDmgBonus != null) 'cryo_dmg_bonus': cryoDmgBonus,
    });
  }

  WeaponsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? name,
      Value<String>? type,
      Value<int>? rarity,
      Value<int>? level,
      Value<int>? ascension,
      Value<int>? refinement,
      Value<double>? baseAtk,
      Value<double>? hp,
      Value<double>? atk,
      Value<double>? def,
      Value<double>? hpPercent,
      Value<double>? atkPercent,
      Value<double>? defPercent,
      Value<double>? critRate,
      Value<double>? critDmg,
      Value<double>? energyRecharge,
      Value<double>? elementalMastery,
      Value<double>? physicalDmgBonus,
      Value<double>? anemoDmgBonus,
      Value<double>? geoDmgBonus,
      Value<double>? electroDmgBonus,
      Value<double>? dendroDmgBonus,
      Value<double>? hydroDmgBonus,
      Value<double>? pyroDmgBonus,
      Value<double>? cryoDmgBonus}) {
    return WeaponsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      type: type ?? this.type,
      rarity: rarity ?? this.rarity,
      level: level ?? this.level,
      ascension: ascension ?? this.ascension,
      refinement: refinement ?? this.refinement,
      baseAtk: baseAtk ?? this.baseAtk,
      hp: hp ?? this.hp,
      atk: atk ?? this.atk,
      def: def ?? this.def,
      hpPercent: hpPercent ?? this.hpPercent,
      atkPercent: atkPercent ?? this.atkPercent,
      defPercent: defPercent ?? this.defPercent,
      critRate: critRate ?? this.critRate,
      critDmg: critDmg ?? this.critDmg,
      energyRecharge: energyRecharge ?? this.energyRecharge,
      elementalMastery: elementalMastery ?? this.elementalMastery,
      physicalDmgBonus: physicalDmgBonus ?? this.physicalDmgBonus,
      anemoDmgBonus: anemoDmgBonus ?? this.anemoDmgBonus,
      geoDmgBonus: geoDmgBonus ?? this.geoDmgBonus,
      electroDmgBonus: electroDmgBonus ?? this.electroDmgBonus,
      dendroDmgBonus: dendroDmgBonus ?? this.dendroDmgBonus,
      hydroDmgBonus: hydroDmgBonus ?? this.hydroDmgBonus,
      pyroDmgBonus: pyroDmgBonus ?? this.pyroDmgBonus,
      cryoDmgBonus: cryoDmgBonus ?? this.cryoDmgBonus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rarity.present) {
      map['rarity'] = Variable<int>(rarity.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (ascension.present) {
      map['ascension'] = Variable<int>(ascension.value);
    }
    if (refinement.present) {
      map['refinement'] = Variable<int>(refinement.value);
    }
    if (baseAtk.present) {
      map['base_atk'] = Variable<double>(baseAtk.value);
    }
    if (hp.present) {
      map['hp'] = Variable<double>(hp.value);
    }
    if (atk.present) {
      map['atk'] = Variable<double>(atk.value);
    }
    if (def.present) {
      map['def'] = Variable<double>(def.value);
    }
    if (hpPercent.present) {
      map['hp_percent'] = Variable<double>(hpPercent.value);
    }
    if (atkPercent.present) {
      map['atk_percent'] = Variable<double>(atkPercent.value);
    }
    if (defPercent.present) {
      map['def_percent'] = Variable<double>(defPercent.value);
    }
    if (critRate.present) {
      map['crit_rate'] = Variable<double>(critRate.value);
    }
    if (critDmg.present) {
      map['crit_dmg'] = Variable<double>(critDmg.value);
    }
    if (energyRecharge.present) {
      map['energy_recharge'] = Variable<double>(energyRecharge.value);
    }
    if (elementalMastery.present) {
      map['elemental_mastery'] = Variable<double>(elementalMastery.value);
    }
    if (physicalDmgBonus.present) {
      map['physical_dmg_bonus'] = Variable<double>(physicalDmgBonus.value);
    }
    if (anemoDmgBonus.present) {
      map['anemo_dmg_bonus'] = Variable<double>(anemoDmgBonus.value);
    }
    if (geoDmgBonus.present) {
      map['geo_dmg_bonus'] = Variable<double>(geoDmgBonus.value);
    }
    if (electroDmgBonus.present) {
      map['electro_dmg_bonus'] = Variable<double>(electroDmgBonus.value);
    }
    if (dendroDmgBonus.present) {
      map['dendro_dmg_bonus'] = Variable<double>(dendroDmgBonus.value);
    }
    if (hydroDmgBonus.present) {
      map['hydro_dmg_bonus'] = Variable<double>(hydroDmgBonus.value);
    }
    if (pyroDmgBonus.present) {
      map['pyro_dmg_bonus'] = Variable<double>(pyroDmgBonus.value);
    }
    if (cryoDmgBonus.present) {
      map['cryo_dmg_bonus'] = Variable<double>(cryoDmgBonus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeaponsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('rarity: $rarity, ')
          ..write('level: $level, ')
          ..write('ascension: $ascension, ')
          ..write('refinement: $refinement, ')
          ..write('baseAtk: $baseAtk, ')
          ..write('hp: $hp, ')
          ..write('atk: $atk, ')
          ..write('def: $def, ')
          ..write('hpPercent: $hpPercent, ')
          ..write('atkPercent: $atkPercent, ')
          ..write('defPercent: $defPercent, ')
          ..write('critRate: $critRate, ')
          ..write('critDmg: $critDmg, ')
          ..write('energyRecharge: $energyRecharge, ')
          ..write('elementalMastery: $elementalMastery, ')
          ..write('physicalDmgBonus: $physicalDmgBonus, ')
          ..write('anemoDmgBonus: $anemoDmgBonus, ')
          ..write('geoDmgBonus: $geoDmgBonus, ')
          ..write('electroDmgBonus: $electroDmgBonus, ')
          ..write('dendroDmgBonus: $dendroDmgBonus, ')
          ..write('hydroDmgBonus: $hydroDmgBonus, ')
          ..write('pyroDmgBonus: $pyroDmgBonus, ')
          ..write('cryoDmgBonus: $cryoDmgBonus')
          ..write(')'))
        .toString();
  }
}

class $CharactersTable extends Characters
    with TableInfo<$CharactersTable, Character> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharactersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _elementMeta =
      const VerificationMeta('element');
  @override
  late final GeneratedColumn<String> element = GeneratedColumn<String>(
      'element', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rarityMeta = const VerificationMeta('rarity');
  @override
  late final GeneratedColumn<int> rarity = GeneratedColumn<int>(
      'rarity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _constellationMeta =
      const VerificationMeta('constellation');
  @override
  late final GeneratedColumn<int> constellation = GeneratedColumn<int>(
      'constellation', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _weaponIdMeta =
      const VerificationMeta('weaponId');
  @override
  late final GeneratedColumn<int> weaponId = GeneratedColumn<int>(
      'weapon_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES weapons (id)'));
  static const VerificationMeta _friendshipMeta =
      const VerificationMeta('friendship');
  @override
  late final GeneratedColumn<int> friendship = GeneratedColumn<int>(
      'friendship', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ascensionMeta =
      const VerificationMeta('ascension');
  @override
  late final GeneratedColumn<int> ascension = GeneratedColumn<int>(
      'ascension', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hpMeta = const VerificationMeta('hp');
  @override
  late final GeneratedColumn<double> hp = GeneratedColumn<double>(
      'hp', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _atkMeta = const VerificationMeta('atk');
  @override
  late final GeneratedColumn<double> atk = GeneratedColumn<double>(
      'atk', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _defMeta = const VerificationMeta('def');
  @override
  late final GeneratedColumn<double> def = GeneratedColumn<double>(
      'def', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _critRateMeta =
      const VerificationMeta('critRate');
  @override
  late final GeneratedColumn<double> critRate = GeneratedColumn<double>(
      'crit_rate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _critDmgMeta =
      const VerificationMeta('critDmg');
  @override
  late final GeneratedColumn<double> critDmg = GeneratedColumn<double>(
      'crit_dmg', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _energyRechargeMeta =
      const VerificationMeta('energyRecharge');
  @override
  late final GeneratedColumn<double> energyRecharge = GeneratedColumn<double>(
      'energy_recharge', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _elementalMasteryMeta =
      const VerificationMeta('elementalMastery');
  @override
  late final GeneratedColumn<double> elementalMastery = GeneratedColumn<double>(
      'elemental_mastery', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _physicalDmgBonusMeta =
      const VerificationMeta('physicalDmgBonus');
  @override
  late final GeneratedColumn<double> physicalDmgBonus = GeneratedColumn<double>(
      'physical_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _anemoDmgBonusMeta =
      const VerificationMeta('anemoDmgBonus');
  @override
  late final GeneratedColumn<double> anemoDmgBonus = GeneratedColumn<double>(
      'anemo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _geoDmgBonusMeta =
      const VerificationMeta('geoDmgBonus');
  @override
  late final GeneratedColumn<double> geoDmgBonus = GeneratedColumn<double>(
      'geo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _electroDmgBonusMeta =
      const VerificationMeta('electroDmgBonus');
  @override
  late final GeneratedColumn<double> electroDmgBonus = GeneratedColumn<double>(
      'electro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dendroDmgBonusMeta =
      const VerificationMeta('dendroDmgBonus');
  @override
  late final GeneratedColumn<double> dendroDmgBonus = GeneratedColumn<double>(
      'dendro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _hydroDmgBonusMeta =
      const VerificationMeta('hydroDmgBonus');
  @override
  late final GeneratedColumn<double> hydroDmgBonus = GeneratedColumn<double>(
      'hydro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _pyroDmgBonusMeta =
      const VerificationMeta('pyroDmgBonus');
  @override
  late final GeneratedColumn<double> pyroDmgBonus = GeneratedColumn<double>(
      'pyro_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _cryoDmgBonusMeta =
      const VerificationMeta('cryoDmgBonus');
  @override
  late final GeneratedColumn<double> cryoDmgBonus = GeneratedColumn<double>(
      'cryo_dmg_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _healingBonusMeta =
      const VerificationMeta('healingBonus');
  @override
  late final GeneratedColumn<double> healingBonus = GeneratedColumn<double>(
      'healing_bonus', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _autoTalentMeta =
      const VerificationMeta('autoTalent');
  @override
  late final GeneratedColumn<int> autoTalent = GeneratedColumn<int>(
      'auto_talent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _skillTalentMeta =
      const VerificationMeta('skillTalent');
  @override
  late final GeneratedColumn<int> skillTalent = GeneratedColumn<int>(
      'skill_talent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _burstTalentMeta =
      const VerificationMeta('burstTalent');
  @override
  late final GeneratedColumn<int> burstTalent = GeneratedColumn<int>(
      'burst_talent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        key,
        name,
        element,
        rarity,
        level,
        constellation,
        weaponId,
        friendship,
        ascension,
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
        autoTalent,
        skillTalent,
        burstTalent
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'characters';
  @override
  VerificationContext validateIntegrity(Insertable<Character> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('element')) {
      context.handle(_elementMeta,
          element.isAcceptableOrUnknown(data['element']!, _elementMeta));
    } else if (isInserting) {
      context.missing(_elementMeta);
    }
    if (data.containsKey('rarity')) {
      context.handle(_rarityMeta,
          rarity.isAcceptableOrUnknown(data['rarity']!, _rarityMeta));
    } else if (isInserting) {
      context.missing(_rarityMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('constellation')) {
      context.handle(
          _constellationMeta,
          constellation.isAcceptableOrUnknown(
              data['constellation']!, _constellationMeta));
    } else if (isInserting) {
      context.missing(_constellationMeta);
    }
    if (data.containsKey('weapon_id')) {
      context.handle(_weaponIdMeta,
          weaponId.isAcceptableOrUnknown(data['weapon_id']!, _weaponIdMeta));
    } else if (isInserting) {
      context.missing(_weaponIdMeta);
    }
    if (data.containsKey('friendship')) {
      context.handle(
          _friendshipMeta,
          friendship.isAcceptableOrUnknown(
              data['friendship']!, _friendshipMeta));
    } else if (isInserting) {
      context.missing(_friendshipMeta);
    }
    if (data.containsKey('ascension')) {
      context.handle(_ascensionMeta,
          ascension.isAcceptableOrUnknown(data['ascension']!, _ascensionMeta));
    } else if (isInserting) {
      context.missing(_ascensionMeta);
    }
    if (data.containsKey('hp')) {
      context.handle(_hpMeta, hp.isAcceptableOrUnknown(data['hp']!, _hpMeta));
    } else if (isInserting) {
      context.missing(_hpMeta);
    }
    if (data.containsKey('atk')) {
      context.handle(
          _atkMeta, atk.isAcceptableOrUnknown(data['atk']!, _atkMeta));
    } else if (isInserting) {
      context.missing(_atkMeta);
    }
    if (data.containsKey('def')) {
      context.handle(
          _defMeta, def.isAcceptableOrUnknown(data['def']!, _defMeta));
    } else if (isInserting) {
      context.missing(_defMeta);
    }
    if (data.containsKey('crit_rate')) {
      context.handle(_critRateMeta,
          critRate.isAcceptableOrUnknown(data['crit_rate']!, _critRateMeta));
    } else if (isInserting) {
      context.missing(_critRateMeta);
    }
    if (data.containsKey('crit_dmg')) {
      context.handle(_critDmgMeta,
          critDmg.isAcceptableOrUnknown(data['crit_dmg']!, _critDmgMeta));
    } else if (isInserting) {
      context.missing(_critDmgMeta);
    }
    if (data.containsKey('energy_recharge')) {
      context.handle(
          _energyRechargeMeta,
          energyRecharge.isAcceptableOrUnknown(
              data['energy_recharge']!, _energyRechargeMeta));
    } else if (isInserting) {
      context.missing(_energyRechargeMeta);
    }
    if (data.containsKey('elemental_mastery')) {
      context.handle(
          _elementalMasteryMeta,
          elementalMastery.isAcceptableOrUnknown(
              data['elemental_mastery']!, _elementalMasteryMeta));
    } else if (isInserting) {
      context.missing(_elementalMasteryMeta);
    }
    if (data.containsKey('physical_dmg_bonus')) {
      context.handle(
          _physicalDmgBonusMeta,
          physicalDmgBonus.isAcceptableOrUnknown(
              data['physical_dmg_bonus']!, _physicalDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_physicalDmgBonusMeta);
    }
    if (data.containsKey('anemo_dmg_bonus')) {
      context.handle(
          _anemoDmgBonusMeta,
          anemoDmgBonus.isAcceptableOrUnknown(
              data['anemo_dmg_bonus']!, _anemoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_anemoDmgBonusMeta);
    }
    if (data.containsKey('geo_dmg_bonus')) {
      context.handle(
          _geoDmgBonusMeta,
          geoDmgBonus.isAcceptableOrUnknown(
              data['geo_dmg_bonus']!, _geoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_geoDmgBonusMeta);
    }
    if (data.containsKey('electro_dmg_bonus')) {
      context.handle(
          _electroDmgBonusMeta,
          electroDmgBonus.isAcceptableOrUnknown(
              data['electro_dmg_bonus']!, _electroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_electroDmgBonusMeta);
    }
    if (data.containsKey('dendro_dmg_bonus')) {
      context.handle(
          _dendroDmgBonusMeta,
          dendroDmgBonus.isAcceptableOrUnknown(
              data['dendro_dmg_bonus']!, _dendroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_dendroDmgBonusMeta);
    }
    if (data.containsKey('hydro_dmg_bonus')) {
      context.handle(
          _hydroDmgBonusMeta,
          hydroDmgBonus.isAcceptableOrUnknown(
              data['hydro_dmg_bonus']!, _hydroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_hydroDmgBonusMeta);
    }
    if (data.containsKey('pyro_dmg_bonus')) {
      context.handle(
          _pyroDmgBonusMeta,
          pyroDmgBonus.isAcceptableOrUnknown(
              data['pyro_dmg_bonus']!, _pyroDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_pyroDmgBonusMeta);
    }
    if (data.containsKey('cryo_dmg_bonus')) {
      context.handle(
          _cryoDmgBonusMeta,
          cryoDmgBonus.isAcceptableOrUnknown(
              data['cryo_dmg_bonus']!, _cryoDmgBonusMeta));
    } else if (isInserting) {
      context.missing(_cryoDmgBonusMeta);
    }
    if (data.containsKey('healing_bonus')) {
      context.handle(
          _healingBonusMeta,
          healingBonus.isAcceptableOrUnknown(
              data['healing_bonus']!, _healingBonusMeta));
    } else if (isInserting) {
      context.missing(_healingBonusMeta);
    }
    if (data.containsKey('auto_talent')) {
      context.handle(
          _autoTalentMeta,
          autoTalent.isAcceptableOrUnknown(
              data['auto_talent']!, _autoTalentMeta));
    } else if (isInserting) {
      context.missing(_autoTalentMeta);
    }
    if (data.containsKey('skill_talent')) {
      context.handle(
          _skillTalentMeta,
          skillTalent.isAcceptableOrUnknown(
              data['skill_talent']!, _skillTalentMeta));
    } else if (isInserting) {
      context.missing(_skillTalentMeta);
    }
    if (data.containsKey('burst_talent')) {
      context.handle(
          _burstTalentMeta,
          burstTalent.isAcceptableOrUnknown(
              data['burst_talent']!, _burstTalentMeta));
    } else if (isInserting) {
      context.missing(_burstTalentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Character map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Character(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      element: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}element'])!,
      rarity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rarity'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      constellation: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}constellation'])!,
      weaponId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weapon_id'])!,
      friendship: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}friendship'])!,
      ascension: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ascension'])!,
      hp: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}hp'])!,
      atk: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}atk'])!,
      def: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}def'])!,
      critRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}crit_rate'])!,
      critDmg: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}crit_dmg'])!,
      energyRecharge: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}energy_recharge'])!,
      elementalMastery: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}elemental_mastery'])!,
      physicalDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}physical_dmg_bonus'])!,
      anemoDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}anemo_dmg_bonus'])!,
      geoDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}geo_dmg_bonus'])!,
      electroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}electro_dmg_bonus'])!,
      dendroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}dendro_dmg_bonus'])!,
      hydroDmgBonus: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}hydro_dmg_bonus'])!,
      pyroDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}pyro_dmg_bonus'])!,
      cryoDmgBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cryo_dmg_bonus'])!,
      healingBonus: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}healing_bonus'])!,
      autoTalent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}auto_talent'])!,
      skillTalent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}skill_talent'])!,
      burstTalent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}burst_talent'])!,
    );
  }

  @override
  $CharactersTable createAlias(String alias) {
    return $CharactersTable(attachedDatabase, alias);
  }
}

class Character extends DataClass implements Insertable<Character> {
  final int id;
  final String key;
  final String name;
  final String element;
  final int rarity;
  final int level;
  final int constellation;
  final int weaponId;
  final int friendship;
  final int ascension;
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
  final int autoTalent;
  final int skillTalent;
  final int burstTalent;
  const Character(
      {required this.id,
      required this.key,
      required this.name,
      required this.element,
      required this.rarity,
      required this.level,
      required this.constellation,
      required this.weaponId,
      required this.friendship,
      required this.ascension,
      required this.hp,
      required this.atk,
      required this.def,
      required this.critRate,
      required this.critDmg,
      required this.energyRecharge,
      required this.elementalMastery,
      required this.physicalDmgBonus,
      required this.anemoDmgBonus,
      required this.geoDmgBonus,
      required this.electroDmgBonus,
      required this.dendroDmgBonus,
      required this.hydroDmgBonus,
      required this.pyroDmgBonus,
      required this.cryoDmgBonus,
      required this.healingBonus,
      required this.autoTalent,
      required this.skillTalent,
      required this.burstTalent});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['name'] = Variable<String>(name);
    map['element'] = Variable<String>(element);
    map['rarity'] = Variable<int>(rarity);
    map['level'] = Variable<int>(level);
    map['constellation'] = Variable<int>(constellation);
    map['weapon_id'] = Variable<int>(weaponId);
    map['friendship'] = Variable<int>(friendship);
    map['ascension'] = Variable<int>(ascension);
    map['hp'] = Variable<double>(hp);
    map['atk'] = Variable<double>(atk);
    map['def'] = Variable<double>(def);
    map['crit_rate'] = Variable<double>(critRate);
    map['crit_dmg'] = Variable<double>(critDmg);
    map['energy_recharge'] = Variable<double>(energyRecharge);
    map['elemental_mastery'] = Variable<double>(elementalMastery);
    map['physical_dmg_bonus'] = Variable<double>(physicalDmgBonus);
    map['anemo_dmg_bonus'] = Variable<double>(anemoDmgBonus);
    map['geo_dmg_bonus'] = Variable<double>(geoDmgBonus);
    map['electro_dmg_bonus'] = Variable<double>(electroDmgBonus);
    map['dendro_dmg_bonus'] = Variable<double>(dendroDmgBonus);
    map['hydro_dmg_bonus'] = Variable<double>(hydroDmgBonus);
    map['pyro_dmg_bonus'] = Variable<double>(pyroDmgBonus);
    map['cryo_dmg_bonus'] = Variable<double>(cryoDmgBonus);
    map['healing_bonus'] = Variable<double>(healingBonus);
    map['auto_talent'] = Variable<int>(autoTalent);
    map['skill_talent'] = Variable<int>(skillTalent);
    map['burst_talent'] = Variable<int>(burstTalent);
    return map;
  }

  CharactersCompanion toCompanion(bool nullToAbsent) {
    return CharactersCompanion(
      id: Value(id),
      key: Value(key),
      name: Value(name),
      element: Value(element),
      rarity: Value(rarity),
      level: Value(level),
      constellation: Value(constellation),
      weaponId: Value(weaponId),
      friendship: Value(friendship),
      ascension: Value(ascension),
      hp: Value(hp),
      atk: Value(atk),
      def: Value(def),
      critRate: Value(critRate),
      critDmg: Value(critDmg),
      energyRecharge: Value(energyRecharge),
      elementalMastery: Value(elementalMastery),
      physicalDmgBonus: Value(physicalDmgBonus),
      anemoDmgBonus: Value(anemoDmgBonus),
      geoDmgBonus: Value(geoDmgBonus),
      electroDmgBonus: Value(electroDmgBonus),
      dendroDmgBonus: Value(dendroDmgBonus),
      hydroDmgBonus: Value(hydroDmgBonus),
      pyroDmgBonus: Value(pyroDmgBonus),
      cryoDmgBonus: Value(cryoDmgBonus),
      healingBonus: Value(healingBonus),
      autoTalent: Value(autoTalent),
      skillTalent: Value(skillTalent),
      burstTalent: Value(burstTalent),
    );
  }

  factory Character.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Character(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      name: serializer.fromJson<String>(json['name']),
      element: serializer.fromJson<String>(json['element']),
      rarity: serializer.fromJson<int>(json['rarity']),
      level: serializer.fromJson<int>(json['level']),
      constellation: serializer.fromJson<int>(json['constellation']),
      weaponId: serializer.fromJson<int>(json['weaponId']),
      friendship: serializer.fromJson<int>(json['friendship']),
      ascension: serializer.fromJson<int>(json['ascension']),
      hp: serializer.fromJson<double>(json['hp']),
      atk: serializer.fromJson<double>(json['atk']),
      def: serializer.fromJson<double>(json['def']),
      critRate: serializer.fromJson<double>(json['critRate']),
      critDmg: serializer.fromJson<double>(json['critDmg']),
      energyRecharge: serializer.fromJson<double>(json['energyRecharge']),
      elementalMastery: serializer.fromJson<double>(json['elementalMastery']),
      physicalDmgBonus: serializer.fromJson<double>(json['physicalDmgBonus']),
      anemoDmgBonus: serializer.fromJson<double>(json['anemoDmgBonus']),
      geoDmgBonus: serializer.fromJson<double>(json['geoDmgBonus']),
      electroDmgBonus: serializer.fromJson<double>(json['electroDmgBonus']),
      dendroDmgBonus: serializer.fromJson<double>(json['dendroDmgBonus']),
      hydroDmgBonus: serializer.fromJson<double>(json['hydroDmgBonus']),
      pyroDmgBonus: serializer.fromJson<double>(json['pyroDmgBonus']),
      cryoDmgBonus: serializer.fromJson<double>(json['cryoDmgBonus']),
      healingBonus: serializer.fromJson<double>(json['healingBonus']),
      autoTalent: serializer.fromJson<int>(json['autoTalent']),
      skillTalent: serializer.fromJson<int>(json['skillTalent']),
      burstTalent: serializer.fromJson<int>(json['burstTalent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'name': serializer.toJson<String>(name),
      'element': serializer.toJson<String>(element),
      'rarity': serializer.toJson<int>(rarity),
      'level': serializer.toJson<int>(level),
      'constellation': serializer.toJson<int>(constellation),
      'weaponId': serializer.toJson<int>(weaponId),
      'friendship': serializer.toJson<int>(friendship),
      'ascension': serializer.toJson<int>(ascension),
      'hp': serializer.toJson<double>(hp),
      'atk': serializer.toJson<double>(atk),
      'def': serializer.toJson<double>(def),
      'critRate': serializer.toJson<double>(critRate),
      'critDmg': serializer.toJson<double>(critDmg),
      'energyRecharge': serializer.toJson<double>(energyRecharge),
      'elementalMastery': serializer.toJson<double>(elementalMastery),
      'physicalDmgBonus': serializer.toJson<double>(physicalDmgBonus),
      'anemoDmgBonus': serializer.toJson<double>(anemoDmgBonus),
      'geoDmgBonus': serializer.toJson<double>(geoDmgBonus),
      'electroDmgBonus': serializer.toJson<double>(electroDmgBonus),
      'dendroDmgBonus': serializer.toJson<double>(dendroDmgBonus),
      'hydroDmgBonus': serializer.toJson<double>(hydroDmgBonus),
      'pyroDmgBonus': serializer.toJson<double>(pyroDmgBonus),
      'cryoDmgBonus': serializer.toJson<double>(cryoDmgBonus),
      'healingBonus': serializer.toJson<double>(healingBonus),
      'autoTalent': serializer.toJson<int>(autoTalent),
      'skillTalent': serializer.toJson<int>(skillTalent),
      'burstTalent': serializer.toJson<int>(burstTalent),
    };
  }

  Character copyWith(
          {int? id,
          String? key,
          String? name,
          String? element,
          int? rarity,
          int? level,
          int? constellation,
          int? weaponId,
          int? friendship,
          int? ascension,
          double? hp,
          double? atk,
          double? def,
          double? critRate,
          double? critDmg,
          double? energyRecharge,
          double? elementalMastery,
          double? physicalDmgBonus,
          double? anemoDmgBonus,
          double? geoDmgBonus,
          double? electroDmgBonus,
          double? dendroDmgBonus,
          double? hydroDmgBonus,
          double? pyroDmgBonus,
          double? cryoDmgBonus,
          double? healingBonus,
          int? autoTalent,
          int? skillTalent,
          int? burstTalent}) =>
      Character(
        id: id ?? this.id,
        key: key ?? this.key,
        name: name ?? this.name,
        element: element ?? this.element,
        rarity: rarity ?? this.rarity,
        level: level ?? this.level,
        constellation: constellation ?? this.constellation,
        weaponId: weaponId ?? this.weaponId,
        friendship: friendship ?? this.friendship,
        ascension: ascension ?? this.ascension,
        hp: hp ?? this.hp,
        atk: atk ?? this.atk,
        def: def ?? this.def,
        critRate: critRate ?? this.critRate,
        critDmg: critDmg ?? this.critDmg,
        energyRecharge: energyRecharge ?? this.energyRecharge,
        elementalMastery: elementalMastery ?? this.elementalMastery,
        physicalDmgBonus: physicalDmgBonus ?? this.physicalDmgBonus,
        anemoDmgBonus: anemoDmgBonus ?? this.anemoDmgBonus,
        geoDmgBonus: geoDmgBonus ?? this.geoDmgBonus,
        electroDmgBonus: electroDmgBonus ?? this.electroDmgBonus,
        dendroDmgBonus: dendroDmgBonus ?? this.dendroDmgBonus,
        hydroDmgBonus: hydroDmgBonus ?? this.hydroDmgBonus,
        pyroDmgBonus: pyroDmgBonus ?? this.pyroDmgBonus,
        cryoDmgBonus: cryoDmgBonus ?? this.cryoDmgBonus,
        healingBonus: healingBonus ?? this.healingBonus,
        autoTalent: autoTalent ?? this.autoTalent,
        skillTalent: skillTalent ?? this.skillTalent,
        burstTalent: burstTalent ?? this.burstTalent,
      );
  Character copyWithCompanion(CharactersCompanion data) {
    return Character(
      id: data.id.present ? data.id.value : this.id,
      key: data.key.present ? data.key.value : this.key,
      name: data.name.present ? data.name.value : this.name,
      element: data.element.present ? data.element.value : this.element,
      rarity: data.rarity.present ? data.rarity.value : this.rarity,
      level: data.level.present ? data.level.value : this.level,
      constellation: data.constellation.present
          ? data.constellation.value
          : this.constellation,
      weaponId: data.weaponId.present ? data.weaponId.value : this.weaponId,
      friendship:
          data.friendship.present ? data.friendship.value : this.friendship,
      ascension: data.ascension.present ? data.ascension.value : this.ascension,
      hp: data.hp.present ? data.hp.value : this.hp,
      atk: data.atk.present ? data.atk.value : this.atk,
      def: data.def.present ? data.def.value : this.def,
      critRate: data.critRate.present ? data.critRate.value : this.critRate,
      critDmg: data.critDmg.present ? data.critDmg.value : this.critDmg,
      energyRecharge: data.energyRecharge.present
          ? data.energyRecharge.value
          : this.energyRecharge,
      elementalMastery: data.elementalMastery.present
          ? data.elementalMastery.value
          : this.elementalMastery,
      physicalDmgBonus: data.physicalDmgBonus.present
          ? data.physicalDmgBonus.value
          : this.physicalDmgBonus,
      anemoDmgBonus: data.anemoDmgBonus.present
          ? data.anemoDmgBonus.value
          : this.anemoDmgBonus,
      geoDmgBonus:
          data.geoDmgBonus.present ? data.geoDmgBonus.value : this.geoDmgBonus,
      electroDmgBonus: data.electroDmgBonus.present
          ? data.electroDmgBonus.value
          : this.electroDmgBonus,
      dendroDmgBonus: data.dendroDmgBonus.present
          ? data.dendroDmgBonus.value
          : this.dendroDmgBonus,
      hydroDmgBonus: data.hydroDmgBonus.present
          ? data.hydroDmgBonus.value
          : this.hydroDmgBonus,
      pyroDmgBonus: data.pyroDmgBonus.present
          ? data.pyroDmgBonus.value
          : this.pyroDmgBonus,
      cryoDmgBonus: data.cryoDmgBonus.present
          ? data.cryoDmgBonus.value
          : this.cryoDmgBonus,
      healingBonus: data.healingBonus.present
          ? data.healingBonus.value
          : this.healingBonus,
      autoTalent:
          data.autoTalent.present ? data.autoTalent.value : this.autoTalent,
      skillTalent:
          data.skillTalent.present ? data.skillTalent.value : this.skillTalent,
      burstTalent:
          data.burstTalent.present ? data.burstTalent.value : this.burstTalent,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Character(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('element: $element, ')
          ..write('rarity: $rarity, ')
          ..write('level: $level, ')
          ..write('constellation: $constellation, ')
          ..write('weaponId: $weaponId, ')
          ..write('friendship: $friendship, ')
          ..write('ascension: $ascension, ')
          ..write('hp: $hp, ')
          ..write('atk: $atk, ')
          ..write('def: $def, ')
          ..write('critRate: $critRate, ')
          ..write('critDmg: $critDmg, ')
          ..write('energyRecharge: $energyRecharge, ')
          ..write('elementalMastery: $elementalMastery, ')
          ..write('physicalDmgBonus: $physicalDmgBonus, ')
          ..write('anemoDmgBonus: $anemoDmgBonus, ')
          ..write('geoDmgBonus: $geoDmgBonus, ')
          ..write('electroDmgBonus: $electroDmgBonus, ')
          ..write('dendroDmgBonus: $dendroDmgBonus, ')
          ..write('hydroDmgBonus: $hydroDmgBonus, ')
          ..write('pyroDmgBonus: $pyroDmgBonus, ')
          ..write('cryoDmgBonus: $cryoDmgBonus, ')
          ..write('healingBonus: $healingBonus, ')
          ..write('autoTalent: $autoTalent, ')
          ..write('skillTalent: $skillTalent, ')
          ..write('burstTalent: $burstTalent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        key,
        name,
        element,
        rarity,
        level,
        constellation,
        weaponId,
        friendship,
        ascension,
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
        autoTalent,
        skillTalent,
        burstTalent
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Character &&
          other.id == this.id &&
          other.key == this.key &&
          other.name == this.name &&
          other.element == this.element &&
          other.rarity == this.rarity &&
          other.level == this.level &&
          other.constellation == this.constellation &&
          other.weaponId == this.weaponId &&
          other.friendship == this.friendship &&
          other.ascension == this.ascension &&
          other.hp == this.hp &&
          other.atk == this.atk &&
          other.def == this.def &&
          other.critRate == this.critRate &&
          other.critDmg == this.critDmg &&
          other.energyRecharge == this.energyRecharge &&
          other.elementalMastery == this.elementalMastery &&
          other.physicalDmgBonus == this.physicalDmgBonus &&
          other.anemoDmgBonus == this.anemoDmgBonus &&
          other.geoDmgBonus == this.geoDmgBonus &&
          other.electroDmgBonus == this.electroDmgBonus &&
          other.dendroDmgBonus == this.dendroDmgBonus &&
          other.hydroDmgBonus == this.hydroDmgBonus &&
          other.pyroDmgBonus == this.pyroDmgBonus &&
          other.cryoDmgBonus == this.cryoDmgBonus &&
          other.healingBonus == this.healingBonus &&
          other.autoTalent == this.autoTalent &&
          other.skillTalent == this.skillTalent &&
          other.burstTalent == this.burstTalent);
}

class CharactersCompanion extends UpdateCompanion<Character> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> name;
  final Value<String> element;
  final Value<int> rarity;
  final Value<int> level;
  final Value<int> constellation;
  final Value<int> weaponId;
  final Value<int> friendship;
  final Value<int> ascension;
  final Value<double> hp;
  final Value<double> atk;
  final Value<double> def;
  final Value<double> critRate;
  final Value<double> critDmg;
  final Value<double> energyRecharge;
  final Value<double> elementalMastery;
  final Value<double> physicalDmgBonus;
  final Value<double> anemoDmgBonus;
  final Value<double> geoDmgBonus;
  final Value<double> electroDmgBonus;
  final Value<double> dendroDmgBonus;
  final Value<double> hydroDmgBonus;
  final Value<double> pyroDmgBonus;
  final Value<double> cryoDmgBonus;
  final Value<double> healingBonus;
  final Value<int> autoTalent;
  final Value<int> skillTalent;
  final Value<int> burstTalent;
  const CharactersCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.name = const Value.absent(),
    this.element = const Value.absent(),
    this.rarity = const Value.absent(),
    this.level = const Value.absent(),
    this.constellation = const Value.absent(),
    this.weaponId = const Value.absent(),
    this.friendship = const Value.absent(),
    this.ascension = const Value.absent(),
    this.hp = const Value.absent(),
    this.atk = const Value.absent(),
    this.def = const Value.absent(),
    this.critRate = const Value.absent(),
    this.critDmg = const Value.absent(),
    this.energyRecharge = const Value.absent(),
    this.elementalMastery = const Value.absent(),
    this.physicalDmgBonus = const Value.absent(),
    this.anemoDmgBonus = const Value.absent(),
    this.geoDmgBonus = const Value.absent(),
    this.electroDmgBonus = const Value.absent(),
    this.dendroDmgBonus = const Value.absent(),
    this.hydroDmgBonus = const Value.absent(),
    this.pyroDmgBonus = const Value.absent(),
    this.cryoDmgBonus = const Value.absent(),
    this.healingBonus = const Value.absent(),
    this.autoTalent = const Value.absent(),
    this.skillTalent = const Value.absent(),
    this.burstTalent = const Value.absent(),
  });
  CharactersCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String name,
    required String element,
    required int rarity,
    required int level,
    required int constellation,
    required int weaponId,
    required int friendship,
    required int ascension,
    required double hp,
    required double atk,
    required double def,
    required double critRate,
    required double critDmg,
    required double energyRecharge,
    required double elementalMastery,
    required double physicalDmgBonus,
    required double anemoDmgBonus,
    required double geoDmgBonus,
    required double electroDmgBonus,
    required double dendroDmgBonus,
    required double hydroDmgBonus,
    required double pyroDmgBonus,
    required double cryoDmgBonus,
    required double healingBonus,
    required int autoTalent,
    required int skillTalent,
    required int burstTalent,
  })  : key = Value(key),
        name = Value(name),
        element = Value(element),
        rarity = Value(rarity),
        level = Value(level),
        constellation = Value(constellation),
        weaponId = Value(weaponId),
        friendship = Value(friendship),
        ascension = Value(ascension),
        hp = Value(hp),
        atk = Value(atk),
        def = Value(def),
        critRate = Value(critRate),
        critDmg = Value(critDmg),
        energyRecharge = Value(energyRecharge),
        elementalMastery = Value(elementalMastery),
        physicalDmgBonus = Value(physicalDmgBonus),
        anemoDmgBonus = Value(anemoDmgBonus),
        geoDmgBonus = Value(geoDmgBonus),
        electroDmgBonus = Value(electroDmgBonus),
        dendroDmgBonus = Value(dendroDmgBonus),
        hydroDmgBonus = Value(hydroDmgBonus),
        pyroDmgBonus = Value(pyroDmgBonus),
        cryoDmgBonus = Value(cryoDmgBonus),
        healingBonus = Value(healingBonus),
        autoTalent = Value(autoTalent),
        skillTalent = Value(skillTalent),
        burstTalent = Value(burstTalent);
  static Insertable<Character> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? name,
    Expression<String>? element,
    Expression<int>? rarity,
    Expression<int>? level,
    Expression<int>? constellation,
    Expression<int>? weaponId,
    Expression<int>? friendship,
    Expression<int>? ascension,
    Expression<double>? hp,
    Expression<double>? atk,
    Expression<double>? def,
    Expression<double>? critRate,
    Expression<double>? critDmg,
    Expression<double>? energyRecharge,
    Expression<double>? elementalMastery,
    Expression<double>? physicalDmgBonus,
    Expression<double>? anemoDmgBonus,
    Expression<double>? geoDmgBonus,
    Expression<double>? electroDmgBonus,
    Expression<double>? dendroDmgBonus,
    Expression<double>? hydroDmgBonus,
    Expression<double>? pyroDmgBonus,
    Expression<double>? cryoDmgBonus,
    Expression<double>? healingBonus,
    Expression<int>? autoTalent,
    Expression<int>? skillTalent,
    Expression<int>? burstTalent,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (name != null) 'name': name,
      if (element != null) 'element': element,
      if (rarity != null) 'rarity': rarity,
      if (level != null) 'level': level,
      if (constellation != null) 'constellation': constellation,
      if (weaponId != null) 'weapon_id': weaponId,
      if (friendship != null) 'friendship': friendship,
      if (ascension != null) 'ascension': ascension,
      if (hp != null) 'hp': hp,
      if (atk != null) 'atk': atk,
      if (def != null) 'def': def,
      if (critRate != null) 'crit_rate': critRate,
      if (critDmg != null) 'crit_dmg': critDmg,
      if (energyRecharge != null) 'energy_recharge': energyRecharge,
      if (elementalMastery != null) 'elemental_mastery': elementalMastery,
      if (physicalDmgBonus != null) 'physical_dmg_bonus': physicalDmgBonus,
      if (anemoDmgBonus != null) 'anemo_dmg_bonus': anemoDmgBonus,
      if (geoDmgBonus != null) 'geo_dmg_bonus': geoDmgBonus,
      if (electroDmgBonus != null) 'electro_dmg_bonus': electroDmgBonus,
      if (dendroDmgBonus != null) 'dendro_dmg_bonus': dendroDmgBonus,
      if (hydroDmgBonus != null) 'hydro_dmg_bonus': hydroDmgBonus,
      if (pyroDmgBonus != null) 'pyro_dmg_bonus': pyroDmgBonus,
      if (cryoDmgBonus != null) 'cryo_dmg_bonus': cryoDmgBonus,
      if (healingBonus != null) 'healing_bonus': healingBonus,
      if (autoTalent != null) 'auto_talent': autoTalent,
      if (skillTalent != null) 'skill_talent': skillTalent,
      if (burstTalent != null) 'burst_talent': burstTalent,
    });
  }

  CharactersCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? name,
      Value<String>? element,
      Value<int>? rarity,
      Value<int>? level,
      Value<int>? constellation,
      Value<int>? weaponId,
      Value<int>? friendship,
      Value<int>? ascension,
      Value<double>? hp,
      Value<double>? atk,
      Value<double>? def,
      Value<double>? critRate,
      Value<double>? critDmg,
      Value<double>? energyRecharge,
      Value<double>? elementalMastery,
      Value<double>? physicalDmgBonus,
      Value<double>? anemoDmgBonus,
      Value<double>? geoDmgBonus,
      Value<double>? electroDmgBonus,
      Value<double>? dendroDmgBonus,
      Value<double>? hydroDmgBonus,
      Value<double>? pyroDmgBonus,
      Value<double>? cryoDmgBonus,
      Value<double>? healingBonus,
      Value<int>? autoTalent,
      Value<int>? skillTalent,
      Value<int>? burstTalent}) {
    return CharactersCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      element: element ?? this.element,
      rarity: rarity ?? this.rarity,
      level: level ?? this.level,
      constellation: constellation ?? this.constellation,
      weaponId: weaponId ?? this.weaponId,
      friendship: friendship ?? this.friendship,
      ascension: ascension ?? this.ascension,
      hp: hp ?? this.hp,
      atk: atk ?? this.atk,
      def: def ?? this.def,
      critRate: critRate ?? this.critRate,
      critDmg: critDmg ?? this.critDmg,
      energyRecharge: energyRecharge ?? this.energyRecharge,
      elementalMastery: elementalMastery ?? this.elementalMastery,
      physicalDmgBonus: physicalDmgBonus ?? this.physicalDmgBonus,
      anemoDmgBonus: anemoDmgBonus ?? this.anemoDmgBonus,
      geoDmgBonus: geoDmgBonus ?? this.geoDmgBonus,
      electroDmgBonus: electroDmgBonus ?? this.electroDmgBonus,
      dendroDmgBonus: dendroDmgBonus ?? this.dendroDmgBonus,
      hydroDmgBonus: hydroDmgBonus ?? this.hydroDmgBonus,
      pyroDmgBonus: pyroDmgBonus ?? this.pyroDmgBonus,
      cryoDmgBonus: cryoDmgBonus ?? this.cryoDmgBonus,
      healingBonus: healingBonus ?? this.healingBonus,
      autoTalent: autoTalent ?? this.autoTalent,
      skillTalent: skillTalent ?? this.skillTalent,
      burstTalent: burstTalent ?? this.burstTalent,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (element.present) {
      map['element'] = Variable<String>(element.value);
    }
    if (rarity.present) {
      map['rarity'] = Variable<int>(rarity.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (constellation.present) {
      map['constellation'] = Variable<int>(constellation.value);
    }
    if (weaponId.present) {
      map['weapon_id'] = Variable<int>(weaponId.value);
    }
    if (friendship.present) {
      map['friendship'] = Variable<int>(friendship.value);
    }
    if (ascension.present) {
      map['ascension'] = Variable<int>(ascension.value);
    }
    if (hp.present) {
      map['hp'] = Variable<double>(hp.value);
    }
    if (atk.present) {
      map['atk'] = Variable<double>(atk.value);
    }
    if (def.present) {
      map['def'] = Variable<double>(def.value);
    }
    if (critRate.present) {
      map['crit_rate'] = Variable<double>(critRate.value);
    }
    if (critDmg.present) {
      map['crit_dmg'] = Variable<double>(critDmg.value);
    }
    if (energyRecharge.present) {
      map['energy_recharge'] = Variable<double>(energyRecharge.value);
    }
    if (elementalMastery.present) {
      map['elemental_mastery'] = Variable<double>(elementalMastery.value);
    }
    if (physicalDmgBonus.present) {
      map['physical_dmg_bonus'] = Variable<double>(physicalDmgBonus.value);
    }
    if (anemoDmgBonus.present) {
      map['anemo_dmg_bonus'] = Variable<double>(anemoDmgBonus.value);
    }
    if (geoDmgBonus.present) {
      map['geo_dmg_bonus'] = Variable<double>(geoDmgBonus.value);
    }
    if (electroDmgBonus.present) {
      map['electro_dmg_bonus'] = Variable<double>(electroDmgBonus.value);
    }
    if (dendroDmgBonus.present) {
      map['dendro_dmg_bonus'] = Variable<double>(dendroDmgBonus.value);
    }
    if (hydroDmgBonus.present) {
      map['hydro_dmg_bonus'] = Variable<double>(hydroDmgBonus.value);
    }
    if (pyroDmgBonus.present) {
      map['pyro_dmg_bonus'] = Variable<double>(pyroDmgBonus.value);
    }
    if (cryoDmgBonus.present) {
      map['cryo_dmg_bonus'] = Variable<double>(cryoDmgBonus.value);
    }
    if (healingBonus.present) {
      map['healing_bonus'] = Variable<double>(healingBonus.value);
    }
    if (autoTalent.present) {
      map['auto_talent'] = Variable<int>(autoTalent.value);
    }
    if (skillTalent.present) {
      map['skill_talent'] = Variable<int>(skillTalent.value);
    }
    if (burstTalent.present) {
      map['burst_talent'] = Variable<int>(burstTalent.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharactersCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('name: $name, ')
          ..write('element: $element, ')
          ..write('rarity: $rarity, ')
          ..write('level: $level, ')
          ..write('constellation: $constellation, ')
          ..write('weaponId: $weaponId, ')
          ..write('friendship: $friendship, ')
          ..write('ascension: $ascension, ')
          ..write('hp: $hp, ')
          ..write('atk: $atk, ')
          ..write('def: $def, ')
          ..write('critRate: $critRate, ')
          ..write('critDmg: $critDmg, ')
          ..write('energyRecharge: $energyRecharge, ')
          ..write('elementalMastery: $elementalMastery, ')
          ..write('physicalDmgBonus: $physicalDmgBonus, ')
          ..write('anemoDmgBonus: $anemoDmgBonus, ')
          ..write('geoDmgBonus: $geoDmgBonus, ')
          ..write('electroDmgBonus: $electroDmgBonus, ')
          ..write('dendroDmgBonus: $dendroDmgBonus, ')
          ..write('hydroDmgBonus: $hydroDmgBonus, ')
          ..write('pyroDmgBonus: $pyroDmgBonus, ')
          ..write('cryoDmgBonus: $cryoDmgBonus, ')
          ..write('healingBonus: $healingBonus, ')
          ..write('autoTalent: $autoTalent, ')
          ..write('skillTalent: $skillTalent, ')
          ..write('burstTalent: $burstTalent')
          ..write(')'))
        .toString();
  }
}

class $ArtifactsTable extends Artifacts
    with TableInfo<$ArtifactsTable, Artifact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArtifactsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _setKeyMeta = const VerificationMeta('setKey');
  @override
  late final GeneratedColumn<String> setKey = GeneratedColumn<String>(
      'set_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _slotKeyMeta =
      const VerificationMeta('slotKey');
  @override
  late final GeneratedColumn<String> slotKey = GeneratedColumn<String>(
      'slot_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _rarityMeta = const VerificationMeta('rarity');
  @override
  late final GeneratedColumn<int> rarity = GeneratedColumn<int>(
      'rarity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mainStatKeyMeta =
      const VerificationMeta('mainStatKey');
  @override
  late final GeneratedColumn<String> mainStatKey = GeneratedColumn<String>(
      'main_stat_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mainStatValueMeta =
      const VerificationMeta('mainStatValue');
  @override
  late final GeneratedColumn<double> mainStatValue = GeneratedColumn<double>(
      'main_stat_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lockedMeta = const VerificationMeta('locked');
  @override
  late final GeneratedColumn<bool> locked = GeneratedColumn<bool>(
      'locked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("locked" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, setKey, slotKey, level, rarity, mainStatKey, mainStatValue, locked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'artifacts';
  @override
  VerificationContext validateIntegrity(Insertable<Artifact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('set_key')) {
      context.handle(_setKeyMeta,
          setKey.isAcceptableOrUnknown(data['set_key']!, _setKeyMeta));
    } else if (isInserting) {
      context.missing(_setKeyMeta);
    }
    if (data.containsKey('slot_key')) {
      context.handle(_slotKeyMeta,
          slotKey.isAcceptableOrUnknown(data['slot_key']!, _slotKeyMeta));
    } else if (isInserting) {
      context.missing(_slotKeyMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('rarity')) {
      context.handle(_rarityMeta,
          rarity.isAcceptableOrUnknown(data['rarity']!, _rarityMeta));
    } else if (isInserting) {
      context.missing(_rarityMeta);
    }
    if (data.containsKey('main_stat_key')) {
      context.handle(
          _mainStatKeyMeta,
          mainStatKey.isAcceptableOrUnknown(
              data['main_stat_key']!, _mainStatKeyMeta));
    } else if (isInserting) {
      context.missing(_mainStatKeyMeta);
    }
    if (data.containsKey('main_stat_value')) {
      context.handle(
          _mainStatValueMeta,
          mainStatValue.isAcceptableOrUnknown(
              data['main_stat_value']!, _mainStatValueMeta));
    } else if (isInserting) {
      context.missing(_mainStatValueMeta);
    }
    if (data.containsKey('locked')) {
      context.handle(_lockedMeta,
          locked.isAcceptableOrUnknown(data['locked']!, _lockedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Artifact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Artifact(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      setKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}set_key'])!,
      slotKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}slot_key'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      rarity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rarity'])!,
      mainStatKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}main_stat_key'])!,
      mainStatValue: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}main_stat_value'])!,
      locked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}locked'])!,
    );
  }

  @override
  $ArtifactsTable createAlias(String alias) {
    return $ArtifactsTable(attachedDatabase, alias);
  }
}

class Artifact extends DataClass implements Insertable<Artifact> {
  final int id;
  final String setKey;
  final String slotKey;
  final int level;
  final int rarity;
  final String mainStatKey;
  final double mainStatValue;
  final bool locked;
  const Artifact(
      {required this.id,
      required this.setKey,
      required this.slotKey,
      required this.level,
      required this.rarity,
      required this.mainStatKey,
      required this.mainStatValue,
      required this.locked});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['set_key'] = Variable<String>(setKey);
    map['slot_key'] = Variable<String>(slotKey);
    map['level'] = Variable<int>(level);
    map['rarity'] = Variable<int>(rarity);
    map['main_stat_key'] = Variable<String>(mainStatKey);
    map['main_stat_value'] = Variable<double>(mainStatValue);
    map['locked'] = Variable<bool>(locked);
    return map;
  }

  ArtifactsCompanion toCompanion(bool nullToAbsent) {
    return ArtifactsCompanion(
      id: Value(id),
      setKey: Value(setKey),
      slotKey: Value(slotKey),
      level: Value(level),
      rarity: Value(rarity),
      mainStatKey: Value(mainStatKey),
      mainStatValue: Value(mainStatValue),
      locked: Value(locked),
    );
  }

  factory Artifact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Artifact(
      id: serializer.fromJson<int>(json['id']),
      setKey: serializer.fromJson<String>(json['setKey']),
      slotKey: serializer.fromJson<String>(json['slotKey']),
      level: serializer.fromJson<int>(json['level']),
      rarity: serializer.fromJson<int>(json['rarity']),
      mainStatKey: serializer.fromJson<String>(json['mainStatKey']),
      mainStatValue: serializer.fromJson<double>(json['mainStatValue']),
      locked: serializer.fromJson<bool>(json['locked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'setKey': serializer.toJson<String>(setKey),
      'slotKey': serializer.toJson<String>(slotKey),
      'level': serializer.toJson<int>(level),
      'rarity': serializer.toJson<int>(rarity),
      'mainStatKey': serializer.toJson<String>(mainStatKey),
      'mainStatValue': serializer.toJson<double>(mainStatValue),
      'locked': serializer.toJson<bool>(locked),
    };
  }

  Artifact copyWith(
          {int? id,
          String? setKey,
          String? slotKey,
          int? level,
          int? rarity,
          String? mainStatKey,
          double? mainStatValue,
          bool? locked}) =>
      Artifact(
        id: id ?? this.id,
        setKey: setKey ?? this.setKey,
        slotKey: slotKey ?? this.slotKey,
        level: level ?? this.level,
        rarity: rarity ?? this.rarity,
        mainStatKey: mainStatKey ?? this.mainStatKey,
        mainStatValue: mainStatValue ?? this.mainStatValue,
        locked: locked ?? this.locked,
      );
  Artifact copyWithCompanion(ArtifactsCompanion data) {
    return Artifact(
      id: data.id.present ? data.id.value : this.id,
      setKey: data.setKey.present ? data.setKey.value : this.setKey,
      slotKey: data.slotKey.present ? data.slotKey.value : this.slotKey,
      level: data.level.present ? data.level.value : this.level,
      rarity: data.rarity.present ? data.rarity.value : this.rarity,
      mainStatKey:
          data.mainStatKey.present ? data.mainStatKey.value : this.mainStatKey,
      mainStatValue: data.mainStatValue.present
          ? data.mainStatValue.value
          : this.mainStatValue,
      locked: data.locked.present ? data.locked.value : this.locked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Artifact(')
          ..write('id: $id, ')
          ..write('setKey: $setKey, ')
          ..write('slotKey: $slotKey, ')
          ..write('level: $level, ')
          ..write('rarity: $rarity, ')
          ..write('mainStatKey: $mainStatKey, ')
          ..write('mainStatValue: $mainStatValue, ')
          ..write('locked: $locked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, setKey, slotKey, level, rarity, mainStatKey, mainStatValue, locked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Artifact &&
          other.id == this.id &&
          other.setKey == this.setKey &&
          other.slotKey == this.slotKey &&
          other.level == this.level &&
          other.rarity == this.rarity &&
          other.mainStatKey == this.mainStatKey &&
          other.mainStatValue == this.mainStatValue &&
          other.locked == this.locked);
}

class ArtifactsCompanion extends UpdateCompanion<Artifact> {
  final Value<int> id;
  final Value<String> setKey;
  final Value<String> slotKey;
  final Value<int> level;
  final Value<int> rarity;
  final Value<String> mainStatKey;
  final Value<double> mainStatValue;
  final Value<bool> locked;
  const ArtifactsCompanion({
    this.id = const Value.absent(),
    this.setKey = const Value.absent(),
    this.slotKey = const Value.absent(),
    this.level = const Value.absent(),
    this.rarity = const Value.absent(),
    this.mainStatKey = const Value.absent(),
    this.mainStatValue = const Value.absent(),
    this.locked = const Value.absent(),
  });
  ArtifactsCompanion.insert({
    this.id = const Value.absent(),
    required String setKey,
    required String slotKey,
    required int level,
    required int rarity,
    required String mainStatKey,
    required double mainStatValue,
    this.locked = const Value.absent(),
  })  : setKey = Value(setKey),
        slotKey = Value(slotKey),
        level = Value(level),
        rarity = Value(rarity),
        mainStatKey = Value(mainStatKey),
        mainStatValue = Value(mainStatValue);
  static Insertable<Artifact> custom({
    Expression<int>? id,
    Expression<String>? setKey,
    Expression<String>? slotKey,
    Expression<int>? level,
    Expression<int>? rarity,
    Expression<String>? mainStatKey,
    Expression<double>? mainStatValue,
    Expression<bool>? locked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (setKey != null) 'set_key': setKey,
      if (slotKey != null) 'slot_key': slotKey,
      if (level != null) 'level': level,
      if (rarity != null) 'rarity': rarity,
      if (mainStatKey != null) 'main_stat_key': mainStatKey,
      if (mainStatValue != null) 'main_stat_value': mainStatValue,
      if (locked != null) 'locked': locked,
    });
  }

  ArtifactsCompanion copyWith(
      {Value<int>? id,
      Value<String>? setKey,
      Value<String>? slotKey,
      Value<int>? level,
      Value<int>? rarity,
      Value<String>? mainStatKey,
      Value<double>? mainStatValue,
      Value<bool>? locked}) {
    return ArtifactsCompanion(
      id: id ?? this.id,
      setKey: setKey ?? this.setKey,
      slotKey: slotKey ?? this.slotKey,
      level: level ?? this.level,
      rarity: rarity ?? this.rarity,
      mainStatKey: mainStatKey ?? this.mainStatKey,
      mainStatValue: mainStatValue ?? this.mainStatValue,
      locked: locked ?? this.locked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (setKey.present) {
      map['set_key'] = Variable<String>(setKey.value);
    }
    if (slotKey.present) {
      map['slot_key'] = Variable<String>(slotKey.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (rarity.present) {
      map['rarity'] = Variable<int>(rarity.value);
    }
    if (mainStatKey.present) {
      map['main_stat_key'] = Variable<String>(mainStatKey.value);
    }
    if (mainStatValue.present) {
      map['main_stat_value'] = Variable<double>(mainStatValue.value);
    }
    if (locked.present) {
      map['locked'] = Variable<bool>(locked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArtifactsCompanion(')
          ..write('id: $id, ')
          ..write('setKey: $setKey, ')
          ..write('slotKey: $slotKey, ')
          ..write('level: $level, ')
          ..write('rarity: $rarity, ')
          ..write('mainStatKey: $mainStatKey, ')
          ..write('mainStatValue: $mainStatValue, ')
          ..write('locked: $locked')
          ..write(')'))
        .toString();
  }
}

class $ArtifactSubStatsTable extends ArtifactSubStats
    with TableInfo<$ArtifactSubStatsTable, ArtifactSubStat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArtifactSubStatsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _artifactIdMeta =
      const VerificationMeta('artifactId');
  @override
  late final GeneratedColumn<int> artifactId = GeneratedColumn<int>(
      'artifact_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES artifacts (id)'));
  static const VerificationMeta _statKeyMeta =
      const VerificationMeta('statKey');
  @override
  late final GeneratedColumn<String> statKey = GeneratedColumn<String>(
      'stat_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statValueMeta =
      const VerificationMeta('statValue');
  @override
  late final GeneratedColumn<double> statValue = GeneratedColumn<double>(
      'stat_value', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, artifactId, statKey, statValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'artifact_sub_stats';
  @override
  VerificationContext validateIntegrity(Insertable<ArtifactSubStat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('artifact_id')) {
      context.handle(
          _artifactIdMeta,
          artifactId.isAcceptableOrUnknown(
              data['artifact_id']!, _artifactIdMeta));
    } else if (isInserting) {
      context.missing(_artifactIdMeta);
    }
    if (data.containsKey('stat_key')) {
      context.handle(_statKeyMeta,
          statKey.isAcceptableOrUnknown(data['stat_key']!, _statKeyMeta));
    } else if (isInserting) {
      context.missing(_statKeyMeta);
    }
    if (data.containsKey('stat_value')) {
      context.handle(_statValueMeta,
          statValue.isAcceptableOrUnknown(data['stat_value']!, _statValueMeta));
    } else if (isInserting) {
      context.missing(_statValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArtifactSubStat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArtifactSubStat(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      artifactId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}artifact_id'])!,
      statKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stat_key'])!,
      statValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}stat_value'])!,
    );
  }

  @override
  $ArtifactSubStatsTable createAlias(String alias) {
    return $ArtifactSubStatsTable(attachedDatabase, alias);
  }
}

class ArtifactSubStat extends DataClass implements Insertable<ArtifactSubStat> {
  final int id;
  final int artifactId;
  final String statKey;
  final double statValue;
  const ArtifactSubStat(
      {required this.id,
      required this.artifactId,
      required this.statKey,
      required this.statValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['artifact_id'] = Variable<int>(artifactId);
    map['stat_key'] = Variable<String>(statKey);
    map['stat_value'] = Variable<double>(statValue);
    return map;
  }

  ArtifactSubStatsCompanion toCompanion(bool nullToAbsent) {
    return ArtifactSubStatsCompanion(
      id: Value(id),
      artifactId: Value(artifactId),
      statKey: Value(statKey),
      statValue: Value(statValue),
    );
  }

  factory ArtifactSubStat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArtifactSubStat(
      id: serializer.fromJson<int>(json['id']),
      artifactId: serializer.fromJson<int>(json['artifactId']),
      statKey: serializer.fromJson<String>(json['statKey']),
      statValue: serializer.fromJson<double>(json['statValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'artifactId': serializer.toJson<int>(artifactId),
      'statKey': serializer.toJson<String>(statKey),
      'statValue': serializer.toJson<double>(statValue),
    };
  }

  ArtifactSubStat copyWith(
          {int? id, int? artifactId, String? statKey, double? statValue}) =>
      ArtifactSubStat(
        id: id ?? this.id,
        artifactId: artifactId ?? this.artifactId,
        statKey: statKey ?? this.statKey,
        statValue: statValue ?? this.statValue,
      );
  ArtifactSubStat copyWithCompanion(ArtifactSubStatsCompanion data) {
    return ArtifactSubStat(
      id: data.id.present ? data.id.value : this.id,
      artifactId:
          data.artifactId.present ? data.artifactId.value : this.artifactId,
      statKey: data.statKey.present ? data.statKey.value : this.statKey,
      statValue: data.statValue.present ? data.statValue.value : this.statValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ArtifactSubStat(')
          ..write('id: $id, ')
          ..write('artifactId: $artifactId, ')
          ..write('statKey: $statKey, ')
          ..write('statValue: $statValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, artifactId, statKey, statValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArtifactSubStat &&
          other.id == this.id &&
          other.artifactId == this.artifactId &&
          other.statKey == this.statKey &&
          other.statValue == this.statValue);
}

class ArtifactSubStatsCompanion extends UpdateCompanion<ArtifactSubStat> {
  final Value<int> id;
  final Value<int> artifactId;
  final Value<String> statKey;
  final Value<double> statValue;
  const ArtifactSubStatsCompanion({
    this.id = const Value.absent(),
    this.artifactId = const Value.absent(),
    this.statKey = const Value.absent(),
    this.statValue = const Value.absent(),
  });
  ArtifactSubStatsCompanion.insert({
    this.id = const Value.absent(),
    required int artifactId,
    required String statKey,
    required double statValue,
  })  : artifactId = Value(artifactId),
        statKey = Value(statKey),
        statValue = Value(statValue);
  static Insertable<ArtifactSubStat> custom({
    Expression<int>? id,
    Expression<int>? artifactId,
    Expression<String>? statKey,
    Expression<double>? statValue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (artifactId != null) 'artifact_id': artifactId,
      if (statKey != null) 'stat_key': statKey,
      if (statValue != null) 'stat_value': statValue,
    });
  }

  ArtifactSubStatsCompanion copyWith(
      {Value<int>? id,
      Value<int>? artifactId,
      Value<String>? statKey,
      Value<double>? statValue}) {
    return ArtifactSubStatsCompanion(
      id: id ?? this.id,
      artifactId: artifactId ?? this.artifactId,
      statKey: statKey ?? this.statKey,
      statValue: statValue ?? this.statValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (artifactId.present) {
      map['artifact_id'] = Variable<int>(artifactId.value);
    }
    if (statKey.present) {
      map['stat_key'] = Variable<String>(statKey.value);
    }
    if (statValue.present) {
      map['stat_value'] = Variable<double>(statValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArtifactSubStatsCompanion(')
          ..write('id: $id, ')
          ..write('artifactId: $artifactId, ')
          ..write('statKey: $statKey, ')
          ..write('statValue: $statValue')
          ..write(')'))
        .toString();
  }
}

class $CharacterArtifactsTable extends CharacterArtifacts
    with TableInfo<$CharacterArtifactsTable, CharacterArtifact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharacterArtifactsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES characters (id)'));
  static const VerificationMeta _artifactIdMeta =
      const VerificationMeta('artifactId');
  @override
  late final GeneratedColumn<int> artifactId = GeneratedColumn<int>(
      'artifact_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES artifacts (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, characterId, artifactId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'character_artifacts';
  @override
  VerificationContext validateIntegrity(Insertable<CharacterArtifact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('artifact_id')) {
      context.handle(
          _artifactIdMeta,
          artifactId.isAcceptableOrUnknown(
              data['artifact_id']!, _artifactIdMeta));
    } else if (isInserting) {
      context.missing(_artifactIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterArtifact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterArtifact(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      artifactId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}artifact_id'])!,
    );
  }

  @override
  $CharacterArtifactsTable createAlias(String alias) {
    return $CharacterArtifactsTable(attachedDatabase, alias);
  }
}

class CharacterArtifact extends DataClass
    implements Insertable<CharacterArtifact> {
  final int id;
  final int characterId;
  final int artifactId;
  const CharacterArtifact(
      {required this.id, required this.characterId, required this.artifactId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['character_id'] = Variable<int>(characterId);
    map['artifact_id'] = Variable<int>(artifactId);
    return map;
  }

  CharacterArtifactsCompanion toCompanion(bool nullToAbsent) {
    return CharacterArtifactsCompanion(
      id: Value(id),
      characterId: Value(characterId),
      artifactId: Value(artifactId),
    );
  }

  factory CharacterArtifact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterArtifact(
      id: serializer.fromJson<int>(json['id']),
      characterId: serializer.fromJson<int>(json['characterId']),
      artifactId: serializer.fromJson<int>(json['artifactId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'characterId': serializer.toJson<int>(characterId),
      'artifactId': serializer.toJson<int>(artifactId),
    };
  }

  CharacterArtifact copyWith({int? id, int? characterId, int? artifactId}) =>
      CharacterArtifact(
        id: id ?? this.id,
        characterId: characterId ?? this.characterId,
        artifactId: artifactId ?? this.artifactId,
      );
  CharacterArtifact copyWithCompanion(CharacterArtifactsCompanion data) {
    return CharacterArtifact(
      id: data.id.present ? data.id.value : this.id,
      characterId:
          data.characterId.present ? data.characterId.value : this.characterId,
      artifactId:
          data.artifactId.present ? data.artifactId.value : this.artifactId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterArtifact(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('artifactId: $artifactId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, characterId, artifactId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterArtifact &&
          other.id == this.id &&
          other.characterId == this.characterId &&
          other.artifactId == this.artifactId);
}

class CharacterArtifactsCompanion extends UpdateCompanion<CharacterArtifact> {
  final Value<int> id;
  final Value<int> characterId;
  final Value<int> artifactId;
  const CharacterArtifactsCompanion({
    this.id = const Value.absent(),
    this.characterId = const Value.absent(),
    this.artifactId = const Value.absent(),
  });
  CharacterArtifactsCompanion.insert({
    this.id = const Value.absent(),
    required int characterId,
    required int artifactId,
  })  : characterId = Value(characterId),
        artifactId = Value(artifactId);
  static Insertable<CharacterArtifact> custom({
    Expression<int>? id,
    Expression<int>? characterId,
    Expression<int>? artifactId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (characterId != null) 'character_id': characterId,
      if (artifactId != null) 'artifact_id': artifactId,
    });
  }

  CharacterArtifactsCompanion copyWith(
      {Value<int>? id, Value<int>? characterId, Value<int>? artifactId}) {
    return CharacterArtifactsCompanion(
      id: id ?? this.id,
      characterId: characterId ?? this.characterId,
      artifactId: artifactId ?? this.artifactId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (artifactId.present) {
      map['artifact_id'] = Variable<int>(artifactId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterArtifactsCompanion(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('artifactId: $artifactId')
          ..write(')'))
        .toString();
  }
}

class $CharacterSummariesTable extends CharacterSummaries
    with TableInfo<$CharacterSummariesTable, CharacterSummary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharacterSummariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES characters (id)'));
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
      'role', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _buildCompletenessMeta =
      const VerificationMeta('buildCompleteness');
  @override
  late final GeneratedColumn<double> buildCompleteness =
      GeneratedColumn<double>('build_completeness', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _artifactEfficiencyMeta =
      const VerificationMeta('artifactEfficiency');
  @override
  late final GeneratedColumn<double> artifactEfficiency =
      GeneratedColumn<double>('artifact_efficiency', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _weaponMatchMeta =
      const VerificationMeta('weaponMatch');
  @override
  late final GeneratedColumn<double> weaponMatch = GeneratedColumn<double>(
      'weapon_match', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _investmentPriorityMeta =
      const VerificationMeta('investmentPriority');
  @override
  late final GeneratedColumn<int> investmentPriority = GeneratedColumn<int>(
      'investment_priority', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _strengthsMeta =
      const VerificationMeta('strengths');
  @override
  late final GeneratedColumn<String> strengths = GeneratedColumn<String>(
      'strengths', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _weaknessesMeta =
      const VerificationMeta('weaknesses');
  @override
  late final GeneratedColumn<String> weaknesses = GeneratedColumn<String>(
      'weaknesses', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _talentProgressMeta =
      const VerificationMeta('talentProgress');
  @override
  late final GeneratedColumn<double> talentProgress = GeneratedColumn<double>(
      'talent_progress', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _ascensionProgressMeta =
      const VerificationMeta('ascensionProgress');
  @override
  late final GeneratedColumn<double> ascensionProgress =
      GeneratedColumn<double>('ascension_progress', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _weaponProgressMeta =
      const VerificationMeta('weaponProgress');
  @override
  late final GeneratedColumn<double> weaponProgress = GeneratedColumn<double>(
      'weapon_progress', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _overallProgressMeta =
      const VerificationMeta('overallProgress');
  @override
  late final GeneratedColumn<double> overallProgress = GeneratedColumn<double>(
      'overall_progress', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'last_updated', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        characterId,
        role,
        buildCompleteness,
        artifactEfficiency,
        weaponMatch,
        investmentPriority,
        strengths,
        weaknesses,
        talentProgress,
        ascensionProgress,
        weaponProgress,
        overallProgress,
        lastUpdated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'character_summaries';
  @override
  VerificationContext validateIntegrity(Insertable<CharacterSummary> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('build_completeness')) {
      context.handle(
          _buildCompletenessMeta,
          buildCompleteness.isAcceptableOrUnknown(
              data['build_completeness']!, _buildCompletenessMeta));
    } else if (isInserting) {
      context.missing(_buildCompletenessMeta);
    }
    if (data.containsKey('artifact_efficiency')) {
      context.handle(
          _artifactEfficiencyMeta,
          artifactEfficiency.isAcceptableOrUnknown(
              data['artifact_efficiency']!, _artifactEfficiencyMeta));
    } else if (isInserting) {
      context.missing(_artifactEfficiencyMeta);
    }
    if (data.containsKey('weapon_match')) {
      context.handle(
          _weaponMatchMeta,
          weaponMatch.isAcceptableOrUnknown(
              data['weapon_match']!, _weaponMatchMeta));
    } else if (isInserting) {
      context.missing(_weaponMatchMeta);
    }
    if (data.containsKey('investment_priority')) {
      context.handle(
          _investmentPriorityMeta,
          investmentPriority.isAcceptableOrUnknown(
              data['investment_priority']!, _investmentPriorityMeta));
    } else if (isInserting) {
      context.missing(_investmentPriorityMeta);
    }
    if (data.containsKey('strengths')) {
      context.handle(_strengthsMeta,
          strengths.isAcceptableOrUnknown(data['strengths']!, _strengthsMeta));
    } else if (isInserting) {
      context.missing(_strengthsMeta);
    }
    if (data.containsKey('weaknesses')) {
      context.handle(
          _weaknessesMeta,
          weaknesses.isAcceptableOrUnknown(
              data['weaknesses']!, _weaknessesMeta));
    } else if (isInserting) {
      context.missing(_weaknessesMeta);
    }
    if (data.containsKey('talent_progress')) {
      context.handle(
          _talentProgressMeta,
          talentProgress.isAcceptableOrUnknown(
              data['talent_progress']!, _talentProgressMeta));
    } else if (isInserting) {
      context.missing(_talentProgressMeta);
    }
    if (data.containsKey('ascension_progress')) {
      context.handle(
          _ascensionProgressMeta,
          ascensionProgress.isAcceptableOrUnknown(
              data['ascension_progress']!, _ascensionProgressMeta));
    } else if (isInserting) {
      context.missing(_ascensionProgressMeta);
    }
    if (data.containsKey('weapon_progress')) {
      context.handle(
          _weaponProgressMeta,
          weaponProgress.isAcceptableOrUnknown(
              data['weapon_progress']!, _weaponProgressMeta));
    } else if (isInserting) {
      context.missing(_weaponProgressMeta);
    }
    if (data.containsKey('overall_progress')) {
      context.handle(
          _overallProgressMeta,
          overallProgress.isAcceptableOrUnknown(
              data['overall_progress']!, _overallProgressMeta));
    } else if (isInserting) {
      context.missing(_overallProgressMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['last_updated']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterSummary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterSummary(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      role: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!,
      buildCompleteness: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}build_completeness'])!,
      artifactEfficiency: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}artifact_efficiency'])!,
      weaponMatch: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weapon_match'])!,
      investmentPriority: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}investment_priority'])!,
      strengths: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}strengths'])!,
      weaknesses: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}weaknesses'])!,
      talentProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}talent_progress'])!,
      ascensionProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}ascension_progress'])!,
      weaponProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}weapon_progress'])!,
      overallProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}overall_progress'])!,
      lastUpdated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_updated'])!,
    );
  }

  @override
  $CharacterSummariesTable createAlias(String alias) {
    return $CharacterSummariesTable(attachedDatabase, alias);
  }
}

class CharacterSummary extends DataClass
    implements Insertable<CharacterSummary> {
  final int id;
  final int characterId;
  final String role;
  final double buildCompleteness;
  final double artifactEfficiency;
  final double weaponMatch;
  final int investmentPriority;
  final String strengths;
  final String weaknesses;
  final double talentProgress;
  final double ascensionProgress;
  final double weaponProgress;
  final double overallProgress;
  final DateTime lastUpdated;
  const CharacterSummary(
      {required this.id,
      required this.characterId,
      required this.role,
      required this.buildCompleteness,
      required this.artifactEfficiency,
      required this.weaponMatch,
      required this.investmentPriority,
      required this.strengths,
      required this.weaknesses,
      required this.talentProgress,
      required this.ascensionProgress,
      required this.weaponProgress,
      required this.overallProgress,
      required this.lastUpdated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['character_id'] = Variable<int>(characterId);
    map['role'] = Variable<String>(role);
    map['build_completeness'] = Variable<double>(buildCompleteness);
    map['artifact_efficiency'] = Variable<double>(artifactEfficiency);
    map['weapon_match'] = Variable<double>(weaponMatch);
    map['investment_priority'] = Variable<int>(investmentPriority);
    map['strengths'] = Variable<String>(strengths);
    map['weaknesses'] = Variable<String>(weaknesses);
    map['talent_progress'] = Variable<double>(talentProgress);
    map['ascension_progress'] = Variable<double>(ascensionProgress);
    map['weapon_progress'] = Variable<double>(weaponProgress);
    map['overall_progress'] = Variable<double>(overallProgress);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    return map;
  }

  CharacterSummariesCompanion toCompanion(bool nullToAbsent) {
    return CharacterSummariesCompanion(
      id: Value(id),
      characterId: Value(characterId),
      role: Value(role),
      buildCompleteness: Value(buildCompleteness),
      artifactEfficiency: Value(artifactEfficiency),
      weaponMatch: Value(weaponMatch),
      investmentPriority: Value(investmentPriority),
      strengths: Value(strengths),
      weaknesses: Value(weaknesses),
      talentProgress: Value(talentProgress),
      ascensionProgress: Value(ascensionProgress),
      weaponProgress: Value(weaponProgress),
      overallProgress: Value(overallProgress),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory CharacterSummary.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterSummary(
      id: serializer.fromJson<int>(json['id']),
      characterId: serializer.fromJson<int>(json['characterId']),
      role: serializer.fromJson<String>(json['role']),
      buildCompleteness: serializer.fromJson<double>(json['buildCompleteness']),
      artifactEfficiency:
          serializer.fromJson<double>(json['artifactEfficiency']),
      weaponMatch: serializer.fromJson<double>(json['weaponMatch']),
      investmentPriority: serializer.fromJson<int>(json['investmentPriority']),
      strengths: serializer.fromJson<String>(json['strengths']),
      weaknesses: serializer.fromJson<String>(json['weaknesses']),
      talentProgress: serializer.fromJson<double>(json['talentProgress']),
      ascensionProgress: serializer.fromJson<double>(json['ascensionProgress']),
      weaponProgress: serializer.fromJson<double>(json['weaponProgress']),
      overallProgress: serializer.fromJson<double>(json['overallProgress']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'characterId': serializer.toJson<int>(characterId),
      'role': serializer.toJson<String>(role),
      'buildCompleteness': serializer.toJson<double>(buildCompleteness),
      'artifactEfficiency': serializer.toJson<double>(artifactEfficiency),
      'weaponMatch': serializer.toJson<double>(weaponMatch),
      'investmentPriority': serializer.toJson<int>(investmentPriority),
      'strengths': serializer.toJson<String>(strengths),
      'weaknesses': serializer.toJson<String>(weaknesses),
      'talentProgress': serializer.toJson<double>(talentProgress),
      'ascensionProgress': serializer.toJson<double>(ascensionProgress),
      'weaponProgress': serializer.toJson<double>(weaponProgress),
      'overallProgress': serializer.toJson<double>(overallProgress),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
    };
  }

  CharacterSummary copyWith(
          {int? id,
          int? characterId,
          String? role,
          double? buildCompleteness,
          double? artifactEfficiency,
          double? weaponMatch,
          int? investmentPriority,
          String? strengths,
          String? weaknesses,
          double? talentProgress,
          double? ascensionProgress,
          double? weaponProgress,
          double? overallProgress,
          DateTime? lastUpdated}) =>
      CharacterSummary(
        id: id ?? this.id,
        characterId: characterId ?? this.characterId,
        role: role ?? this.role,
        buildCompleteness: buildCompleteness ?? this.buildCompleteness,
        artifactEfficiency: artifactEfficiency ?? this.artifactEfficiency,
        weaponMatch: weaponMatch ?? this.weaponMatch,
        investmentPriority: investmentPriority ?? this.investmentPriority,
        strengths: strengths ?? this.strengths,
        weaknesses: weaknesses ?? this.weaknesses,
        talentProgress: talentProgress ?? this.talentProgress,
        ascensionProgress: ascensionProgress ?? this.ascensionProgress,
        weaponProgress: weaponProgress ?? this.weaponProgress,
        overallProgress: overallProgress ?? this.overallProgress,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  CharacterSummary copyWithCompanion(CharacterSummariesCompanion data) {
    return CharacterSummary(
      id: data.id.present ? data.id.value : this.id,
      characterId:
          data.characterId.present ? data.characterId.value : this.characterId,
      role: data.role.present ? data.role.value : this.role,
      buildCompleteness: data.buildCompleteness.present
          ? data.buildCompleteness.value
          : this.buildCompleteness,
      artifactEfficiency: data.artifactEfficiency.present
          ? data.artifactEfficiency.value
          : this.artifactEfficiency,
      weaponMatch:
          data.weaponMatch.present ? data.weaponMatch.value : this.weaponMatch,
      investmentPriority: data.investmentPriority.present
          ? data.investmentPriority.value
          : this.investmentPriority,
      strengths: data.strengths.present ? data.strengths.value : this.strengths,
      weaknesses:
          data.weaknesses.present ? data.weaknesses.value : this.weaknesses,
      talentProgress: data.talentProgress.present
          ? data.talentProgress.value
          : this.talentProgress,
      ascensionProgress: data.ascensionProgress.present
          ? data.ascensionProgress.value
          : this.ascensionProgress,
      weaponProgress: data.weaponProgress.present
          ? data.weaponProgress.value
          : this.weaponProgress,
      overallProgress: data.overallProgress.present
          ? data.overallProgress.value
          : this.overallProgress,
      lastUpdated:
          data.lastUpdated.present ? data.lastUpdated.value : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterSummary(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('role: $role, ')
          ..write('buildCompleteness: $buildCompleteness, ')
          ..write('artifactEfficiency: $artifactEfficiency, ')
          ..write('weaponMatch: $weaponMatch, ')
          ..write('investmentPriority: $investmentPriority, ')
          ..write('strengths: $strengths, ')
          ..write('weaknesses: $weaknesses, ')
          ..write('talentProgress: $talentProgress, ')
          ..write('ascensionProgress: $ascensionProgress, ')
          ..write('weaponProgress: $weaponProgress, ')
          ..write('overallProgress: $overallProgress, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      characterId,
      role,
      buildCompleteness,
      artifactEfficiency,
      weaponMatch,
      investmentPriority,
      strengths,
      weaknesses,
      talentProgress,
      ascensionProgress,
      weaponProgress,
      overallProgress,
      lastUpdated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterSummary &&
          other.id == this.id &&
          other.characterId == this.characterId &&
          other.role == this.role &&
          other.buildCompleteness == this.buildCompleteness &&
          other.artifactEfficiency == this.artifactEfficiency &&
          other.weaponMatch == this.weaponMatch &&
          other.investmentPriority == this.investmentPriority &&
          other.strengths == this.strengths &&
          other.weaknesses == this.weaknesses &&
          other.talentProgress == this.talentProgress &&
          other.ascensionProgress == this.ascensionProgress &&
          other.weaponProgress == this.weaponProgress &&
          other.overallProgress == this.overallProgress &&
          other.lastUpdated == this.lastUpdated);
}

class CharacterSummariesCompanion extends UpdateCompanion<CharacterSummary> {
  final Value<int> id;
  final Value<int> characterId;
  final Value<String> role;
  final Value<double> buildCompleteness;
  final Value<double> artifactEfficiency;
  final Value<double> weaponMatch;
  final Value<int> investmentPriority;
  final Value<String> strengths;
  final Value<String> weaknesses;
  final Value<double> talentProgress;
  final Value<double> ascensionProgress;
  final Value<double> weaponProgress;
  final Value<double> overallProgress;
  final Value<DateTime> lastUpdated;
  const CharacterSummariesCompanion({
    this.id = const Value.absent(),
    this.characterId = const Value.absent(),
    this.role = const Value.absent(),
    this.buildCompleteness = const Value.absent(),
    this.artifactEfficiency = const Value.absent(),
    this.weaponMatch = const Value.absent(),
    this.investmentPriority = const Value.absent(),
    this.strengths = const Value.absent(),
    this.weaknesses = const Value.absent(),
    this.talentProgress = const Value.absent(),
    this.ascensionProgress = const Value.absent(),
    this.weaponProgress = const Value.absent(),
    this.overallProgress = const Value.absent(),
    this.lastUpdated = const Value.absent(),
  });
  CharacterSummariesCompanion.insert({
    this.id = const Value.absent(),
    required int characterId,
    required String role,
    required double buildCompleteness,
    required double artifactEfficiency,
    required double weaponMatch,
    required int investmentPriority,
    required String strengths,
    required String weaknesses,
    required double talentProgress,
    required double ascensionProgress,
    required double weaponProgress,
    required double overallProgress,
    required DateTime lastUpdated,
  })  : characterId = Value(characterId),
        role = Value(role),
        buildCompleteness = Value(buildCompleteness),
        artifactEfficiency = Value(artifactEfficiency),
        weaponMatch = Value(weaponMatch),
        investmentPriority = Value(investmentPriority),
        strengths = Value(strengths),
        weaknesses = Value(weaknesses),
        talentProgress = Value(talentProgress),
        ascensionProgress = Value(ascensionProgress),
        weaponProgress = Value(weaponProgress),
        overallProgress = Value(overallProgress),
        lastUpdated = Value(lastUpdated);
  static Insertable<CharacterSummary> custom({
    Expression<int>? id,
    Expression<int>? characterId,
    Expression<String>? role,
    Expression<double>? buildCompleteness,
    Expression<double>? artifactEfficiency,
    Expression<double>? weaponMatch,
    Expression<int>? investmentPriority,
    Expression<String>? strengths,
    Expression<String>? weaknesses,
    Expression<double>? talentProgress,
    Expression<double>? ascensionProgress,
    Expression<double>? weaponProgress,
    Expression<double>? overallProgress,
    Expression<DateTime>? lastUpdated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (characterId != null) 'character_id': characterId,
      if (role != null) 'role': role,
      if (buildCompleteness != null) 'build_completeness': buildCompleteness,
      if (artifactEfficiency != null) 'artifact_efficiency': artifactEfficiency,
      if (weaponMatch != null) 'weapon_match': weaponMatch,
      if (investmentPriority != null) 'investment_priority': investmentPriority,
      if (strengths != null) 'strengths': strengths,
      if (weaknesses != null) 'weaknesses': weaknesses,
      if (talentProgress != null) 'talent_progress': talentProgress,
      if (ascensionProgress != null) 'ascension_progress': ascensionProgress,
      if (weaponProgress != null) 'weapon_progress': weaponProgress,
      if (overallProgress != null) 'overall_progress': overallProgress,
      if (lastUpdated != null) 'last_updated': lastUpdated,
    });
  }

  CharacterSummariesCompanion copyWith(
      {Value<int>? id,
      Value<int>? characterId,
      Value<String>? role,
      Value<double>? buildCompleteness,
      Value<double>? artifactEfficiency,
      Value<double>? weaponMatch,
      Value<int>? investmentPriority,
      Value<String>? strengths,
      Value<String>? weaknesses,
      Value<double>? talentProgress,
      Value<double>? ascensionProgress,
      Value<double>? weaponProgress,
      Value<double>? overallProgress,
      Value<DateTime>? lastUpdated}) {
    return CharacterSummariesCompanion(
      id: id ?? this.id,
      characterId: characterId ?? this.characterId,
      role: role ?? this.role,
      buildCompleteness: buildCompleteness ?? this.buildCompleteness,
      artifactEfficiency: artifactEfficiency ?? this.artifactEfficiency,
      weaponMatch: weaponMatch ?? this.weaponMatch,
      investmentPriority: investmentPriority ?? this.investmentPriority,
      strengths: strengths ?? this.strengths,
      weaknesses: weaknesses ?? this.weaknesses,
      talentProgress: talentProgress ?? this.talentProgress,
      ascensionProgress: ascensionProgress ?? this.ascensionProgress,
      weaponProgress: weaponProgress ?? this.weaponProgress,
      overallProgress: overallProgress ?? this.overallProgress,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (buildCompleteness.present) {
      map['build_completeness'] = Variable<double>(buildCompleteness.value);
    }
    if (artifactEfficiency.present) {
      map['artifact_efficiency'] = Variable<double>(artifactEfficiency.value);
    }
    if (weaponMatch.present) {
      map['weapon_match'] = Variable<double>(weaponMatch.value);
    }
    if (investmentPriority.present) {
      map['investment_priority'] = Variable<int>(investmentPriority.value);
    }
    if (strengths.present) {
      map['strengths'] = Variable<String>(strengths.value);
    }
    if (weaknesses.present) {
      map['weaknesses'] = Variable<String>(weaknesses.value);
    }
    if (talentProgress.present) {
      map['talent_progress'] = Variable<double>(talentProgress.value);
    }
    if (ascensionProgress.present) {
      map['ascension_progress'] = Variable<double>(ascensionProgress.value);
    }
    if (weaponProgress.present) {
      map['weapon_progress'] = Variable<double>(weaponProgress.value);
    }
    if (overallProgress.present) {
      map['overall_progress'] = Variable<double>(overallProgress.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterSummariesCompanion(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('role: $role, ')
          ..write('buildCompleteness: $buildCompleteness, ')
          ..write('artifactEfficiency: $artifactEfficiency, ')
          ..write('weaponMatch: $weaponMatch, ')
          ..write('investmentPriority: $investmentPriority, ')
          ..write('strengths: $strengths, ')
          ..write('weaknesses: $weaknesses, ')
          ..write('talentProgress: $talentProgress, ')
          ..write('ascensionProgress: $ascensionProgress, ')
          ..write('weaponProgress: $weaponProgress, ')
          ..write('overallProgress: $overallProgress, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WeaponsTable weapons = $WeaponsTable(this);
  late final $CharactersTable characters = $CharactersTable(this);
  late final $ArtifactsTable artifacts = $ArtifactsTable(this);
  late final $ArtifactSubStatsTable artifactSubStats =
      $ArtifactSubStatsTable(this);
  late final $CharacterArtifactsTable characterArtifacts =
      $CharacterArtifactsTable(this);
  late final $CharacterSummariesTable characterSummaries =
      $CharacterSummariesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        weapons,
        characters,
        artifacts,
        artifactSubStats,
        characterArtifacts,
        characterSummaries
      ];
}

typedef $$WeaponsTableCreateCompanionBuilder = WeaponsCompanion Function({
  Value<int> id,
  required String key,
  required String name,
  required String type,
  required int rarity,
  required int level,
  required int ascension,
  required int refinement,
  required double baseAtk,
  required double hp,
  required double atk,
  required double def,
  required double hpPercent,
  required double atkPercent,
  required double defPercent,
  required double critRate,
  required double critDmg,
  required double energyRecharge,
  required double elementalMastery,
  required double physicalDmgBonus,
  required double anemoDmgBonus,
  required double geoDmgBonus,
  required double electroDmgBonus,
  required double dendroDmgBonus,
  required double hydroDmgBonus,
  required double pyroDmgBonus,
  required double cryoDmgBonus,
});
typedef $$WeaponsTableUpdateCompanionBuilder = WeaponsCompanion Function({
  Value<int> id,
  Value<String> key,
  Value<String> name,
  Value<String> type,
  Value<int> rarity,
  Value<int> level,
  Value<int> ascension,
  Value<int> refinement,
  Value<double> baseAtk,
  Value<double> hp,
  Value<double> atk,
  Value<double> def,
  Value<double> hpPercent,
  Value<double> atkPercent,
  Value<double> defPercent,
  Value<double> critRate,
  Value<double> critDmg,
  Value<double> energyRecharge,
  Value<double> elementalMastery,
  Value<double> physicalDmgBonus,
  Value<double> anemoDmgBonus,
  Value<double> geoDmgBonus,
  Value<double> electroDmgBonus,
  Value<double> dendroDmgBonus,
  Value<double> hydroDmgBonus,
  Value<double> pyroDmgBonus,
  Value<double> cryoDmgBonus,
});

final class $$WeaponsTableReferences
    extends BaseReferences<_$AppDatabase, $WeaponsTable, Weapon> {
  $$WeaponsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CharactersTable, List<Character>>
      _charactersRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.characters,
              aliasName:
                  $_aliasNameGenerator(db.weapons.id, db.characters.weaponId));

  $$CharactersTableProcessedTableManager get charactersRefs {
    final manager = $$CharactersTableTableManager($_db, $_db.characters)
        .filter((f) => f.weaponId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_charactersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WeaponsTableFilterComposer
    extends Composer<_$AppDatabase, $WeaponsTable> {
  $$WeaponsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ascension => $composableBuilder(
      column: $table.ascension, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get refinement => $composableBuilder(
      column: $table.refinement, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get baseAtk => $composableBuilder(
      column: $table.baseAtk, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hp => $composableBuilder(
      column: $table.hp, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get atk => $composableBuilder(
      column: $table.atk, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get def => $composableBuilder(
      column: $table.def, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hpPercent => $composableBuilder(
      column: $table.hpPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get atkPercent => $composableBuilder(
      column: $table.atkPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get defPercent => $composableBuilder(
      column: $table.defPercent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get critRate => $composableBuilder(
      column: $table.critRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get critDmg => $composableBuilder(
      column: $table.critDmg, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus, builder: (column) => ColumnFilters(column));

  Expression<bool> charactersRefs(
      Expression<bool> Function($$CharactersTableFilterComposer f) f) {
    final $$CharactersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.weaponId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableFilterComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WeaponsTableOrderingComposer
    extends Composer<_$AppDatabase, $WeaponsTable> {
  $$WeaponsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ascension => $composableBuilder(
      column: $table.ascension, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get refinement => $composableBuilder(
      column: $table.refinement, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get baseAtk => $composableBuilder(
      column: $table.baseAtk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hp => $composableBuilder(
      column: $table.hp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get atk => $composableBuilder(
      column: $table.atk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get def => $composableBuilder(
      column: $table.def, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hpPercent => $composableBuilder(
      column: $table.hpPercent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get atkPercent => $composableBuilder(
      column: $table.atkPercent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get defPercent => $composableBuilder(
      column: $table.defPercent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get critRate => $composableBuilder(
      column: $table.critRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get critDmg => $composableBuilder(
      column: $table.critDmg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus,
      builder: (column) => ColumnOrderings(column));
}

class $$WeaponsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WeaponsTable> {
  $$WeaponsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get rarity =>
      $composableBuilder(column: $table.rarity, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get ascension =>
      $composableBuilder(column: $table.ascension, builder: (column) => column);

  GeneratedColumn<int> get refinement => $composableBuilder(
      column: $table.refinement, builder: (column) => column);

  GeneratedColumn<double> get baseAtk =>
      $composableBuilder(column: $table.baseAtk, builder: (column) => column);

  GeneratedColumn<double> get hp =>
      $composableBuilder(column: $table.hp, builder: (column) => column);

  GeneratedColumn<double> get atk =>
      $composableBuilder(column: $table.atk, builder: (column) => column);

  GeneratedColumn<double> get def =>
      $composableBuilder(column: $table.def, builder: (column) => column);

  GeneratedColumn<double> get hpPercent =>
      $composableBuilder(column: $table.hpPercent, builder: (column) => column);

  GeneratedColumn<double> get atkPercent => $composableBuilder(
      column: $table.atkPercent, builder: (column) => column);

  GeneratedColumn<double> get defPercent => $composableBuilder(
      column: $table.defPercent, builder: (column) => column);

  GeneratedColumn<double> get critRate =>
      $composableBuilder(column: $table.critRate, builder: (column) => column);

  GeneratedColumn<double> get critDmg =>
      $composableBuilder(column: $table.critDmg, builder: (column) => column);

  GeneratedColumn<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge, builder: (column) => column);

  GeneratedColumn<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery, builder: (column) => column);

  GeneratedColumn<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus, builder: (column) => column);

  Expression<T> charactersRefs<T extends Object>(
      Expression<T> Function($$CharactersTableAnnotationComposer a) f) {
    final $$CharactersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.weaponId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableAnnotationComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WeaponsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WeaponsTable,
    Weapon,
    $$WeaponsTableFilterComposer,
    $$WeaponsTableOrderingComposer,
    $$WeaponsTableAnnotationComposer,
    $$WeaponsTableCreateCompanionBuilder,
    $$WeaponsTableUpdateCompanionBuilder,
    (Weapon, $$WeaponsTableReferences),
    Weapon,
    PrefetchHooks Function({bool charactersRefs})> {
  $$WeaponsTableTableManager(_$AppDatabase db, $WeaponsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WeaponsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WeaponsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WeaponsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> key = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> rarity = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> ascension = const Value.absent(),
            Value<int> refinement = const Value.absent(),
            Value<double> baseAtk = const Value.absent(),
            Value<double> hp = const Value.absent(),
            Value<double> atk = const Value.absent(),
            Value<double> def = const Value.absent(),
            Value<double> hpPercent = const Value.absent(),
            Value<double> atkPercent = const Value.absent(),
            Value<double> defPercent = const Value.absent(),
            Value<double> critRate = const Value.absent(),
            Value<double> critDmg = const Value.absent(),
            Value<double> energyRecharge = const Value.absent(),
            Value<double> elementalMastery = const Value.absent(),
            Value<double> physicalDmgBonus = const Value.absent(),
            Value<double> anemoDmgBonus = const Value.absent(),
            Value<double> geoDmgBonus = const Value.absent(),
            Value<double> electroDmgBonus = const Value.absent(),
            Value<double> dendroDmgBonus = const Value.absent(),
            Value<double> hydroDmgBonus = const Value.absent(),
            Value<double> pyroDmgBonus = const Value.absent(),
            Value<double> cryoDmgBonus = const Value.absent(),
          }) =>
              WeaponsCompanion(
            id: id,
            key: key,
            name: name,
            type: type,
            rarity: rarity,
            level: level,
            ascension: ascension,
            refinement: refinement,
            baseAtk: baseAtk,
            hp: hp,
            atk: atk,
            def: def,
            hpPercent: hpPercent,
            atkPercent: atkPercent,
            defPercent: defPercent,
            critRate: critRate,
            critDmg: critDmg,
            energyRecharge: energyRecharge,
            elementalMastery: elementalMastery,
            physicalDmgBonus: physicalDmgBonus,
            anemoDmgBonus: anemoDmgBonus,
            geoDmgBonus: geoDmgBonus,
            electroDmgBonus: electroDmgBonus,
            dendroDmgBonus: dendroDmgBonus,
            hydroDmgBonus: hydroDmgBonus,
            pyroDmgBonus: pyroDmgBonus,
            cryoDmgBonus: cryoDmgBonus,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String key,
            required String name,
            required String type,
            required int rarity,
            required int level,
            required int ascension,
            required int refinement,
            required double baseAtk,
            required double hp,
            required double atk,
            required double def,
            required double hpPercent,
            required double atkPercent,
            required double defPercent,
            required double critRate,
            required double critDmg,
            required double energyRecharge,
            required double elementalMastery,
            required double physicalDmgBonus,
            required double anemoDmgBonus,
            required double geoDmgBonus,
            required double electroDmgBonus,
            required double dendroDmgBonus,
            required double hydroDmgBonus,
            required double pyroDmgBonus,
            required double cryoDmgBonus,
          }) =>
              WeaponsCompanion.insert(
            id: id,
            key: key,
            name: name,
            type: type,
            rarity: rarity,
            level: level,
            ascension: ascension,
            refinement: refinement,
            baseAtk: baseAtk,
            hp: hp,
            atk: atk,
            def: def,
            hpPercent: hpPercent,
            atkPercent: atkPercent,
            defPercent: defPercent,
            critRate: critRate,
            critDmg: critDmg,
            energyRecharge: energyRecharge,
            elementalMastery: elementalMastery,
            physicalDmgBonus: physicalDmgBonus,
            anemoDmgBonus: anemoDmgBonus,
            geoDmgBonus: geoDmgBonus,
            electroDmgBonus: electroDmgBonus,
            dendroDmgBonus: dendroDmgBonus,
            hydroDmgBonus: hydroDmgBonus,
            pyroDmgBonus: pyroDmgBonus,
            cryoDmgBonus: cryoDmgBonus,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$WeaponsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({charactersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (charactersRefs) db.characters],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (charactersRefs)
                    await $_getPrefetchedData<Weapon, $WeaponsTable, Character>(
                        currentTable: table,
                        referencedTable:
                            $$WeaponsTableReferences._charactersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WeaponsTableReferences(db, table, p0)
                                .charactersRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.weaponId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WeaponsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WeaponsTable,
    Weapon,
    $$WeaponsTableFilterComposer,
    $$WeaponsTableOrderingComposer,
    $$WeaponsTableAnnotationComposer,
    $$WeaponsTableCreateCompanionBuilder,
    $$WeaponsTableUpdateCompanionBuilder,
    (Weapon, $$WeaponsTableReferences),
    Weapon,
    PrefetchHooks Function({bool charactersRefs})>;
typedef $$CharactersTableCreateCompanionBuilder = CharactersCompanion Function({
  Value<int> id,
  required String key,
  required String name,
  required String element,
  required int rarity,
  required int level,
  required int constellation,
  required int weaponId,
  required int friendship,
  required int ascension,
  required double hp,
  required double atk,
  required double def,
  required double critRate,
  required double critDmg,
  required double energyRecharge,
  required double elementalMastery,
  required double physicalDmgBonus,
  required double anemoDmgBonus,
  required double geoDmgBonus,
  required double electroDmgBonus,
  required double dendroDmgBonus,
  required double hydroDmgBonus,
  required double pyroDmgBonus,
  required double cryoDmgBonus,
  required double healingBonus,
  required int autoTalent,
  required int skillTalent,
  required int burstTalent,
});
typedef $$CharactersTableUpdateCompanionBuilder = CharactersCompanion Function({
  Value<int> id,
  Value<String> key,
  Value<String> name,
  Value<String> element,
  Value<int> rarity,
  Value<int> level,
  Value<int> constellation,
  Value<int> weaponId,
  Value<int> friendship,
  Value<int> ascension,
  Value<double> hp,
  Value<double> atk,
  Value<double> def,
  Value<double> critRate,
  Value<double> critDmg,
  Value<double> energyRecharge,
  Value<double> elementalMastery,
  Value<double> physicalDmgBonus,
  Value<double> anemoDmgBonus,
  Value<double> geoDmgBonus,
  Value<double> electroDmgBonus,
  Value<double> dendroDmgBonus,
  Value<double> hydroDmgBonus,
  Value<double> pyroDmgBonus,
  Value<double> cryoDmgBonus,
  Value<double> healingBonus,
  Value<int> autoTalent,
  Value<int> skillTalent,
  Value<int> burstTalent,
});

final class $$CharactersTableReferences
    extends BaseReferences<_$AppDatabase, $CharactersTable, Character> {
  $$CharactersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WeaponsTable _weaponIdTable(_$AppDatabase db) => db.weapons
      .createAlias($_aliasNameGenerator(db.characters.weaponId, db.weapons.id));

  $$WeaponsTableProcessedTableManager get weaponId {
    final $_column = $_itemColumn<int>('weapon_id')!;

    final manager = $$WeaponsTableTableManager($_db, $_db.weapons)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_weaponIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$CharacterArtifactsTable, List<CharacterArtifact>>
      _characterArtifactsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.characterArtifacts,
              aliasName: $_aliasNameGenerator(
                  db.characters.id, db.characterArtifacts.characterId));

  $$CharacterArtifactsTableProcessedTableManager get characterArtifactsRefs {
    final manager = $$CharacterArtifactsTableTableManager(
            $_db, $_db.characterArtifacts)
        .filter((f) => f.characterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_characterArtifactsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CharacterSummariesTable, List<CharacterSummary>>
      _characterSummariesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.characterSummaries,
              aliasName: $_aliasNameGenerator(
                  db.characters.id, db.characterSummaries.characterId));

  $$CharacterSummariesTableProcessedTableManager get characterSummariesRefs {
    final manager = $$CharacterSummariesTableTableManager(
            $_db, $_db.characterSummaries)
        .filter((f) => f.characterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_characterSummariesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CharactersTableFilterComposer
    extends Composer<_$AppDatabase, $CharactersTable> {
  $$CharactersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get element => $composableBuilder(
      column: $table.element, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get constellation => $composableBuilder(
      column: $table.constellation, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get friendship => $composableBuilder(
      column: $table.friendship, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ascension => $composableBuilder(
      column: $table.ascension, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hp => $composableBuilder(
      column: $table.hp, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get atk => $composableBuilder(
      column: $table.atk, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get def => $composableBuilder(
      column: $table.def, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get critRate => $composableBuilder(
      column: $table.critRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get critDmg => $composableBuilder(
      column: $table.critDmg, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get healingBonus => $composableBuilder(
      column: $table.healingBonus, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get autoTalent => $composableBuilder(
      column: $table.autoTalent, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get skillTalent => $composableBuilder(
      column: $table.skillTalent, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get burstTalent => $composableBuilder(
      column: $table.burstTalent, builder: (column) => ColumnFilters(column));

  $$WeaponsTableFilterComposer get weaponId {
    final $$WeaponsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.weaponId,
        referencedTable: $db.weapons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WeaponsTableFilterComposer(
              $db: $db,
              $table: $db.weapons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> characterArtifactsRefs(
      Expression<bool> Function($$CharacterArtifactsTableFilterComposer f) f) {
    final $$CharacterArtifactsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.characterArtifacts,
        getReferencedColumn: (t) => t.characterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharacterArtifactsTableFilterComposer(
              $db: $db,
              $table: $db.characterArtifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> characterSummariesRefs(
      Expression<bool> Function($$CharacterSummariesTableFilterComposer f) f) {
    final $$CharacterSummariesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.characterSummaries,
        getReferencedColumn: (t) => t.characterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharacterSummariesTableFilterComposer(
              $db: $db,
              $table: $db.characterSummaries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CharactersTableOrderingComposer
    extends Composer<_$AppDatabase, $CharactersTable> {
  $$CharactersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get element => $composableBuilder(
      column: $table.element, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get constellation => $composableBuilder(
      column: $table.constellation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get friendship => $composableBuilder(
      column: $table.friendship, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ascension => $composableBuilder(
      column: $table.ascension, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hp => $composableBuilder(
      column: $table.hp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get atk => $composableBuilder(
      column: $table.atk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get def => $composableBuilder(
      column: $table.def, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get critRate => $composableBuilder(
      column: $table.critRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get critDmg => $composableBuilder(
      column: $table.critDmg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get healingBonus => $composableBuilder(
      column: $table.healingBonus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get autoTalent => $composableBuilder(
      column: $table.autoTalent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get skillTalent => $composableBuilder(
      column: $table.skillTalent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get burstTalent => $composableBuilder(
      column: $table.burstTalent, builder: (column) => ColumnOrderings(column));

  $$WeaponsTableOrderingComposer get weaponId {
    final $$WeaponsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.weaponId,
        referencedTable: $db.weapons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WeaponsTableOrderingComposer(
              $db: $db,
              $table: $db.weapons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharactersTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharactersTable> {
  $$CharactersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get element =>
      $composableBuilder(column: $table.element, builder: (column) => column);

  GeneratedColumn<int> get rarity =>
      $composableBuilder(column: $table.rarity, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get constellation => $composableBuilder(
      column: $table.constellation, builder: (column) => column);

  GeneratedColumn<int> get friendship => $composableBuilder(
      column: $table.friendship, builder: (column) => column);

  GeneratedColumn<int> get ascension =>
      $composableBuilder(column: $table.ascension, builder: (column) => column);

  GeneratedColumn<double> get hp =>
      $composableBuilder(column: $table.hp, builder: (column) => column);

  GeneratedColumn<double> get atk =>
      $composableBuilder(column: $table.atk, builder: (column) => column);

  GeneratedColumn<double> get def =>
      $composableBuilder(column: $table.def, builder: (column) => column);

  GeneratedColumn<double> get critRate =>
      $composableBuilder(column: $table.critRate, builder: (column) => column);

  GeneratedColumn<double> get critDmg =>
      $composableBuilder(column: $table.critDmg, builder: (column) => column);

  GeneratedColumn<double> get energyRecharge => $composableBuilder(
      column: $table.energyRecharge, builder: (column) => column);

  GeneratedColumn<double> get elementalMastery => $composableBuilder(
      column: $table.elementalMastery, builder: (column) => column);

  GeneratedColumn<double> get physicalDmgBonus => $composableBuilder(
      column: $table.physicalDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get anemoDmgBonus => $composableBuilder(
      column: $table.anemoDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get geoDmgBonus => $composableBuilder(
      column: $table.geoDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get electroDmgBonus => $composableBuilder(
      column: $table.electroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get dendroDmgBonus => $composableBuilder(
      column: $table.dendroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get hydroDmgBonus => $composableBuilder(
      column: $table.hydroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get pyroDmgBonus => $composableBuilder(
      column: $table.pyroDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get cryoDmgBonus => $composableBuilder(
      column: $table.cryoDmgBonus, builder: (column) => column);

  GeneratedColumn<double> get healingBonus => $composableBuilder(
      column: $table.healingBonus, builder: (column) => column);

  GeneratedColumn<int> get autoTalent => $composableBuilder(
      column: $table.autoTalent, builder: (column) => column);

  GeneratedColumn<int> get skillTalent => $composableBuilder(
      column: $table.skillTalent, builder: (column) => column);

  GeneratedColumn<int> get burstTalent => $composableBuilder(
      column: $table.burstTalent, builder: (column) => column);

  $$WeaponsTableAnnotationComposer get weaponId {
    final $$WeaponsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.weaponId,
        referencedTable: $db.weapons,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WeaponsTableAnnotationComposer(
              $db: $db,
              $table: $db.weapons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> characterArtifactsRefs<T extends Object>(
      Expression<T> Function($$CharacterArtifactsTableAnnotationComposer a) f) {
    final $$CharacterArtifactsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.characterArtifacts,
            getReferencedColumn: (t) => t.characterId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$CharacterArtifactsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.characterArtifacts,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> characterSummariesRefs<T extends Object>(
      Expression<T> Function($$CharacterSummariesTableAnnotationComposer a) f) {
    final $$CharacterSummariesTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.characterSummaries,
            getReferencedColumn: (t) => t.characterId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$CharacterSummariesTableAnnotationComposer(
                  $db: $db,
                  $table: $db.characterSummaries,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$CharactersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharactersTable,
    Character,
    $$CharactersTableFilterComposer,
    $$CharactersTableOrderingComposer,
    $$CharactersTableAnnotationComposer,
    $$CharactersTableCreateCompanionBuilder,
    $$CharactersTableUpdateCompanionBuilder,
    (Character, $$CharactersTableReferences),
    Character,
    PrefetchHooks Function(
        {bool weaponId,
        bool characterArtifactsRefs,
        bool characterSummariesRefs})> {
  $$CharactersTableTableManager(_$AppDatabase db, $CharactersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharactersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CharactersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharactersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> key = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> element = const Value.absent(),
            Value<int> rarity = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> constellation = const Value.absent(),
            Value<int> weaponId = const Value.absent(),
            Value<int> friendship = const Value.absent(),
            Value<int> ascension = const Value.absent(),
            Value<double> hp = const Value.absent(),
            Value<double> atk = const Value.absent(),
            Value<double> def = const Value.absent(),
            Value<double> critRate = const Value.absent(),
            Value<double> critDmg = const Value.absent(),
            Value<double> energyRecharge = const Value.absent(),
            Value<double> elementalMastery = const Value.absent(),
            Value<double> physicalDmgBonus = const Value.absent(),
            Value<double> anemoDmgBonus = const Value.absent(),
            Value<double> geoDmgBonus = const Value.absent(),
            Value<double> electroDmgBonus = const Value.absent(),
            Value<double> dendroDmgBonus = const Value.absent(),
            Value<double> hydroDmgBonus = const Value.absent(),
            Value<double> pyroDmgBonus = const Value.absent(),
            Value<double> cryoDmgBonus = const Value.absent(),
            Value<double> healingBonus = const Value.absent(),
            Value<int> autoTalent = const Value.absent(),
            Value<int> skillTalent = const Value.absent(),
            Value<int> burstTalent = const Value.absent(),
          }) =>
              CharactersCompanion(
            id: id,
            key: key,
            name: name,
            element: element,
            rarity: rarity,
            level: level,
            constellation: constellation,
            weaponId: weaponId,
            friendship: friendship,
            ascension: ascension,
            hp: hp,
            atk: atk,
            def: def,
            critRate: critRate,
            critDmg: critDmg,
            energyRecharge: energyRecharge,
            elementalMastery: elementalMastery,
            physicalDmgBonus: physicalDmgBonus,
            anemoDmgBonus: anemoDmgBonus,
            geoDmgBonus: geoDmgBonus,
            electroDmgBonus: electroDmgBonus,
            dendroDmgBonus: dendroDmgBonus,
            hydroDmgBonus: hydroDmgBonus,
            pyroDmgBonus: pyroDmgBonus,
            cryoDmgBonus: cryoDmgBonus,
            healingBonus: healingBonus,
            autoTalent: autoTalent,
            skillTalent: skillTalent,
            burstTalent: burstTalent,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String key,
            required String name,
            required String element,
            required int rarity,
            required int level,
            required int constellation,
            required int weaponId,
            required int friendship,
            required int ascension,
            required double hp,
            required double atk,
            required double def,
            required double critRate,
            required double critDmg,
            required double energyRecharge,
            required double elementalMastery,
            required double physicalDmgBonus,
            required double anemoDmgBonus,
            required double geoDmgBonus,
            required double electroDmgBonus,
            required double dendroDmgBonus,
            required double hydroDmgBonus,
            required double pyroDmgBonus,
            required double cryoDmgBonus,
            required double healingBonus,
            required int autoTalent,
            required int skillTalent,
            required int burstTalent,
          }) =>
              CharactersCompanion.insert(
            id: id,
            key: key,
            name: name,
            element: element,
            rarity: rarity,
            level: level,
            constellation: constellation,
            weaponId: weaponId,
            friendship: friendship,
            ascension: ascension,
            hp: hp,
            atk: atk,
            def: def,
            critRate: critRate,
            critDmg: critDmg,
            energyRecharge: energyRecharge,
            elementalMastery: elementalMastery,
            physicalDmgBonus: physicalDmgBonus,
            anemoDmgBonus: anemoDmgBonus,
            geoDmgBonus: geoDmgBonus,
            electroDmgBonus: electroDmgBonus,
            dendroDmgBonus: dendroDmgBonus,
            hydroDmgBonus: hydroDmgBonus,
            pyroDmgBonus: pyroDmgBonus,
            cryoDmgBonus: cryoDmgBonus,
            healingBonus: healingBonus,
            autoTalent: autoTalent,
            skillTalent: skillTalent,
            burstTalent: burstTalent,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CharactersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {weaponId = false,
              characterArtifactsRefs = false,
              characterSummariesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (characterArtifactsRefs) db.characterArtifacts,
                if (characterSummariesRefs) db.characterSummaries
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (weaponId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.weaponId,
                    referencedTable:
                        $$CharactersTableReferences._weaponIdTable(db),
                    referencedColumn:
                        $$CharactersTableReferences._weaponIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (characterArtifactsRefs)
                    await $_getPrefetchedData<Character, $CharactersTable,
                            CharacterArtifact>(
                        currentTable: table,
                        referencedTable: $$CharactersTableReferences
                            ._characterArtifactsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CharactersTableReferences(db, table, p0)
                                .characterArtifactsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.characterId == item.id),
                        typedResults: items),
                  if (characterSummariesRefs)
                    await $_getPrefetchedData<Character, $CharactersTable,
                            CharacterSummary>(
                        currentTable: table,
                        referencedTable: $$CharactersTableReferences
                            ._characterSummariesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CharactersTableReferences(db, table, p0)
                                .characterSummariesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.characterId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CharactersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CharactersTable,
    Character,
    $$CharactersTableFilterComposer,
    $$CharactersTableOrderingComposer,
    $$CharactersTableAnnotationComposer,
    $$CharactersTableCreateCompanionBuilder,
    $$CharactersTableUpdateCompanionBuilder,
    (Character, $$CharactersTableReferences),
    Character,
    PrefetchHooks Function(
        {bool weaponId,
        bool characterArtifactsRefs,
        bool characterSummariesRefs})>;
typedef $$ArtifactsTableCreateCompanionBuilder = ArtifactsCompanion Function({
  Value<int> id,
  required String setKey,
  required String slotKey,
  required int level,
  required int rarity,
  required String mainStatKey,
  required double mainStatValue,
  Value<bool> locked,
});
typedef $$ArtifactsTableUpdateCompanionBuilder = ArtifactsCompanion Function({
  Value<int> id,
  Value<String> setKey,
  Value<String> slotKey,
  Value<int> level,
  Value<int> rarity,
  Value<String> mainStatKey,
  Value<double> mainStatValue,
  Value<bool> locked,
});

final class $$ArtifactsTableReferences
    extends BaseReferences<_$AppDatabase, $ArtifactsTable, Artifact> {
  $$ArtifactsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ArtifactSubStatsTable, List<ArtifactSubStat>>
      _artifactSubStatsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.artifactSubStats,
              aliasName: $_aliasNameGenerator(
                  db.artifacts.id, db.artifactSubStats.artifactId));

  $$ArtifactSubStatsTableProcessedTableManager get artifactSubStatsRefs {
    final manager =
        $$ArtifactSubStatsTableTableManager($_db, $_db.artifactSubStats)
            .filter((f) => f.artifactId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_artifactSubStatsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CharacterArtifactsTable, List<CharacterArtifact>>
      _characterArtifactsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.characterArtifacts,
              aliasName: $_aliasNameGenerator(
                  db.artifacts.id, db.characterArtifacts.artifactId));

  $$CharacterArtifactsTableProcessedTableManager get characterArtifactsRefs {
    final manager =
        $$CharacterArtifactsTableTableManager($_db, $_db.characterArtifacts)
            .filter((f) => f.artifactId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_characterArtifactsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ArtifactsTableFilterComposer
    extends Composer<_$AppDatabase, $ArtifactsTable> {
  $$ArtifactsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get setKey => $composableBuilder(
      column: $table.setKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get slotKey => $composableBuilder(
      column: $table.slotKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mainStatKey => $composableBuilder(
      column: $table.mainStatKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get mainStatValue => $composableBuilder(
      column: $table.mainStatValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get locked => $composableBuilder(
      column: $table.locked, builder: (column) => ColumnFilters(column));

  Expression<bool> artifactSubStatsRefs(
      Expression<bool> Function($$ArtifactSubStatsTableFilterComposer f) f) {
    final $$ArtifactSubStatsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.artifactSubStats,
        getReferencedColumn: (t) => t.artifactId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactSubStatsTableFilterComposer(
              $db: $db,
              $table: $db.artifactSubStats,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> characterArtifactsRefs(
      Expression<bool> Function($$CharacterArtifactsTableFilterComposer f) f) {
    final $$CharacterArtifactsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.characterArtifacts,
        getReferencedColumn: (t) => t.artifactId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharacterArtifactsTableFilterComposer(
              $db: $db,
              $table: $db.characterArtifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ArtifactsTableOrderingComposer
    extends Composer<_$AppDatabase, $ArtifactsTable> {
  $$ArtifactsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get setKey => $composableBuilder(
      column: $table.setKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get slotKey => $composableBuilder(
      column: $table.slotKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rarity => $composableBuilder(
      column: $table.rarity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mainStatKey => $composableBuilder(
      column: $table.mainStatKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get mainStatValue => $composableBuilder(
      column: $table.mainStatValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get locked => $composableBuilder(
      column: $table.locked, builder: (column) => ColumnOrderings(column));
}

class $$ArtifactsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ArtifactsTable> {
  $$ArtifactsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get setKey =>
      $composableBuilder(column: $table.setKey, builder: (column) => column);

  GeneratedColumn<String> get slotKey =>
      $composableBuilder(column: $table.slotKey, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get rarity =>
      $composableBuilder(column: $table.rarity, builder: (column) => column);

  GeneratedColumn<String> get mainStatKey => $composableBuilder(
      column: $table.mainStatKey, builder: (column) => column);

  GeneratedColumn<double> get mainStatValue => $composableBuilder(
      column: $table.mainStatValue, builder: (column) => column);

  GeneratedColumn<bool> get locked =>
      $composableBuilder(column: $table.locked, builder: (column) => column);

  Expression<T> artifactSubStatsRefs<T extends Object>(
      Expression<T> Function($$ArtifactSubStatsTableAnnotationComposer a) f) {
    final $$ArtifactSubStatsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.artifactSubStats,
        getReferencedColumn: (t) => t.artifactId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactSubStatsTableAnnotationComposer(
              $db: $db,
              $table: $db.artifactSubStats,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> characterArtifactsRefs<T extends Object>(
      Expression<T> Function($$CharacterArtifactsTableAnnotationComposer a) f) {
    final $$CharacterArtifactsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.characterArtifacts,
            getReferencedColumn: (t) => t.artifactId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$CharacterArtifactsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.characterArtifacts,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ArtifactsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ArtifactsTable,
    Artifact,
    $$ArtifactsTableFilterComposer,
    $$ArtifactsTableOrderingComposer,
    $$ArtifactsTableAnnotationComposer,
    $$ArtifactsTableCreateCompanionBuilder,
    $$ArtifactsTableUpdateCompanionBuilder,
    (Artifact, $$ArtifactsTableReferences),
    Artifact,
    PrefetchHooks Function(
        {bool artifactSubStatsRefs, bool characterArtifactsRefs})> {
  $$ArtifactsTableTableManager(_$AppDatabase db, $ArtifactsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ArtifactsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ArtifactsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ArtifactsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> setKey = const Value.absent(),
            Value<String> slotKey = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> rarity = const Value.absent(),
            Value<String> mainStatKey = const Value.absent(),
            Value<double> mainStatValue = const Value.absent(),
            Value<bool> locked = const Value.absent(),
          }) =>
              ArtifactsCompanion(
            id: id,
            setKey: setKey,
            slotKey: slotKey,
            level: level,
            rarity: rarity,
            mainStatKey: mainStatKey,
            mainStatValue: mainStatValue,
            locked: locked,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String setKey,
            required String slotKey,
            required int level,
            required int rarity,
            required String mainStatKey,
            required double mainStatValue,
            Value<bool> locked = const Value.absent(),
          }) =>
              ArtifactsCompanion.insert(
            id: id,
            setKey: setKey,
            slotKey: slotKey,
            level: level,
            rarity: rarity,
            mainStatKey: mainStatKey,
            mainStatValue: mainStatValue,
            locked: locked,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ArtifactsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {artifactSubStatsRefs = false, characterArtifactsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (artifactSubStatsRefs) db.artifactSubStats,
                if (characterArtifactsRefs) db.characterArtifacts
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (artifactSubStatsRefs)
                    await $_getPrefetchedData<Artifact, $ArtifactsTable,
                            ArtifactSubStat>(
                        currentTable: table,
                        referencedTable: $$ArtifactsTableReferences
                            ._artifactSubStatsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ArtifactsTableReferences(db, table, p0)
                                .artifactSubStatsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.artifactId == item.id),
                        typedResults: items),
                  if (characterArtifactsRefs)
                    await $_getPrefetchedData<Artifact, $ArtifactsTable,
                            CharacterArtifact>(
                        currentTable: table,
                        referencedTable: $$ArtifactsTableReferences
                            ._characterArtifactsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ArtifactsTableReferences(db, table, p0)
                                .characterArtifactsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.artifactId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ArtifactsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ArtifactsTable,
    Artifact,
    $$ArtifactsTableFilterComposer,
    $$ArtifactsTableOrderingComposer,
    $$ArtifactsTableAnnotationComposer,
    $$ArtifactsTableCreateCompanionBuilder,
    $$ArtifactsTableUpdateCompanionBuilder,
    (Artifact, $$ArtifactsTableReferences),
    Artifact,
    PrefetchHooks Function(
        {bool artifactSubStatsRefs, bool characterArtifactsRefs})>;
typedef $$ArtifactSubStatsTableCreateCompanionBuilder
    = ArtifactSubStatsCompanion Function({
  Value<int> id,
  required int artifactId,
  required String statKey,
  required double statValue,
});
typedef $$ArtifactSubStatsTableUpdateCompanionBuilder
    = ArtifactSubStatsCompanion Function({
  Value<int> id,
  Value<int> artifactId,
  Value<String> statKey,
  Value<double> statValue,
});

final class $$ArtifactSubStatsTableReferences extends BaseReferences<
    _$AppDatabase, $ArtifactSubStatsTable, ArtifactSubStat> {
  $$ArtifactSubStatsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ArtifactsTable _artifactIdTable(_$AppDatabase db) =>
      db.artifacts.createAlias($_aliasNameGenerator(
          db.artifactSubStats.artifactId, db.artifacts.id));

  $$ArtifactsTableProcessedTableManager get artifactId {
    final $_column = $_itemColumn<int>('artifact_id')!;

    final manager = $$ArtifactsTableTableManager($_db, $_db.artifacts)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_artifactIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ArtifactSubStatsTableFilterComposer
    extends Composer<_$AppDatabase, $ArtifactSubStatsTable> {
  $$ArtifactSubStatsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get statKey => $composableBuilder(
      column: $table.statKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get statValue => $composableBuilder(
      column: $table.statValue, builder: (column) => ColumnFilters(column));

  $$ArtifactsTableFilterComposer get artifactId {
    final $$ArtifactsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableFilterComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArtifactSubStatsTableOrderingComposer
    extends Composer<_$AppDatabase, $ArtifactSubStatsTable> {
  $$ArtifactSubStatsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get statKey => $composableBuilder(
      column: $table.statKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get statValue => $composableBuilder(
      column: $table.statValue, builder: (column) => ColumnOrderings(column));

  $$ArtifactsTableOrderingComposer get artifactId {
    final $$ArtifactsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableOrderingComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArtifactSubStatsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ArtifactSubStatsTable> {
  $$ArtifactSubStatsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get statKey =>
      $composableBuilder(column: $table.statKey, builder: (column) => column);

  GeneratedColumn<double> get statValue =>
      $composableBuilder(column: $table.statValue, builder: (column) => column);

  $$ArtifactsTableAnnotationComposer get artifactId {
    final $$ArtifactsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableAnnotationComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ArtifactSubStatsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ArtifactSubStatsTable,
    ArtifactSubStat,
    $$ArtifactSubStatsTableFilterComposer,
    $$ArtifactSubStatsTableOrderingComposer,
    $$ArtifactSubStatsTableAnnotationComposer,
    $$ArtifactSubStatsTableCreateCompanionBuilder,
    $$ArtifactSubStatsTableUpdateCompanionBuilder,
    (ArtifactSubStat, $$ArtifactSubStatsTableReferences),
    ArtifactSubStat,
    PrefetchHooks Function({bool artifactId})> {
  $$ArtifactSubStatsTableTableManager(
      _$AppDatabase db, $ArtifactSubStatsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ArtifactSubStatsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ArtifactSubStatsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ArtifactSubStatsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> artifactId = const Value.absent(),
            Value<String> statKey = const Value.absent(),
            Value<double> statValue = const Value.absent(),
          }) =>
              ArtifactSubStatsCompanion(
            id: id,
            artifactId: artifactId,
            statKey: statKey,
            statValue: statValue,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int artifactId,
            required String statKey,
            required double statValue,
          }) =>
              ArtifactSubStatsCompanion.insert(
            id: id,
            artifactId: artifactId,
            statKey: statKey,
            statValue: statValue,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ArtifactSubStatsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({artifactId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (artifactId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.artifactId,
                    referencedTable:
                        $$ArtifactSubStatsTableReferences._artifactIdTable(db),
                    referencedColumn: $$ArtifactSubStatsTableReferences
                        ._artifactIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ArtifactSubStatsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ArtifactSubStatsTable,
    ArtifactSubStat,
    $$ArtifactSubStatsTableFilterComposer,
    $$ArtifactSubStatsTableOrderingComposer,
    $$ArtifactSubStatsTableAnnotationComposer,
    $$ArtifactSubStatsTableCreateCompanionBuilder,
    $$ArtifactSubStatsTableUpdateCompanionBuilder,
    (ArtifactSubStat, $$ArtifactSubStatsTableReferences),
    ArtifactSubStat,
    PrefetchHooks Function({bool artifactId})>;
typedef $$CharacterArtifactsTableCreateCompanionBuilder
    = CharacterArtifactsCompanion Function({
  Value<int> id,
  required int characterId,
  required int artifactId,
});
typedef $$CharacterArtifactsTableUpdateCompanionBuilder
    = CharacterArtifactsCompanion Function({
  Value<int> id,
  Value<int> characterId,
  Value<int> artifactId,
});

final class $$CharacterArtifactsTableReferences extends BaseReferences<
    _$AppDatabase, $CharacterArtifactsTable, CharacterArtifact> {
  $$CharacterArtifactsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $CharactersTable _characterIdTable(_$AppDatabase db) =>
      db.characters.createAlias($_aliasNameGenerator(
          db.characterArtifacts.characterId, db.characters.id));

  $$CharactersTableProcessedTableManager get characterId {
    final $_column = $_itemColumn<int>('character_id')!;

    final manager = $$CharactersTableTableManager($_db, $_db.characters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_characterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ArtifactsTable _artifactIdTable(_$AppDatabase db) =>
      db.artifacts.createAlias($_aliasNameGenerator(
          db.characterArtifacts.artifactId, db.artifacts.id));

  $$ArtifactsTableProcessedTableManager get artifactId {
    final $_column = $_itemColumn<int>('artifact_id')!;

    final manager = $$ArtifactsTableTableManager($_db, $_db.artifacts)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_artifactIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CharacterArtifactsTableFilterComposer
    extends Composer<_$AppDatabase, $CharacterArtifactsTable> {
  $$CharacterArtifactsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  $$CharactersTableFilterComposer get characterId {
    final $$CharactersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableFilterComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ArtifactsTableFilterComposer get artifactId {
    final $$ArtifactsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableFilterComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterArtifactsTableOrderingComposer
    extends Composer<_$AppDatabase, $CharacterArtifactsTable> {
  $$CharacterArtifactsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  $$CharactersTableOrderingComposer get characterId {
    final $$CharactersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableOrderingComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ArtifactsTableOrderingComposer get artifactId {
    final $$ArtifactsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableOrderingComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterArtifactsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharacterArtifactsTable> {
  $$CharacterArtifactsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$CharactersTableAnnotationComposer get characterId {
    final $$CharactersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableAnnotationComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ArtifactsTableAnnotationComposer get artifactId {
    final $$ArtifactsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.artifactId,
        referencedTable: $db.artifacts,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ArtifactsTableAnnotationComposer(
              $db: $db,
              $table: $db.artifacts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterArtifactsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharacterArtifactsTable,
    CharacterArtifact,
    $$CharacterArtifactsTableFilterComposer,
    $$CharacterArtifactsTableOrderingComposer,
    $$CharacterArtifactsTableAnnotationComposer,
    $$CharacterArtifactsTableCreateCompanionBuilder,
    $$CharacterArtifactsTableUpdateCompanionBuilder,
    (CharacterArtifact, $$CharacterArtifactsTableReferences),
    CharacterArtifact,
    PrefetchHooks Function({bool characterId, bool artifactId})> {
  $$CharacterArtifactsTableTableManager(
      _$AppDatabase db, $CharacterArtifactsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharacterArtifactsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CharacterArtifactsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharacterArtifactsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> characterId = const Value.absent(),
            Value<int> artifactId = const Value.absent(),
          }) =>
              CharacterArtifactsCompanion(
            id: id,
            characterId: characterId,
            artifactId: artifactId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int characterId,
            required int artifactId,
          }) =>
              CharacterArtifactsCompanion.insert(
            id: id,
            characterId: characterId,
            artifactId: artifactId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CharacterArtifactsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({characterId = false, artifactId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (characterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.characterId,
                    referencedTable: $$CharacterArtifactsTableReferences
                        ._characterIdTable(db),
                    referencedColumn: $$CharacterArtifactsTableReferences
                        ._characterIdTable(db)
                        .id,
                  ) as T;
                }
                if (artifactId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.artifactId,
                    referencedTable: $$CharacterArtifactsTableReferences
                        ._artifactIdTable(db),
                    referencedColumn: $$CharacterArtifactsTableReferences
                        ._artifactIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CharacterArtifactsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CharacterArtifactsTable,
    CharacterArtifact,
    $$CharacterArtifactsTableFilterComposer,
    $$CharacterArtifactsTableOrderingComposer,
    $$CharacterArtifactsTableAnnotationComposer,
    $$CharacterArtifactsTableCreateCompanionBuilder,
    $$CharacterArtifactsTableUpdateCompanionBuilder,
    (CharacterArtifact, $$CharacterArtifactsTableReferences),
    CharacterArtifact,
    PrefetchHooks Function({bool characterId, bool artifactId})>;
typedef $$CharacterSummariesTableCreateCompanionBuilder
    = CharacterSummariesCompanion Function({
  Value<int> id,
  required int characterId,
  required String role,
  required double buildCompleteness,
  required double artifactEfficiency,
  required double weaponMatch,
  required int investmentPriority,
  required String strengths,
  required String weaknesses,
  required double talentProgress,
  required double ascensionProgress,
  required double weaponProgress,
  required double overallProgress,
  required DateTime lastUpdated,
});
typedef $$CharacterSummariesTableUpdateCompanionBuilder
    = CharacterSummariesCompanion Function({
  Value<int> id,
  Value<int> characterId,
  Value<String> role,
  Value<double> buildCompleteness,
  Value<double> artifactEfficiency,
  Value<double> weaponMatch,
  Value<int> investmentPriority,
  Value<String> strengths,
  Value<String> weaknesses,
  Value<double> talentProgress,
  Value<double> ascensionProgress,
  Value<double> weaponProgress,
  Value<double> overallProgress,
  Value<DateTime> lastUpdated,
});

final class $$CharacterSummariesTableReferences extends BaseReferences<
    _$AppDatabase, $CharacterSummariesTable, CharacterSummary> {
  $$CharacterSummariesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $CharactersTable _characterIdTable(_$AppDatabase db) =>
      db.characters.createAlias($_aliasNameGenerator(
          db.characterSummaries.characterId, db.characters.id));

  $$CharactersTableProcessedTableManager get characterId {
    final $_column = $_itemColumn<int>('character_id')!;

    final manager = $$CharactersTableTableManager($_db, $_db.characters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_characterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CharacterSummariesTableFilterComposer
    extends Composer<_$AppDatabase, $CharacterSummariesTable> {
  $$CharacterSummariesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get buildCompleteness => $composableBuilder(
      column: $table.buildCompleteness,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get artifactEfficiency => $composableBuilder(
      column: $table.artifactEfficiency,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weaponMatch => $composableBuilder(
      column: $table.weaponMatch, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get investmentPriority => $composableBuilder(
      column: $table.investmentPriority,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get strengths => $composableBuilder(
      column: $table.strengths, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get weaknesses => $composableBuilder(
      column: $table.weaknesses, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get talentProgress => $composableBuilder(
      column: $table.talentProgress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get ascensionProgress => $composableBuilder(
      column: $table.ascensionProgress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weaponProgress => $composableBuilder(
      column: $table.weaponProgress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get overallProgress => $composableBuilder(
      column: $table.overallProgress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnFilters(column));

  $$CharactersTableFilterComposer get characterId {
    final $$CharactersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableFilterComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterSummariesTableOrderingComposer
    extends Composer<_$AppDatabase, $CharacterSummariesTable> {
  $$CharacterSummariesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get buildCompleteness => $composableBuilder(
      column: $table.buildCompleteness,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get artifactEfficiency => $composableBuilder(
      column: $table.artifactEfficiency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weaponMatch => $composableBuilder(
      column: $table.weaponMatch, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get investmentPriority => $composableBuilder(
      column: $table.investmentPriority,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get strengths => $composableBuilder(
      column: $table.strengths, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get weaknesses => $composableBuilder(
      column: $table.weaknesses, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get talentProgress => $composableBuilder(
      column: $table.talentProgress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get ascensionProgress => $composableBuilder(
      column: $table.ascensionProgress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weaponProgress => $composableBuilder(
      column: $table.weaponProgress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get overallProgress => $composableBuilder(
      column: $table.overallProgress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => ColumnOrderings(column));

  $$CharactersTableOrderingComposer get characterId {
    final $$CharactersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableOrderingComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterSummariesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharacterSummariesTable> {
  $$CharacterSummariesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<double> get buildCompleteness => $composableBuilder(
      column: $table.buildCompleteness, builder: (column) => column);

  GeneratedColumn<double> get artifactEfficiency => $composableBuilder(
      column: $table.artifactEfficiency, builder: (column) => column);

  GeneratedColumn<double> get weaponMatch => $composableBuilder(
      column: $table.weaponMatch, builder: (column) => column);

  GeneratedColumn<int> get investmentPriority => $composableBuilder(
      column: $table.investmentPriority, builder: (column) => column);

  GeneratedColumn<String> get strengths =>
      $composableBuilder(column: $table.strengths, builder: (column) => column);

  GeneratedColumn<String> get weaknesses => $composableBuilder(
      column: $table.weaknesses, builder: (column) => column);

  GeneratedColumn<double> get talentProgress => $composableBuilder(
      column: $table.talentProgress, builder: (column) => column);

  GeneratedColumn<double> get ascensionProgress => $composableBuilder(
      column: $table.ascensionProgress, builder: (column) => column);

  GeneratedColumn<double> get weaponProgress => $composableBuilder(
      column: $table.weaponProgress, builder: (column) => column);

  GeneratedColumn<double> get overallProgress => $composableBuilder(
      column: $table.overallProgress, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
      column: $table.lastUpdated, builder: (column) => column);

  $$CharactersTableAnnotationComposer get characterId {
    final $$CharactersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.characterId,
        referencedTable: $db.characters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CharactersTableAnnotationComposer(
              $db: $db,
              $table: $db.characters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CharacterSummariesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharacterSummariesTable,
    CharacterSummary,
    $$CharacterSummariesTableFilterComposer,
    $$CharacterSummariesTableOrderingComposer,
    $$CharacterSummariesTableAnnotationComposer,
    $$CharacterSummariesTableCreateCompanionBuilder,
    $$CharacterSummariesTableUpdateCompanionBuilder,
    (CharacterSummary, $$CharacterSummariesTableReferences),
    CharacterSummary,
    PrefetchHooks Function({bool characterId})> {
  $$CharacterSummariesTableTableManager(
      _$AppDatabase db, $CharacterSummariesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharacterSummariesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CharacterSummariesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharacterSummariesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> characterId = const Value.absent(),
            Value<String> role = const Value.absent(),
            Value<double> buildCompleteness = const Value.absent(),
            Value<double> artifactEfficiency = const Value.absent(),
            Value<double> weaponMatch = const Value.absent(),
            Value<int> investmentPriority = const Value.absent(),
            Value<String> strengths = const Value.absent(),
            Value<String> weaknesses = const Value.absent(),
            Value<double> talentProgress = const Value.absent(),
            Value<double> ascensionProgress = const Value.absent(),
            Value<double> weaponProgress = const Value.absent(),
            Value<double> overallProgress = const Value.absent(),
            Value<DateTime> lastUpdated = const Value.absent(),
          }) =>
              CharacterSummariesCompanion(
            id: id,
            characterId: characterId,
            role: role,
            buildCompleteness: buildCompleteness,
            artifactEfficiency: artifactEfficiency,
            weaponMatch: weaponMatch,
            investmentPriority: investmentPriority,
            strengths: strengths,
            weaknesses: weaknesses,
            talentProgress: talentProgress,
            ascensionProgress: ascensionProgress,
            weaponProgress: weaponProgress,
            overallProgress: overallProgress,
            lastUpdated: lastUpdated,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int characterId,
            required String role,
            required double buildCompleteness,
            required double artifactEfficiency,
            required double weaponMatch,
            required int investmentPriority,
            required String strengths,
            required String weaknesses,
            required double talentProgress,
            required double ascensionProgress,
            required double weaponProgress,
            required double overallProgress,
            required DateTime lastUpdated,
          }) =>
              CharacterSummariesCompanion.insert(
            id: id,
            characterId: characterId,
            role: role,
            buildCompleteness: buildCompleteness,
            artifactEfficiency: artifactEfficiency,
            weaponMatch: weaponMatch,
            investmentPriority: investmentPriority,
            strengths: strengths,
            weaknesses: weaknesses,
            talentProgress: talentProgress,
            ascensionProgress: ascensionProgress,
            weaponProgress: weaponProgress,
            overallProgress: overallProgress,
            lastUpdated: lastUpdated,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CharacterSummariesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({characterId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (characterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.characterId,
                    referencedTable: $$CharacterSummariesTableReferences
                        ._characterIdTable(db),
                    referencedColumn: $$CharacterSummariesTableReferences
                        ._characterIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CharacterSummariesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CharacterSummariesTable,
    CharacterSummary,
    $$CharacterSummariesTableFilterComposer,
    $$CharacterSummariesTableOrderingComposer,
    $$CharacterSummariesTableAnnotationComposer,
    $$CharacterSummariesTableCreateCompanionBuilder,
    $$CharacterSummariesTableUpdateCompanionBuilder,
    (CharacterSummary, $$CharacterSummariesTableReferences),
    CharacterSummary,
    PrefetchHooks Function({bool characterId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WeaponsTableTableManager get weapons =>
      $$WeaponsTableTableManager(_db, _db.weapons);
  $$CharactersTableTableManager get characters =>
      $$CharactersTableTableManager(_db, _db.characters);
  $$ArtifactsTableTableManager get artifacts =>
      $$ArtifactsTableTableManager(_db, _db.artifacts);
  $$ArtifactSubStatsTableTableManager get artifactSubStats =>
      $$ArtifactSubStatsTableTableManager(_db, _db.artifactSubStats);
  $$CharacterArtifactsTableTableManager get characterArtifacts =>
      $$CharacterArtifactsTableTableManager(_db, _db.characterArtifacts);
  $$CharacterSummariesTableTableManager get characterSummaries =>
      $$CharacterSummariesTableTableManager(_db, _db.characterSummaries);
}
