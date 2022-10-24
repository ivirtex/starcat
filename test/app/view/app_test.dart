// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockSpaceXInfoRepository extends Mock implements SpaceXInfoRepository {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late SpaceXInfoRepository spaceXInfoRepository;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches());
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

      registerFallbackValue(LaunchTime.upcoming);
      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches());
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
