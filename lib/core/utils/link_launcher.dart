import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract final class LinkLauncher {
  static Future<void> open(BuildContext context, String value) async {
    final uri = Uri.tryParse(value);
    var opened = false;

    if (uri != null) {
      try {
        opened = await launchUrl(uri, mode: LaunchMode.externalApplication);
      } on Exception {
        opened = false;
      }
    }

    if (!opened && context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('No se pudo abrir el enlace. Revisa la URL.'),
          ),
        );
    }
  }
}
