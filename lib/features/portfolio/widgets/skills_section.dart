import 'package:flutter/material.dart';

import '../../../config/portfolio_config.dart';
import '../../../core/theme/app_theme.dart';
import '../../../models/portfolio_models.dart';
import 'section_shell.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'Habilidades',
            title: 'Las herramientas con las que convierto ideas en productos.',
            description:
                'Una selección breve de tecnologías y prácticas que uso en mi '
                'día a día.',
          ),
          const SizedBox(height: 44),
          LayoutBuilder(
            builder: (context, constraints) {
              final columns = switch (constraints.maxWidth) {
                >= 900 => 3,
                >= 560 => 2,
                _ => 1,
              };
              const spacing = 18.0;
              final cardWidth =
                  (constraints.maxWidth - spacing * (columns - 1)) / columns;

              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: PortfolioConfig.skillGroups
                    .map(
                      (group) => SizedBox(
                        width: cardWidth,
                        child: _SkillCard(group: group),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkillCard extends StatelessWidget {
  const _SkillCard({required this.group});

  final SkillGroup group;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primarySoft,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(group.icon, color: AppColors.primary, size: 25),
          ),
          const SizedBox(height: 22),
          Text(group.title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 18),
          ...group.skills.map(
            (skill) => Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle_rounded,
                    color: AppColors.accent,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    skill,
                    style: const TextStyle(
                      color: AppColors.muted,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
