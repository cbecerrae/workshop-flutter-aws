import 'package:flutter/material.dart';

import '../../../config/portfolio_config.dart';
import '../../../core/theme/app_theme.dart';
import 'section_shell.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeading(
            eyebrow: 'Sobre mí',
            title: 'Curiosidad, código y trabajo en equipo.',
          ),
          const SizedBox(height: 44),
          LayoutBuilder(
            builder: (context, constraints) {
              final about = Text(
                PortfolioConfig.about,
                style: Theme.of(context).textTheme.bodyLarge,
              );
              final details = const Column(
                children: [
                  _InfoTile(
                    icon: Icons.location_on_outlined,
                    label: 'Ubicación',
                    value: PortfolioConfig.location,
                  ),
                  SizedBox(height: 14),
                  _InfoTile(
                    icon: Icons.mail_outline_rounded,
                    label: 'Correo',
                    value: PortfolioConfig.email,
                  ),
                  SizedBox(height: 14),
                  _InfoTile(
                    icon: Icons.work_history_outlined,
                    label: 'Estado',
                    value: PortfolioConfig.availability,
                  ),
                ],
              );

              if (constraints.maxWidth < 760) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [about, const SizedBox(height: 32), details],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: about),
                  const SizedBox(width: 72),
                  Expanded(child: details),
                ],
              );
            },
          ),
          const SizedBox(height: 54),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                children: PortfolioConfig.stats
                    .map(
                      (stat) => SizedBox(
                        width: constraints.maxWidth < 600
                            ? constraints.maxWidth
                            : (constraints.maxWidth - 32) / 3,
                        child: _StatCard(value: stat.value, label: stat.label),
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

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.primarySoft,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(icon, color: AppColors.primary, size: 22),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppColors.muted),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  color: AppColors.ink,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(color: AppColors.primary),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: AppColors.ink,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
