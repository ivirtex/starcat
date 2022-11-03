// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// Package imports:
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

//! Workaround for: https://github.com/flutter/flutter/issues/83788
void main() {
  initHydratedStorage();

  group('AppView iOS', () {
    late SpaceXInfoRepository spaceXInfoRepository;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches());
    });

    testWidgets('uses CupertinoApp on iOS', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
            BlocProvider(
              create: (context) => ExploreCubit(spaceXInfoRepository),
            ),
          ],
          child: const AppView(),
        ),
      );

      expect(find.byType(CupertinoApp), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });
  });
}
