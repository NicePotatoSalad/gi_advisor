import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';

abstract class AnalysisRepository {
  Future<CharacterAnalysis> analyzeCharacter(Character character);
  Future<CharacterSummary> createCharacterSummary(Character character, CharacterAnalysis analysis);
  Future<List<CharacterSummary>> analyzeAllCharacters(List<Character> characters);
  Future<int> calculateInvestmentPriority(Character character, CharacterAnalysis analysis);
  Future<CharacterRole> determineCharacterRole(Character character);
}
