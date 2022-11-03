// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockSpaceXInfoRepository extends Mock implements SpaceXInfoRepository {}

class MockExploreCubit extends MockCubit<ExploreState> implements ExploreCubit {
}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

class MockLaunches extends Mock implements Launches {}

void main() {
  group('ExplorePage', () {
    late SpaceXInfoRepository spaceXInfoRepository;
    late ExploreCubit exploreCubit;
    late ThemeCubit themeCubit;
    late Launches launches;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();
      exploreCubit = MockExploreCubit();
      themeCubit = MockThemeCubit();
      launches = MockLaunches();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => launches);
      when(
        () => exploreCubit.fetchLaunches(launchTime: any(named: 'launchTime')),
      ).thenAnswer((_) async => const Launches());
      when(() => exploreCubit.state).thenReturn(const ExploreState());
      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders ExplorePage', (WidgetTester tester) async {
      await tester.pumpApp(
        spaceXInfoRepository: spaceXInfoRepository,
        exploreCubit: exploreCubit,
        themeCubit: themeCubit,
        const ExplorePage(),
      );
    });
  });

  group('ExploreView', () {
    late SpaceXInfoRepository spaceXInfoRepository;
    late ExploreCubit exploreCubit;
    late ThemeCubit themeCubit;
    late Launches launches;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();
      exploreCubit = MockExploreCubit();
      themeCubit = MockThemeCubit();
      launches = MockLaunches();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => launches);
      when(
        () => exploreCubit.fetchLaunches(launchTime: any(named: 'launchTime')),
      ).thenAnswer((_) async => launches);
      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets(
      'renders CircularProgressIndicator for ExploreStatus.initial',
      (WidgetTester tester) async {
        when(() => exploreCubit.state).thenReturn(
          const ExploreState(),
        );

        await tester.pumpApp(
          spaceXInfoRepository: spaceXInfoRepository,
          exploreCubit: exploreCubit,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets(
      'renders CircularProgressIndicator for ExploreStatus.loading',
      (WidgetTester tester) async {
        when(() => exploreCubit.state).thenReturn(
          const ExploreState(status: ExploreStatus.loading),
        );

        await tester.pumpApp(
          spaceXInfoRepository: spaceXInfoRepository,
          exploreCubit: exploreCubit,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets(
      'renders ExploreCard with failure message for ExploreStatus.failure',
      (WidgetTester tester) async {
        when(() => exploreCubit.state).thenReturn(
          const ExploreState(status: ExploreStatus.failure),
        );

        await tester.pumpApp(
          spaceXInfoRepository: spaceXInfoRepository,
          exploreCubit: exploreCubit,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        expect(find.byType(ExploreCard), findsOneWidget);
        expect(find.text('Something went wrong'), findsOneWidget);
      },
    );

    testWidgets(
      'renders ExploreCard with launches for ExploreStatus.success',
      (WidgetTester tester) async {
        when(() => exploreCubit.state).thenReturn(
          const ExploreState(
            status: ExploreStatus.success,
            launches: Launches(
              results: [
                Launch(),
              ],
            ),
          ),
        );

        await tester.pumpApp(
          spaceXInfoRepository: spaceXInfoRepository,
          exploreCubit: exploreCubit,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        expect(find.byType(NextLaunchCard), findsOneWidget);
      },
    );

    //! https://github.com/flutter/flutter/issues/83788
    // testWidgets(
    //   'renders Cupertino style page for iOS',
    //   (WidgetTester tester) async {
    //     debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

    //     when(() => exploreCubit.state).thenReturn(
    //       const ExploreState(
    //         status: ExploreStatus.success,
    //         launches: Launches(
    //           results: [
    //             Launch(),
    //           ],
    //         ),
    //       ),
    //     );

    //     await tester.pumpApp(
    //       spaceXInfoRepository: spaceXInfoRepository,
    //       exploreCubit: exploreCubit,
    //       themeCubit: themeCubit,
    //       const ExploreView(),
    //     );

    //     expect(find.byType(CupertinoPageScaffold), findsOneWidget);
    //     expect(find.byType(Scaffold), findsNothing);

    //     expect(find.byType(CustomScrollView), findsOneWidget);
    //     expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
    //     expect(find.byType(SliverFillRemaining), findsOneWidget);

    //     debugDefaultTargetPlatformOverride = null;
    //   },
    // );
  });
}
