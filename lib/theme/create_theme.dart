// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';

ThemeData createThemeBasedOn({
  required ColorScheme scheme,
  required Brightness brightness,
}) {
  return FlexColorScheme(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: scheme.copyWith(shadow: Colors.transparent),
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      appBarBackgroundSchemeColor: SchemeColor.background,
      appBarCenterTitle: false,
      adaptiveSplash: FlexAdaptive.apple(),
      splashTypeAdaptive: FlexSplashType.noSplash,
    ),
  ).toTheme;
}
