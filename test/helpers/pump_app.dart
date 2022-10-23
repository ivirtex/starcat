// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:falcon/theme/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget,
    ThemeCubit themeCubit,
    SpaceXInfoRepository spaceXInfoRepository,
  ) {
    return pumpWidget(
      RepositoryProvider.value(
        value: spaceXInfoRepository,
        child: BlocProvider.value(
          value: themeCubit,
          child: MaterialApp(home: widget),
        ),
      ),
    );
  }
}
