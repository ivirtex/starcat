// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

class MockNewsBloc extends MockBloc<NewsEvent, NewsState> implements NewsBloc {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

class MockLaunch extends Mock implements Launch {}

void main() {
  group('ExplorePage', () {
    late LaunchesBloc launchesBloc;
    late NewsBloc newsBloc;
    late Launch launch;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      newsBloc = MockNewsBloc();
      launch = MockLaunch();

      when(
        () => launchesBloc
            .add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
      ).thenAnswer((_) async => <Launch>[launch]);
      when(() => launchesBloc.state).thenReturn(const LaunchesState());

      when(() => newsBloc.add(const NewsFetchRequested()))
          .thenAnswer((_) async => <Article>[]);
      when(() => newsBloc.state).thenReturn(const NewsState());
    });

    testWidgets('renders ExplorePage', (WidgetTester tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        newsBloc: newsBloc,
        const ExplorePage(),
      );

      await tester.pump(const Duration(seconds: 3));
    });
  });

  group('ExploreView', () {
    late LaunchesBloc launchesBloc;
    late NewsBloc newsBloc;
    late Launch launches;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      newsBloc = MockNewsBloc();
      launches = MockLaunch();

      when(
        () => launchesBloc
            .add(const LaunchesRequested(launchTime: LaunchTime.upcoming)),
      ).thenAnswer((_) async => launches);
      when(() => launchesBloc.state).thenReturn(const LaunchesState());

      when(() => newsBloc.add(const NewsFetchRequested()))
          .thenAnswer((_) async => <Article>[]);
      when(() => newsBloc.state).thenReturn(const NewsState());
    });

    testWidgets(
      'renders placeholders for LaunchesStatus.initial and NewsStatus.initial',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.byType(NextLaunchCardPlaceholder), findsOneWidget);
        expect(find.byType(UpcomingLaunchesPlaceholder), findsOneWidget);
      },
    );

    testWidgets(
      'renders placeholders for LaunchesStatus.loading and NewsStatus.loading',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(status: LaunchesStatus.loading),
        );
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.loading),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.byType(NextLaunchCardPlaceholder), findsOneWidget);
        expect(find.byType(UpcomingLaunchesPlaceholder), findsOneWidget);
      },
    );

    testWidgets(
      'dispatches snackbars with failure message for LaunchesStatus.failure and NewsStatus.failure',
      (WidgetTester tester) async {
        final expectedLaunchesState = [
          const LaunchesState(status: LaunchesStatus.failure),
        ];

        final expectedNewsState = [
          const NewsState(),
          const NewsState(status: NewsStatus.failure),
        ];

        whenListen(launchesBloc, Stream.fromIterable(expectedLaunchesState));
        whenListen(newsBloc, Stream.fromIterable(expectedNewsState));

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.text(kLaunchesUpdateErrorText), findsOneWidget);

        await tester.pumpAndSettle();
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
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.success),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

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
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.success),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          platform: TargetPlatform.iOS,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.byType(CupertinoPageScaffold), findsOneWidget);
        expect(find.byType(Scaffold), findsNothing);

        expect(find.byType(CustomScrollView), findsOneWidget);
        expect(find.byType(CupertinoSliverNavigationBar), findsOneWidget);
      },
    );
  });
}
