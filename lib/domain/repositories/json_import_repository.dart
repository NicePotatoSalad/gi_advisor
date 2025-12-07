import 'dart:io';
import 'package:genshin_advisor/domain/entities/character.dart';

abstract class JsonImportRepository {
  Future<List<Character>> parseJsonFile(File file);
  Future<bool> validateJsonFormat(String jsonContent);
  Future<String> detectJsonFormat(String jsonContent);
  Future<Map<String, dynamic>> normalizeJsonData(String jsonContent, String format);
}

