// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    SpaceXInfoRepository? spaceXInfoRepository,
    ExploreCubit? exploreCubit,
    ThemeCubit? themeCubit,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: spaceXInfoRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: themeCubit ?? ThemeCubit(),
            ),
            BlocProvider.value(
              value: exploreCubit ??
                  ExploreCubit(spaceXInfoRepository ?? SpaceXInfoRepository()),
            ),
          ],
          child: Builder(
            builder: (context) {
              if (Platform.isIOS) {
                return CupertinoApp(
                  theme: cupertinoTheme.resolveFrom(context),
                  home: widget,
                );
              } else {
                return MaterialApp(
                  themeMode: themeCubit?.state.themeMode,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  home: widget,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
