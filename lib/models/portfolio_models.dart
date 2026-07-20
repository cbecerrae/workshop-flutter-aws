import 'package:flutter/material.dart';

class PortfolioProject {
  const PortfolioProject({
    required this.title,
    required this.description,
    required this.technologies,
    required this.url,
    required this.icon,
  });

  final String title;
  final String description;
  final List<String> technologies;
  final String url;
  final IconData icon;
}

class SkillGroup {
  const SkillGroup({
    required this.title,
    required this.skills,
    required this.icon,
  });

  final String title;
  final List<String> skills;
  final IconData icon;
}

class SocialLink {
  const SocialLink({
    required this.label,
    required this.url,
    required this.icon,
  });

  final String label;
  final String url;
  final IconData icon;
}

class PortfolioStat {
  const PortfolioStat({required this.value, required this.label});

  final String value;
  final String label;
}
