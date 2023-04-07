// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/launches/launches.dart';
import 'package:falcon/news/news.dart';
import 'package:falcon/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchLibraryRepository extends Mock
    implements LaunchLibraryRepository {}

class MockSpaceflightNewsRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late LaunchLibraryRepository launchLibraryRepository;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      launchLibraryRepository = MockLaunchLibraryRepository();
      spaceflightNewsRepository = MockSpaceflightNewsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => launchLibraryRepository.getLaunches(any()))
          .thenAnswer((_) async => <Launch>[]);
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpApp(
        App(
          launchLibraryRepository: launchLibraryRepository,
          spaceflightNewsRepository: spaceflightNewsRepository,
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(AppView), findsOneWidget);
    });
  });

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

    testWidgets('renders ExplorePage', (tester) async {
      await tester.pumpWidget(
        MultiBlocProvider(
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
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(ExplorePage), findsOneWidget);
    });
  });
}
