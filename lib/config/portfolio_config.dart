import 'package:flutter/material.dart';

import '../models/portfolio_models.dart';

/// EDITA SOLO ESTE ARCHIVO con tu información.
///
/// Después reemplaza `assets/images/profile.png` con tu propia foto.
abstract final class PortfolioConfig {
  static const name = 'Gian Sandoval';
  static const shortName = 'GS';
  static const role = 'Flutter Developer';
  static const greeting = 'Hola, soy';
  static const headline = 'Creo experiencias móviles que se sienten simples.';
  static const introduction =
      'Desarrollo aplicaciones multiplataforma rápidas, accesibles y cuidadas '
      'hasta el último detalle.';
  static const about =
      'Soy desarrollador Flutter con interés en productos digitales que '
      'resuelven problemas reales. Disfruto transformar ideas en interfaces '
      'claras, escribir código mantenible y aprender junto a otros equipos.';
  static const location = 'Lima, Perú';
  static const email = 'hola@tudominio.com';
  static const availability = 'Disponible para nuevos proyectos';
  static const profileImage = 'assets/images/profile.png';

  static const stats = <PortfolioStat>[
    PortfolioStat(value: '3+', label: 'Años creando'),
    PortfolioStat(value: '12', label: 'Proyectos'),
    PortfolioStat(value: '100%', label: 'Con Flutter'),
  ];

  static const skillGroups = <SkillGroup>[
    SkillGroup(
      title: 'Desarrollo',
      icon: Icons.code_rounded,
      skills: ['Dart', 'Flutter', 'REST APIs', 'Firebase'],
    ),
    SkillGroup(
      title: 'Arquitectura',
      icon: Icons.account_tree_outlined,
      skills: ['Clean Code', 'BLoC', 'Provider', 'Testing'],
    ),
    SkillGroup(
      title: 'Herramientas',
      icon: Icons.handyman_outlined,
      skills: ['Git', 'Figma', 'CI/CD', 'Android Studio'],
    ),
  ];

  static const projects = <PortfolioProject>[
    PortfolioProject(
      title: 'Finanzas personales',
      description:
          'Una app para registrar gastos, definir metas y entender mejor tus '
          'hábitos financieros.',
      technologies: ['Flutter', 'Firebase', 'BLoC'],
      url: 'https://github.com/tu-usuario',
      icon: Icons.account_balance_wallet_outlined,
    ),
    PortfolioProject(
      title: 'Explora tu ciudad',
      description:
          'Guía móvil de lugares y experiencias con búsqueda, favoritos y '
          'mapas interactivos.',
      technologies: ['Flutter', 'Maps', 'REST API'],
      url: 'https://github.com/tu-usuario',
      icon: Icons.travel_explore_rounded,
    ),
    PortfolioProject(
      title: 'Rutinas saludables',
      description:
          'Seguimiento de hábitos diarios con recordatorios, progreso y una '
          'experiencia visual motivadora.',
      technologies: ['Flutter', 'Notifications', 'SQLite'],
      url: 'https://github.com/tu-usuario',
      icon: Icons.favorite_outline_rounded,
    ),
  ];

  static const socials = <SocialLink>[
    SocialLink(
      label: 'GitHub',
      url: 'https://github.com/tu-usuario',
      icon: Icons.code_rounded,
    ),
    SocialLink(
      label: 'LinkedIn',
      url: 'https://linkedin.com/in/tu-usuario',
      icon: Icons.work_outline_rounded,
    ),
    SocialLink(
      label: 'Instagram',
      url: 'https://instagram.com/tu-usuario',
      icon: Icons.camera_alt_outlined,
    ),
  ];
}
