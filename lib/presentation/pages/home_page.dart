import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:genshin_advisor/presentation/widgets/character_card.dart';
import 'package:genshin_advisor/core/di/providers.dart';
import 'package:genshin_advisor/presentation/controllers/import_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterListAsync = ref.watch(characterListProvider);

    // Listen to import state changes and show messages
    ref.listen<AsyncValue<ImportResult>>(
      importControllerProvider,
      (previous, next) {
        next.whenData((result) {
          if (result.isSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        result.message ?? 'Import successful',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.green.shade600,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                duration: const Duration(seconds: 3),
              ),
            );
            // Refresh character list
            ref.invalidate(characterListProvider);
            // Reset import state
            ref.read(importControllerProvider.notifier).reset();
          } else if (result.isError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(
                      Icons.error_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        result.message ?? 'Import failed',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.red.shade600,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                duration: const Duration(seconds: 4),
                action: SnackBarAction(
                  label: 'OK',
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ),
            );
            // Reset import state after showing error
            Future.delayed(const Duration(seconds: 4), () {
              ref.read(importControllerProvider.notifier).reset();
            });
          }
        });
      },
    );

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
            onPressed: () => context.push('/settings'),
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
      builder: (dialogContext) => AlertDialog(
        title: const Text('Import Genshin Data'),
        content: const Text(
          'Select a JSON file exported from Genshin Optimizer or GOOD format to import your character data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              await _pickAndImportFile(context, ref);
            },
            child: const Text('Select File'),
          ),
        ],
      ),
    );
  }

  Future<void> _pickAndImportFile(BuildContext context, WidgetRef ref) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        withData: false,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        
        // Show progress dialog
        if (!context.mounted) return;
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (dialogContext) => PopScope(
            canPop: false,
            child: AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  const Text('Importing characters...'),
                  const SizedBox(height: 8),
                  Text(
                    'File: ${file.path.split('/').last}',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );

        // Import the file
        await ref.read(importControllerProvider.notifier).importFromFile(file);

        // Close progress dialog
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      }
    } catch (e) {
      if (context.mounted) {
        // Close progress dialog if still open
        Navigator.of(context).pop();
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.error_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Failed to pick file: $e',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.red.shade600,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    }
  }
}

