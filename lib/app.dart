import 'package:flutter/material.dart';

import 'config/portfolio_config.dart';
import 'core/theme/app_theme.dart';
import 'features/portfolio/portfolio_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${PortfolioConfig.name} | Portafolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const PortfolioPage(),
    );
  }
}
