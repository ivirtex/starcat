// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlAndSetOverlayStyle(
  Uri uri,
  BuildContext context,
) async {
  WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = false;

  final brightness = MediaQuery.of(context).platformBrightness;

  if (brightness == Brightness.light) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  } else {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  await launchUrl(uri);

  WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = true;
}
