// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';

final lightTheme = FlexThemeData.light(
  useMaterial3: true,
  fontFamily: 'D-DIN',
  subThemesData: const FlexSubThemesData(
    elevatedButtonRadius: 10,
    outlinedButtonRadius: 10,
    textButtonRadius: 10,
    cardRadius: 10,
  ),
  colors: const FlexSchemeColor(
    primary: Color(0xffffffff),
    primaryContainer: Color(0xfffcfcfc),
    secondary: Color(0xff000000),
    secondaryContainer: Color(0xff101010),
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
  fontFamily: 'D-DIN',
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

const _cupertinoTextThemeData = CupertinoTextThemeData();

final cupertinoTheme = CupertinoThemeData(
  primaryColor: CupertinoColors.white,
  primaryContrastingColor: CupertinoColors.black,
  barBackgroundColor: CupertinoColors.systemBackground,
  textTheme: CupertinoTextThemeData(
    textStyle: _cupertinoTextThemeData.textStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    actionTextStyle: _cupertinoTextThemeData.actionTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    tabLabelTextStyle: _cupertinoTextThemeData.tabLabelTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    navTitleTextStyle: _cupertinoTextThemeData.navTitleTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    navLargeTitleTextStyle:
        _cupertinoTextThemeData.navLargeTitleTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    navActionTextStyle: _cupertinoTextThemeData.navActionTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    pickerTextStyle: _cupertinoTextThemeData.pickerTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
    dateTimePickerTextStyle:
        _cupertinoTextThemeData.dateTimePickerTextStyle.copyWith(
      fontFamily: 'D-DIN',
    ),
  ),
);
