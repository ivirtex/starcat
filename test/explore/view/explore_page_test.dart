// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/starship/starship.dart';
import 'package:starcat/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

class MockNewsBloc extends MockBloc<NewsEvent, NewsState> implements NewsBloc {}

class MockStarshipDashboardBloc
    extends MockBloc<StarshipDashboardEvent, StarshipDashboardState>
    implements StarshipDashboardBloc {}

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  group('ExplorePage', () {
    late LaunchesBloc launchesBloc;
    late NewsBloc newsBloc;
    late NotificationsCubit notificationsCubit;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      newsBloc = MockNewsBloc();
      notificationsCubit = MockNotificationsCubit();

      when(() => launchesBloc.state).thenReturn(const LaunchesState());

      when(() => newsBloc.add(const NewsFetchRequested()))
          .thenAnswer((_) async => <Article>[]);
      when(() => newsBloc.state).thenReturn(const NewsState());

      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(
          hasNotificationsPreferenceModalBeenShown: true,
        ),
      );
    });

    testWidgets('renders ExplorePage', (WidgetTester tester) async {
      await tester.pumpApp(
        launchesBloc: launchesBloc,
        newsBloc: newsBloc,
        notificationsCubit: notificationsCubit,
        const ExplorePage(),
      );

      await tester.pump(const Duration(seconds: 3));
    });
  });

  group('ExploreView', () {
    late LaunchesBloc launchesBloc;
    late NewsBloc newsBloc;
    late NotificationsCubit notificationsCubit;

    setUp(() {
      launchesBloc = MockLaunchesBloc();
      newsBloc = MockNewsBloc();
      notificationsCubit = MockNotificationsCubit();

      when(() => launchesBloc.state).thenReturn(
        const LaunchesState(upcomingLaunchesStatus: LaunchesStatus.success),
      );

      when(() => newsBloc.add(const NewsFetchRequested()))
          .thenAnswer((_) async => <Article>[]);
      when(() => newsBloc.state).thenReturn(const NewsState());

      when(() => notificationsCubit.state).thenReturn(
        const NotificationsState(
          hasNotificationsPreferenceModalBeenShown: true,
        ),
      );
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
          notificationsCubit: notificationsCubit,
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
          const LaunchesState(upcomingLaunchesStatus: LaunchesStatus.loading),
        );
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.loading),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          notificationsCubit: notificationsCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.byType(NextLaunchCardPlaceholder), findsOneWidget);
        expect(find.byType(UpcomingLaunchesPlaceholder), findsOneWidget);
      },
    );

    testWidgets(
      'dispatches snackbar with failure message for LaunchesStatus.failure',
      (WidgetTester tester) async {
        final expectedLaunchesState = [
          const LaunchesState(upcomingLaunchesStatus: LaunchesStatus.failure),
        ];

        whenListen(launchesBloc, Stream.fromIterable(expectedLaunchesState));

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          notificationsCubit: notificationsCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.text(kLaunchesUpdateErrorText), findsOneWidget);
      },
    );

    testWidgets(
      'dispatches snackbar with failure message for NewsStatus.failure',
      (WidgetTester tester) async {
        // Ensure that article preview is created in the sliver
        await tester.binding.setSurfaceSize(const Size(500, 1000));

        final expectedNewsState = [
          const NewsState(status: NewsStatus.failure),
        ];

        whenListen(
          newsBloc,
          Stream.fromIterable(expectedNewsState),
          initialState: const NewsState(status: NewsStatus.failure),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          notificationsCubit: notificationsCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.text(kNewsUpdateErrorText), findsOneWidget);

        addTearDown(() => tester.binding.setSurfaceSize(null));
      },
    );

    testWidgets(
      'renders ExploreCard with launches for LaunchesStatus.success',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(
            upcomingLaunchesStatus: LaunchesStatus.success,
          ),
        );
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.success),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          notificationsCubit: notificationsCubit,
          const ExploreView(),
        );

        await tester.pump(const Duration(seconds: 3));

        expect(find.byType(NextLaunchCard), findsOneWidget);
      },
    );

    testWidgets(
      'pull to refresh reloads launches and news',
      (WidgetTester tester) async {
        when(() => launchesBloc.state).thenReturn(
          const LaunchesState(
            upcomingLaunchesStatus: LaunchesStatus.success,
          ),
        );
        when(() => newsBloc.state).thenReturn(
          const NewsState(status: NewsStatus.success),
        );

        await tester.pumpApp(
          launchesBloc: launchesBloc,
          newsBloc: newsBloc,
          notificationsCubit: notificationsCubit,
          const ExploreView(),
        );
        await tester.pumpAndSettle();

        await tester.drag(
          find.byType(CustomScrollView),
          const Offset(0, 300),
        );
        await tester.pumpAndSettle();

        // First call is in initState and second is triggered by pull to refresh
        verify(() => launchesBloc.add(const ExploreLaunchesRequested()))
            .called(2);
        verify(() => newsBloc.add(const NewsFetchRequested())).called(2);
      },
    );
  });
}
