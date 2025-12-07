import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:genshin_advisor/core/di/providers.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          context.go('/');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/'),
          ),
        ),
      body: ListView(
        children: [
          // Theme settings
          ListTile(
            title: const Text('Theme'),
            subtitle: const Text('Light / Dark mode'),
            trailing: IconButton(
              icon: Icon(
                theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
            ),
          ),

          const Divider(),

          // Data management
          ListTile(
            title: const Text('Import Data'),
            subtitle: const Text('Import Genshin Impact JSON file'),
            leading: const Icon(Icons.import_export),
            onTap: () {
              // TODO: Implement file import
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Import feature coming soon!')),
              );
            },
          ),

          ListTile(
            title: const Text('Export Data'),
            subtitle: const Text('Export your analysis data'),
            leading: const Icon(Icons.save_alt),
            onTap: () {
              // TODO: Implement data export
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Export feature coming soon!')),
              );
            },
          ),

          ListTile(
            title: const Text('Clear All Data'),
            subtitle: const Text('Remove all imported data'),
            leading: const Icon(Icons.delete_forever, color: Colors.red),
            onTap: () => _showClearDataDialog(context),
          ),

          const Divider(),

          // About
          ListTile(
            title: const Text('About'),
            subtitle: const Text('Version 0.1.0'),
            leading: const Icon(Icons.info),
            onTap: () => _showAboutDialog(context),
          ),

          ListTile(
            title: const Text('Help & Support'),
            leading: const Icon(Icons.help),
            onTap: () {
              // TODO: Show help
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Help section coming soon!')),
              );
            },
          ),
        ],
      ),
      ),
    );
  }

  void _showClearDataDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear All Data'),
        content: const Text(
          'This will permanently delete all imported character data and analysis. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              // TODO: Implement data clearing
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Data cleared (not really implemented yet)')),
              );
            },
            child: const Text('Clear Data'),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'Genshin Advisor',
      applicationVersion: '0.1.0',
      applicationLegalese: '© 2024 Genshin Advisor Team',
      children: [
        const SizedBox(height: 16),
        const Text(
          'Genshin Advisor helps you optimize your Genshin Impact characters using AI-powered analysis and on-device scoring.',
        ),
      ],
    );
  }
}
