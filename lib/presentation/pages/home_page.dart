import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:genshin_advisor/presentation/widgets/character_card.dart';
import 'package:genshin_advisor/core/di/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterListAsync = ref.watch(characterListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Genshin Advisor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.import_export),
            onPressed: () => _showImportDialog(context, ref),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: characterListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(characterListProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        data: (characters) {
          if (characters.isEmpty) {
            return _buildEmptyState(context, ref);
          }

          // Sort by investment priority
          final sortedCharacters = [...characters]
            ..sort((a, b) => b.investmentPriority.compareTo(a.investmentPriority));

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(characterListProvider);
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: sortedCharacters.length,
              itemBuilder: (context, index) {
                final character = sortedCharacters[index];
                return CharacterCard(
                  character: character,
                  onTap: () => context.go('/character/${character.key}'),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showImportDialog(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.people_outline, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            'No characters found',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Import your Genshin Impact data to get started',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => _showImportDialog(context, ref),
            icon: const Icon(Icons.import_export),
            label: const Text('Import Data'),
          ),
        ],
      ),
    );
  }

  void _showImportDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Import Genshin Data'),
        content: const Text(
          'Select a JSON file exported from Genshin Optimizer or GOOD format to import your character data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              // TODO: Implement file picker
            },
            child: const Text('Select File'),
          ),
        ],
      ),
    );
  }
}
