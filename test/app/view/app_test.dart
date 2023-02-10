// Package imports:
import 'package:bloc_test/bloc_test.dart';
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

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  initHydratedStorage();

  group('App', () {
    late SpaceXInfoRepository spaceXInfoRepository;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
          .thenAnswer((_) async => const Launches(results: [Launch()]));
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpApp(
        App(spaceXInfoRepository: spaceXInfoRepository),
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    late SpaceXInfoRepository spaceXInfoRepository;

    setUp(() {
      spaceXInfoRepository = MockSpaceXInfoRepository();

      registerFallbackValue(LaunchTime.upcoming);
      when(() => spaceXInfoRepository.getLaunches(any()))
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
              create: (context) => ExploreCubit(spaceXInfoRepository),
            ),
          ],
          child: const AppView(),
        ),
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(ExplorePage), findsOneWidget);
    });
  });
}
