// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:space_devs_repository/space_devs_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockSpaceDevsRepository extends Mock implements SpaceDevsRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

void main() {
  initHydratedStorage();

  group('AppView iOS', () {
    late SpaceDevsRepository spaceDevsRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      spaceDevsRepository = MockSpaceDevsRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches(results: [Launch()]));
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
                create: (context) => ExploreCubit(
                  spaceDevsRepository,
                  spaceflightNewsRepository,
                ),
              ),
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
