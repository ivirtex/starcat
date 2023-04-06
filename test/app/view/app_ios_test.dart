// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/launches/launches.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

void main() {
  initHydratedStorage();

  group('AppView iOS', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[]);
      when(() => spaceflightNewsRepository.getNews())
          .thenAnswer((_) async => <Article>[]);
    });

    testWidgets('uses CupertinoApp on iOS', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

      await tester.pumpWidget(
        //! Workaround for: https://github.com/flutter/flutter/issues/83788
        Theme(
          data: ThemeData(platform: TargetPlatform.iOS),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ThemeCubit(),
              ),
              BlocProvider(
                create: (context) => LaunchesBloc(
                  launchLibraryRepository,
                ),
              ),
              BlocProvider(
                create: (context) => NewsBloc(
                  spaceflightNewsRepository,
                ),
              )
            ],
            child: const AppView(),
          ),
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(CupertinoApp), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });
  });
}
