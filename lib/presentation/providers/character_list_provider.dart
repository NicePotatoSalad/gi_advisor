import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';
import 'package:genshin_advisor/domain/repositories/character_repository.dart';

class CharacterListNotifier extends StateNotifier<AsyncValue<List<CharacterSummary>>> {
  CharacterListNotifier(this._repository) : super(const AsyncValue.loading()) {
    _loadCharacters();
  }

  final CharacterRepository _repository;

  Future<void> _loadCharacters() async {
    state = const AsyncValue.loading();
    try {
      final characters = await _repository.getAllCharacterSummaries();
      state = AsyncValue.data(characters);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refresh() async {
    await _loadCharacters();
  }
}

