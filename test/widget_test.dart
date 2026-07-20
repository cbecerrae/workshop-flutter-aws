import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portafolio_plantilla/app.dart';
import 'package:portafolio_plantilla/config/portfolio_config.dart';

void main() {
  testWidgets('muestra la información principal del portafolio', (
    tester,
  ) async {
    await tester.pumpWidget(const PortfolioApp());
    await tester.pump();

    expect(find.text(PortfolioConfig.name), findsOneWidget);
    expect(find.text(PortfolioConfig.headline), findsOneWidget);
    expect(find.text('Ver proyectos'), findsOneWidget);
  });

  testWidgets('usa navegación compacta en móvil', (tester) async {
    await tester.binding.setSurfaceSize(const Size(390, 844));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const PortfolioApp());
    await tester.pump();

    expect(find.byIcon(Icons.menu_rounded), findsOneWidget);
    expect(find.text('Sobre mí'), findsNothing);
  });

  testWidgets('usa navegación completa en escritorio', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1280, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const PortfolioApp());
    await tester.pump();

    expect(find.text('Sobre mí'), findsOneWidget);
    expect(find.widgetWithText(TextButton, 'Proyectos'), findsOneWidget);
    expect(find.byIcon(Icons.menu_rounded), findsNothing);
  });
}
