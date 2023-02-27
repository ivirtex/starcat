// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';

final lightTheme = FlexThemeData.light(
  useMaterial3: true,
  appBarBackground: Colors.grey.shade100,
  background: Colors.grey.shade100,
  scaffoldBackground: Colors.grey.shade100,
  subThemesData: const FlexSubThemesData(
    elevatedButtonRadius: 10,
    outlinedButtonRadius: 10,
    textButtonRadius: 10,
    cardRadius: 10,
  ),
  colors: const FlexSchemeColor(
    primary: Color(0xff000000),
    primaryContainer: Color(0xff171717),
    secondary: Color(0xffffffff),
    secondaryContainer: Color(0xfffcfcfc),
    tertiary: Color(0xfff80900),
    tertiaryContainer: Color(0xffd3001b),
    appBarColor: Color(0xfffcfcfc),
    error: Color(0xffcf6679),
  ),
);

final darkTheme = FlexThemeData.dark(
  useMaterial3: true,
  appBarBackground: Colors.black,
  background: Colors.black,
  scaffoldBackground: Colors.black,
  subThemesData: const FlexSubThemesData(
    elevatedButtonRadius: 10,
    outlinedButtonRadius: 10,
    textButtonRadius: 10,
    cardRadius: 10,
  ),
  colors: const FlexSchemeColor(
    primary: Color(0xff000000),
    primaryContainer: Color(0xff171717),
    secondary: Color(0xffffffff),
    secondaryContainer: Color(0xfffcfcfc),
    tertiary: Color(0xfff80900),
    tertiaryContainer: Color(0xffd3001b),
    appBarColor: Color(0xfffcfcfc),
    error: Color(0xffcf6679),
  ),
);

const cupertinoTheme = CupertinoThemeData(
  primaryColor: CupertinoColors.white,
  primaryContrastingColor: CupertinoColors.black,
  barBackgroundColor: CupertinoColors.systemBackground,
);
