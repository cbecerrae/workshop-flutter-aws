import 'package:flutter/material.dart';

import '../../../config/portfolio_config.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/link_launcher.dart';
import 'section_shell.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    required this.onViewProjects,
    required this.onContact,
    super.key,
  });

  final VoidCallback onViewProjects;
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    return SectionShell(
      verticalPadding: 76,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 840;
          final content = _HeroContent(
            onViewProjects: onViewProjects,
            onContact: onContact,
          );
          const avatar = _ProfileImage();

          if (!isWide) {
            return Column(
              children: [content, const SizedBox(height: 56), avatar],
            );
          }

          return Row(
            children: [
              Expanded(flex: 6, child: content),
              const SizedBox(width: 72),
              const Expanded(flex: 4, child: avatar),
            ],
          );
        },
      ),
    );
  }
}

class _HeroContent extends StatelessWidget {
  const _HeroContent({required this.onViewProjects, required this.onContact});

  final VoidCallback onViewProjects;
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmall = MediaQuery.sizeOf(context).width < 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primarySoft,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Color(0xFF37B77B), size: 9),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  PortfolioConfig.availability,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 26),
        Text(
          '${PortfolioConfig.greeting} ${PortfolioConfig.name}.',
          style:
              (isSmall
                      ? theme.textTheme.displaySmall
                      : theme.textTheme.displayLarge)
                  ?.copyWith(color: AppColors.primary),
        ),
        const SizedBox(height: 12),
        Text(
          PortfolioConfig.headline,
          style: isSmall
              ? theme.textTheme.displaySmall
              : theme.textTheme.displayLarge,
        ),
        const SizedBox(height: 22),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 610),
          child: Text(
            PortfolioConfig.introduction,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 32),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              onPressed: onViewProjects,
              icon: const Icon(Icons.arrow_downward_rounded, size: 19),
              label: const Text('Ver proyectos'),
            ),
            OutlinedButton.icon(
              onPressed: onContact,
              icon: const Icon(Icons.waving_hand_outlined, size: 19),
              label: const Text('Hablemos'),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          spacing: 6,
          runSpacing: 4,
          children: PortfolioConfig.socials
              .map(
                (social) => IconButton(
                  onPressed: () => LinkLauncher.open(context, social.url),
                  tooltip: social.label,
                  icon: Icon(social.icon, size: 21),
                  color: AppColors.ink,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 390),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                left: 8,
                right: 34,
                top: 34,
                bottom: 8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(54),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                right: 8,
                top: 8,
                bottom: 28,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(54),
                  child: Image.asset(
                    PortfolioConfig.profileImage,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const ColoredBox(
                          color: AppColors.primarySoft,
                          child: Icon(
                            Icons.person_rounded,
                            size: 120,
                            color: AppColors.primary,
                          ),
                        ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 44,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1F111936),
                        blurRadius: 22,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.flutter_dash_rounded,
                    color: AppColors.primary,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
