import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:genshin_advisor/core/config/app_config.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Characters,
    Weapons,
    Artifacts,
    ArtifactSubStats,
    CharacterArtifacts,
    CharacterSummaries,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => AppConfig.databaseVersion;

  static QueryExecutor _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, AppConfig.databaseName));
      return NativeDatabase(file);
    });
  }
}

// Characters table
class Characters extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get name => text()();
  TextColumn get element => text()();
  IntColumn get rarity => integer()();
  IntColumn get level => integer()();
  IntColumn get constellation => integer()();
  IntColumn get weaponId => integer().references(Weapons, #id)();
  IntColumn get friendship => integer()();
  IntColumn get ascension => integer()();
  RealColumn get hp => real()();
  RealColumn get atk => real()();
  RealColumn get def => real()();
  RealColumn get critRate => real()();
  RealColumn get critDmg => real()();
  RealColumn get energyRecharge => real()();
  RealColumn get elementalMastery => real()();
  RealColumn get physicalDmgBonus => real()();
  RealColumn get anemoDmgBonus => real()();
  RealColumn get geoDmgBonus => real()();
  RealColumn get electroDmgBonus => real()();
  RealColumn get dendroDmgBonus => real()();
  RealColumn get hydroDmgBonus => real()();
  RealColumn get pyroDmgBonus => real()();
  RealColumn get cryoDmgBonus => real()();
  RealColumn get healingBonus => real()();
  IntColumn get autoTalent => integer()();
  IntColumn get skillTalent => integer()();
  IntColumn get burstTalent => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

// Weapons table
class Weapons extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get name => text()();
  TextColumn get type => text()();
  IntColumn get rarity => integer()();
  IntColumn get level => integer()();
  IntColumn get ascension => integer()();
  IntColumn get refinement => integer()();
  RealColumn get baseAtk => real()();
  RealColumn get hp => real()();
  RealColumn get atk => real()();
  RealColumn get def => real()();
  RealColumn get hpPercent => real()();
  RealColumn get atkPercent => real()();
  RealColumn get defPercent => real()();
  RealColumn get critRate => real()();
  RealColumn get critDmg => real()();
  RealColumn get energyRecharge => real()();
  RealColumn get elementalMastery => real()();
  RealColumn get physicalDmgBonus => real()();
  RealColumn get anemoDmgBonus => real()();
  RealColumn get geoDmgBonus => real()();
  RealColumn get electroDmgBonus => real()();
  RealColumn get dendroDmgBonus => real()();
  RealColumn get hydroDmgBonus => real()();
  RealColumn get pyroDmgBonus => real()();
  RealColumn get cryoDmgBonus => real()();

  @override
  Set<Column> get primaryKey => {id};
}

// Artifacts table
class Artifacts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get setKey => text()();
  TextColumn get slotKey => text()();
  IntColumn get level => integer()();
  IntColumn get rarity => integer()();
  TextColumn get mainStatKey => text()();
  RealColumn get mainStatValue => real()();
  BoolColumn get locked => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

// Artifact sub-stats table (many-to-many with artifacts)
class ArtifactSubStats extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get artifactId => integer().references(Artifacts, #id)();
  TextColumn get statKey => text()();
  RealColumn get statValue => real()();

  @override
  Set<Column> get primaryKey => {id};
}

// Character-Artifact relationship
class CharacterArtifacts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get characterId => integer().references(Characters, #id)();
  IntColumn get artifactId => integer().references(Artifacts, #id)();

  @override
  Set<Column> get primaryKey => {id};
}

// Character summaries for LLM
class CharacterSummaries extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get characterId => integer().references(Characters, #id)();
  TextColumn get role => text()();
  RealColumn get buildCompleteness => real()();
  RealColumn get artifactEfficiency => real()();
  RealColumn get weaponMatch => real()();
  IntColumn get investmentPriority => integer()();
  TextColumn get strengths => text()(); // JSON string
  TextColumn get weaknesses => text()(); // JSON string
  RealColumn get talentProgress => real()();
  RealColumn get ascensionProgress => real()();
  RealColumn get weaponProgress => real()();
  RealColumn get overallProgress => real()();
  DateTimeColumn get lastUpdated => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
