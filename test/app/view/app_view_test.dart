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
import 'package:starcat/app/app.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/notifications/notifications.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

void main() {
  group('AppView', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;
    late NotificationsCubit notificationsCubit;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();
      notificationsCubit = MockNotificationsCubit();

      when(() => launchLibraryRepository.getLaunches())
          .thenAnswer((_) async => <Launch>[]);
      when(() => spaceflightNewsRepository.getNews())
          .thenAnswer((_) async => <Article>[]);
      when(
        () => notificationsCubit.state,
      ).thenReturn(
        const NotificationsState(
          hasNotificationsPreferenceModalBeenShown: true,
        ),
      );
    });

    testWidgets('renders scaffolds with navigation bar', (tester) async {
      await tester.pumpApp(
        launchLibraryRepository: launchLibraryRepository,
        spaceflightNewsRepository: spaceflightNewsRepository,
        notificationsCubit: notificationsCubit,
        const AppView(),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(NavigationBar), findsOneWidget);

      // One scaffold for navigation bar + one for the current tab
      expect(find.byType(Scaffold), findsNWidgets(2));
    });

    testWidgets('switches tabs', (tester) async {
      await tester.pumpApp(
        launchLibraryRepository: launchLibraryRepository,
        spaceflightNewsRepository: spaceflightNewsRepository,
        notificationsCubit: notificationsCubit,
        const AppView(),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

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

    testWidgets('switches tabs on iOS', (tester) async {
      await tester.pumpApp(
        launchLibraryRepository: launchLibraryRepository,
        spaceflightNewsRepository: spaceflightNewsRepository,
        notificationsCubit: notificationsCubit,
        platform: TargetPlatform.iOS,
        const AppView(),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.tap(find.byIcon(CupertinoIcons.compass));
      await tester.pumpAndSettle();
      expect(find.byType(ExplorePage), findsOneWidget);

      await tester.tap(find.byIcon(CupertinoIcons.calendar));
      await tester.pumpAndSettle();
      expect(find.byType(LaunchesPage), findsOneWidget);

      await tester.tap(find.byIcon(CupertinoIcons.news));
      await tester.pumpAndSettle();
      expect(find.byType(NewsPage), findsOneWidget);
    });
  });
}
