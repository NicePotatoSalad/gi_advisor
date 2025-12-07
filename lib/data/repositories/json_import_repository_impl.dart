import 'dart:io';
import 'package:genshin_advisor/domain/entities/character.dart';
import 'package:genshin_advisor/domain/repositories/json_import_repository.dart';
import 'package:genshin_advisor/services/json_import/json_import_service.dart';

/// Implementation of JsonImportRepository using JsonImportService
class JsonImportRepositoryImpl implements JsonImportRepository {
  final JsonImportService _importService;

  JsonImportRepositoryImpl({JsonImportService? importService})
      : _importService = importService ?? JsonImportService();

  @override
  Future<List<Character>> parseJsonFile(File file) async {
    try {
      return await _importService.parseJsonFile(file);
    } on JsonImportException {
      rethrow;
    } catch (e) {
      throw JsonImportException('Failed to parse JSON file: $e');
    }
  }

  @override
  Future<bool> validateJsonFormat(String jsonContent) async {
    try {
      return await _importService.validateJsonFormat(jsonContent);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String> detectJsonFormat(String jsonContent) async {
    try {
      return await _importService.detectJsonFormat(jsonContent);
    } on JsonImportException {
      rethrow;
    } catch (e) {
      throw JsonImportException('Failed to detect JSON format: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> normalizeJsonData(
    String jsonContent,
    String format,
  ) async {
    try {
      return await _importService.normalizeJsonData(jsonContent, format);
    } on JsonImportException {
      rethrow;
    } catch (e) {
      throw JsonImportException('Failed to normalize JSON data: $e');
    }
  }
}

