import 'package:flutter/material.dart';

import 'widgets/about_section.dart';
import 'widgets/contact_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/portfolio_header.dart';
import 'widgets/projects_section.dart';
import 'widgets/skills_section.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final _sectionKeys = List.generate(5, (index) => GlobalKey());

  void _navigateTo(int index) {
    final context = _sectionKeys[index].currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 550),
      curve: Curves.easeOutCubic,
      alignment: 0.02,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PortfolioHeader(onNavigate: _navigateTo),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(
                key: _sectionKeys[0],
                onViewProjects: () => _navigateTo(3),
                onContact: () => _navigateTo(4),
              ),
              AboutSection(key: _sectionKeys[1]),
              SkillsSection(key: _sectionKeys[2]),
              ProjectsSection(key: _sectionKeys[3]),
              ContactSection(key: _sectionKeys[4]),
              PortfolioFooter(onBackToTop: () => _navigateTo(0)),
            ],
          ),
        ),
      ),
    );
  }
}
