import 'package:flutter/material.dart';

import '../../../config/portfolio_config.dart';
import '../../../core/theme/app_theme.dart';

class PortfolioHeader extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioHeader({required this.onNavigate, super.key});

  final ValueChanged<int> onNavigate;

  static const _items = <String>[
    'Inicio',
    'Sobre mí',
    'Habilidades',
    'Proyectos',
    'Contacto',
  ];

  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background.withValues(alpha: 0.96),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: preferredSize.height,
      titleSpacing: 0,
      title: LayoutBuilder(
        builder: (context, constraints) {
          final horizontalPadding = constraints.maxWidth < 600 ? 20.0 : 36.0;
          final isDesktop = constraints.maxWidth >= 820;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              children: [
                InkWell(
                  onTap: () => onNavigate(0),
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.ink,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: const Text(
                            PortfolioConfig.shortName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          PortfolioConfig.name,
                          style: TextStyle(
                            color: AppColors.ink,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                if (isDesktop)
                  ...List.generate(
                    _items.length,
                    (index) => TextButton(
                      onPressed: () => onNavigate(index),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.ink,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                      ),
                      child: Text(_items[index]),
                    ),
                  )
                else
                  PopupMenuButton<int>(
                    tooltip: 'Abrir navegación',
                    icon: const Icon(Icons.menu_rounded, color: AppColors.ink),
                    onSelected: onNavigate,
                    itemBuilder: (context) => List.generate(
                      _items.length,
                      (index) => PopupMenuItem(
                        value: index,
                        child: Text(_items[index]),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(height: 1, color: AppColors.border),
      ),
    );
  }
}
