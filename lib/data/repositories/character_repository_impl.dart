import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';
import 'package:genshin_advisor/domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  @override
  Future<List<Character>> getAllCharacters() async {
    // TODO: Implement with database
    return [];
  }

  @override
  Future<Character?> getCharacterByKey(String key) async {
    // TODO: Implement with database
    return null;
  }

  @override
  Future<void> saveCharacter(Character character) async {
    // TODO: Implement with database
  }

  @override
  Future<void> saveCharacters(List<Character> characters) async {
    // TODO: Implement with database
  }

  @override
  Future<void> updateCharacterSummary(String characterKey, CharacterSummary summary) async {
    // TODO: Implement with database
  }

  @override
  Future<CharacterSummary?> getCharacterSummary(String characterKey) async {
    // TODO: Implement with database
    return null;
  }

  @override
  Future<List<CharacterSummary>> getAllCharacterSummaries() async {
    // TODO: Implement with database
    return [];
  }

  @override
  Future<void> deleteCharacter(String key) async {
    // TODO: Implement with database
  }

  @override
  Future<void> deleteAllCharacters() async {
    // TODO: Implement with database
  }
}
