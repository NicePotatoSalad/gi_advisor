import 'package:flutter/material.dart';
import 'package:genshin_advisor/domain/entities/scoring.dart';
import 'package:genshin_advisor/core/theme/app_theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
    required this.onTap,
  });

  final CharacterSummary character;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Character avatar placeholder
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppTheme.getElementColor(character.element),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    character.name.substring(0, 1),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Character info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          character.name,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        _buildRarityStars(character.rarity),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Level ${character.level} • C${character.constellation}',
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          _getRoleIcon(character.role),
                          size: 16,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _getRoleDisplayName(character.role),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Scores and progress
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Investment priority
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.getScoreColor(character.investmentPriority / 100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${character.investmentPriority}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Build completeness
                  Row(
                    children: [
                      Icon(
                        Icons.build,
                        size: 14,
                        color: AppTheme.getScoreColor(character.buildCompleteness),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${(character.buildCompleteness * 100).round()}%',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),

                  // Artifact efficiency
                  Row(
                    children: [
                      Icon(
                        Icons.diamond,
                        size: 14,
                        color: AppTheme.getScoreColor(character.artifactEfficiency),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${(character.artifactEfficiency * 100).round()}%',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRarityStars(int rarity) {
    return Row(
      children: List.generate(
        rarity,
        (index) => const Icon(
          Icons.star,
          size: 14,
          color: Color(0xFFFFD700), // Gold color
        ),
      ),
    );
  }

  IconData _getRoleIcon(CharacterRole role) {
    switch (role) {
      case CharacterRole.mainDps:
        return Icons.flash_on;
      case CharacterRole.subDps:
        return Icons.bolt;
      case CharacterRole.support:
        return Icons.shield;
      case CharacterRole.healer:
        return Icons.healing;
      case CharacterRole.buffer:
        return Icons.trending_up;
      case CharacterRole.driver:
        return Icons.drive_eta;
      case CharacterRole.battery:
        return Icons.battery_full;
    }
  }

  String _getRoleDisplayName(CharacterRole role) {
    switch (role) {
      case CharacterRole.mainDps:
        return 'Main DPS';
      case CharacterRole.subDps:
        return 'Sub DPS';
      case CharacterRole.support:
        return 'Support';
      case CharacterRole.healer:
        return 'Healer';
      case CharacterRole.buffer:
        return 'Buffer';
      case CharacterRole.driver:
        return 'Driver';
      case CharacterRole.battery:
        return 'Battery';
    }
  }
}
