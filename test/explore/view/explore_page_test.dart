// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launches/launches.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockLaunchesBloc extends MockCubit<LaunchesState>
    implements LaunchesBloc {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

class MockLaunch extends Mock implements Launch {}

void main() {
  group('ExplorePage', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late LaunchesBloc launchesBloc;
    late ThemeCubit themeCubit;
    late Launch launch;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      launchesBloc = MockLaunchesBloc();
      themeCubit = MockThemeCubit();
      launch = MockLaunch();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[launch]);
      when(
        () => launchesBloc
            .add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
      ).thenAnswer((_) async => <Launch>[launch]);
      when(() => launchesBloc.state).thenReturn(const LaunchesState());
      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets('renders ExplorePage', (WidgetTester tester) async {
      await tester.pumpApp(
        launchLibraryRepository: launchLibraryRepository,
        launchesBloc: launchesBloc,
        themeCubit: themeCubit,
        const ExplorePage(),
      );

      await tester.pump(const Duration(seconds: 1));
    });
  });

  group('ExploreView', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late LaunchesBloc launchesBloc;
    late ThemeCubit themeCubit;
    late Launch launches;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      launchesBloc = MockLaunchesBloc();
      themeCubit = MockThemeCubit();
      launches = MockLaunch();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[launches]);
      when(
        () => launchesBloc
            .add(LaunchesRequested(launchTime: any(named: 'launchTime'))),
      ).thenAnswer((_) async => launches);
      when(() => themeCubit.state).thenReturn(
        const ThemeState(ThemeMode.system),
      );
    });

    testWidgets(
      'renders CircularProgressIndicator for LaunchesStatus.initial',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(),
        );

        await tester.pumpApp(
          launchLibraryRepository: launchLibraryRepository,
          launchesBloc: launchesBloc,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 1));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets(
      'renders CircularProgressIndicator for LaunchesStatus.loading',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(status: LaunchesStatus.loading),
        );

        await tester.pumpApp(
          launchLibraryRepository: launchLibraryRepository,
          launchesBloc: launchesBloc,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 1));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );

    testWidgets(
      'renders ExploreCard with failure message for LaunchesStatus.failure',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(status: LaunchesStatus.failure),
        );

        await tester.pumpApp(
          launchLibraryRepository: launchLibraryRepository,
          launchesBloc: launchesBloc,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 1));

        expect(find.byType(ExploreCard), findsOneWidget);
        expect(find.text('Something went wrong'), findsOneWidget);
      },
    );

    testWidgets(
      'renders ExploreCard with launches for LaunchesStatus.success',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(
            status: LaunchesStatus.success,
          ),
        );

        await tester.pumpApp(
          launchLibraryRepository: launchLibraryRepository,
          launchesBloc: launchesBloc,
          themeCubit: themeCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 1));

        expect(find.byType(NextLaunchCard), findsOneWidget);
      },
    );

    //! https://github.com/flutter/flutter/issues/83788
    testWidgets(
      'renders Cupertino style page for iOS',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(
            status: LaunchesStatus.success,
          ),
        );

        await tester.pumpApp(
          launchLibraryRepository: launchLibraryRepository,
          launchesBloc: launchesBloc,
          themeCubit: themeCubit,
          platform: TargetPlatform.iOS,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 1));

        expect(find.byType(CupertinoPageScaffold), findsOneWidget);
        expect(find.byType(Scaffold), findsNothing);

        expect(find.byType(CustomScrollView), findsOneWidget);
        expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
      },
    );
  });
}
