// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:falcon/news/news.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late LaunchLibraryRepository spaceDevsRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      spaceDevsRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[]);
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpApp(
        App(
          spaceDevsRepository: spaceDevsRepository,
          spaceflightNewsRepository: spaceflightNewsRepository,
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    late LaunchLibraryRepository spaceDevsRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      spaceDevsRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[]);
    });

    testWidgets('renders ExplorePage', (tester) async {
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
            BlocProvider(
              create: (context) => ExploreCubit(
                spaceDevsRepository,
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
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(ExplorePage), findsOneWidget);
    });
  });
}
