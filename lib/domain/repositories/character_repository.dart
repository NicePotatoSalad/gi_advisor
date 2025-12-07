import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';

abstract class CharacterRepository {
  Future<List<Character>> getAllCharacters();
  Future<Character?> getCharacterByKey(String key);
  Future<void> saveCharacter(Character character);
  Future<void> saveCharacters(List<Character> characters);
  Future<void> updateCharacterSummary(String characterKey, CharacterSummary summary);
  Future<CharacterSummary?> getCharacterSummary(String characterKey);
  Future<List<CharacterSummary>> getAllCharacterSummaries();
  Future<void> deleteCharacter(String key);
  Future<void> deleteAllCharacters();
}

