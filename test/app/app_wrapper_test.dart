// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:notifications_repository/notifications_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import '../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockNotificationsRepository extends Mock
    implements NotificationsRepository {}

void main() {
  initHydratedStorage();

  group('AppWrapper', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;
    late NotificationsRepository notificationsRepository;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();
      notificationsRepository = MockNotificationsRepository();

      when(() => launchLibraryRepository.getUpcomingLaunches())
          .thenAnswer((_) async => <Launch>[]);
      when(() => launchLibraryRepository.getPastLaunches())
          .thenAnswer((_) async => <Launch>[]);
      when(() => spaceflightNewsRepository.getNews())
          .thenAnswer((_) async => <Article>[]);
      when(() => notificationsRepository.subscribeToTopic(any()))
          .thenAnswer((invocation) => Future.value());
      when(() => notificationsRepository.unsubscribeFromTopic(any()))
          .thenAnswer((invocation) => Future.value());
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        AppWrapper(
          launchLibraryRepository: launchLibraryRepository,
          spaceflightNewsRepository: spaceflightNewsRepository,
          notificationsRepository: notificationsRepository,
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(AppView), findsOneWidget);
    });

    testWidgets('renders scaffolds with navigation bar', (tester) async {
      await tester.pumpWidget(
        AppWrapper(
          launchLibraryRepository: launchLibraryRepository,
          spaceflightNewsRepository: spaceflightNewsRepository,
          notificationsRepository: notificationsRepository,
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(NavigationBar), findsOneWidget);

      // One scaffold for navigation bar + one for the current tab
      expect(find.byType(Scaffold), findsNWidgets(2));
    });

    testWidgets('switches tabs', (tester) async {
      await tester.pumpWidget(
        AppWrapper(
          launchLibraryRepository: launchLibraryRepository,
          spaceflightNewsRepository: spaceflightNewsRepository,
          notificationsRepository: notificationsRepository,
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Dismiss notifications preference modal
      await tester.tap(find.text('Save'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.explore_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(ExplorePage), findsOneWidget);

      await tester.tap(find.byIcon(Icons.calendar_today_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(LaunchesPage), findsOneWidget);

      await tester.tap(find.byIcon(Icons.article_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(NewsPage), findsOneWidget);
    });

    // testWidgets('switches tabs on iOS', (tester) async {
    //   await tester.pumpApp(
    //     launchLibraryRepository: launchLibraryRepository,
    //     spaceflightNewsRepository: spaceflightNewsRepository,
    //     notificationsCubit: notificationsCubit,
    //     platform: TargetPlatform.iOS,
    //     AppWrapper(
    //       launchLibraryRepository: launchLibraryRepository,
    //       spaceflightNewsRepository: spaceflightNewsRepository,
    //     ),
    //   );

    //   await tester.pumpAndSettle(const Duration(seconds: 3));

    //   await tester.tap(find.byIcon(CupertinoIcons.compass));
    //   await tester.pumpAndSettle();
    //   expect(find.byType(ExplorePage), findsOneWidget);

    //   await tester.tap(find.byIcon(CupertinoIcons.calendar));
    //   await tester.pumpAndSettle();
    //   expect(find.byType(LaunchesPage), findsOneWidget);

    //   await tester.tap(find.byIcon(CupertinoIcons.news));
    //   await tester.pumpAndSettle();
    //   expect(find.byType(NewsPage), findsOneWidget);
    // });
  });
}
