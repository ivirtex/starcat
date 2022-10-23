// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

import '../../helpers/helpers.dart';

class MockSpaceXInfoRepository extends Mock implements SpaceXInfoRepository {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late SpaceXInfoRepository spaceXInfoRepository;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        App(spaceXInfoRepository: spaceXInfoRepository),
      );

      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    late SpaceXInfoRepository spaceXInfoRepository;
    late ThemeCubit themeCubit;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();
      themeCubit = MockThemeCubit();

      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders ExplorePage', (tester) async {
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: spaceXInfoRepository,
          child: BlocProvider.value(
            value: themeCubit,
            child: const AppView(),
          ),
        ),
      );

      expect(find.byType(ExplorePage), findsOneWidget);
    });
  });
}
