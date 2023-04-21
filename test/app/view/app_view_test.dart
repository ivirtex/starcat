// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

void main() {
  group('AppView', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[]);
    });

    testWidgets('renders scaffolds with navigation bar', (tester) async {
      await tester.pumpApp(
        launchLibraryRepository: launchLibraryRepository,
        spaceflightNewsRepository: spaceflightNewsRepository,
        const AppView(),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(NavigationBar), findsOneWidget);

      // One scaffold for navigation bar + one for each tab
      expect(find.byType(Scaffold), findsNWidgets(4));
    });
  });
}
