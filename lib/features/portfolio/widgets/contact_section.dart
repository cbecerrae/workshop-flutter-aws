import 'package:flutter/material.dart';

import '../../../config/portfolio_config.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/link_launcher.dart';
import 'section_shell.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      child: Container(
        padding: EdgeInsets.all(
          MediaQuery.sizeOf(context).width < 600 ? 28 : 52,
        ),
        decoration: BoxDecoration(
          color: AppColors.ink,
          borderRadius: BorderRadius.circular(32),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final copy = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿TIENES UNA IDEA?',
                  style: TextStyle(
                    color: AppColors.accent,
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.8,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Construyamos algo genial.',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 14),
                Text(
                  'Estoy disponible para colaborar, aprender y convertir '
                  'buenas ideas en experiencias reales.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFFB8BED2),
                  ),
                ),
              ],
            );

            final actions = Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FilledButton.icon(
                  onPressed: () => LinkLauncher.open(
                    context,
                    'mailto:${PortfolioConfig.email}',
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.ink,
                  ),
                  icon: const Icon(Icons.mail_outline_rounded),
                  label: const Text('Escríbeme'),
                ),
                const SizedBox(height: 12),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 2,
                  children: PortfolioConfig.socials
                      .map(
                        (social) => IconButton(
                          onPressed: () =>
                              LinkLauncher.open(context, social.url),
                          tooltip: social.label,
                          color: Colors.white,
                          icon: Icon(social.icon),
                        ),
                      )
                      .toList(),
                ),
              ],
            );

            if (constraints.maxWidth < 760) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [copy, const SizedBox(height: 34), actions],
              );
            }

            return Row(
              children: [
                Expanded(flex: 3, child: copy),
                const SizedBox(width: 72),
                SizedBox(width: 230, child: actions),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({required this.onBackToTop, super.key});

  final VoidCallback onBackToTop;

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      verticalPadding: 28,
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Hecho con Flutter y mucho café.',
              style: TextStyle(color: AppColors.muted, fontSize: 13),
            ),
          ),
          TextButton.icon(
            onPressed: onBackToTop,
            icon: const Icon(Icons.arrow_upward_rounded, size: 17),
            label: const Text('Volver arriba'),
          ),
        ],
      ),
    );
  }
}
