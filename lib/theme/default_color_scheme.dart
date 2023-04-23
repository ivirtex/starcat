// Flutter imports:
import 'package:flutter/material.dart';

final ColorScheme kDefaultLightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Colors.black,
  onPrimary: Colors.white,
  secondary: Colors.grey.shade800,
  secondaryContainer: Colors.black,
  onSecondary: Colors.white,
  onSecondaryContainer: Colors.white,
  tertiary: Colors.red,
  background: Colors.white,
  onBackground: Colors.black,
  surface: Colors.white,
  surfaceVariant: Colors.grey.shade300,
  onSurface: Colors.black,
  outline: Colors.grey.shade700,
  error: Colors.red.shade700,
  onError: Colors.white,
);

final ColorScheme kDefaultDarkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Colors.white,
  onPrimary: Colors.black,
  secondary: Colors.grey.shade200,
  secondaryContainer: Colors.white,
  onSecondary: Colors.black,
  onSecondaryContainer: Colors.black,
  tertiary: Colors.red,
  background: Colors.black,
  onBackground: Colors.white,
  surface: const Color.fromARGB(255, 15, 15, 15),
  surfaceVariant: Colors.grey.shade800,
  onSurface: Colors.white,
  outline: Colors.grey.shade500,
  error: Colors.red.shade700,
  onError: Colors.black,
);
