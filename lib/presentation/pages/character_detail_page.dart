import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CharacterDetailPage extends ConsumerWidget {
  const CharacterDetailPage({
    super.key,
    required this.characterKey,
  });

  final String characterKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Implement character detail provider
    // For now, show a placeholder

    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () => context.go('/chat/$characterKey'),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('Character Detail Page'),
            SizedBox(height: 8),
            Text('Coming soon...', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
