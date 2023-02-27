// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockSpaceDevsRepository extends Mock implements SpaceDevsRepository {}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late SpaceDevsRepository spaceDevsRepository;

    setUp(() {
      spaceDevsRepository = MockSpaceDevsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches(results: [Launch()]));
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpApp(
        App(spaceDevsRepository: spaceDevsRepository),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    late SpaceDevsRepository spaceDevsRepository;

    setUp(() {
      spaceDevsRepository = MockSpaceDevsRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceDevsRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches(results: [Launch()]));
    });

    testWidgets('renders ExplorePage', (tester) async {
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeCubit(),
            ),
            BlocProvider(
              create: (context) => ExploreCubit(spaceDevsRepository),
            ),
          ],
          child: const AppView(),
        ),
      );

      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(ExplorePage), findsOneWidget);
    });
  });
}
