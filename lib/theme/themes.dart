// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';

const FlexSchemeData spacexTheme = FlexSchemeData(
  name: 'SpaceX',
  description: '',
  light: FlexSchemeColor(
    primary: Colors.black,
    secondary: Colors.white,
    tertiary: Colors.red,
  ),
  dark: FlexSchemeColor(
    primary: Colors.white,
    secondary: Colors.black,
    tertiary: Colors.red,
  ),
);

final lightTheme = FlexThemeData.light(
  useMaterial3: true,
  subThemesData: const FlexSubThemesData(),
  colors: spacexTheme.light,
  fontFamily: 'D-DIN',
);

final darkTheme = FlexThemeData.dark(
  useMaterial3: true,
  appBarBackground: Colors.black,
  background: Colors.black,
  scaffoldBackground: Colors.black,
  subThemesData: const FlexSubThemesData(),
  colors: spacexTheme.dark,
  fontFamily: 'D-DIN',
);
