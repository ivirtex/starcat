// Flutter imports:
import 'package:flutter/cupertino.dart';
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
  subThemesData: const FlexSubThemesData(
    elevatedButtonRadius: 10,
    outlinedButtonRadius: 10,
    textButtonRadius: 10,
    cardRadius: 10,
  ),
  colors: spacexTheme.light,
  fontFamily: 'D-DIN',
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
  colors: spacexTheme.dark,
  fontFamily: 'D-DIN',
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
