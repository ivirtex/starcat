// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState> implements ExploreCubit {
}

void main() {
  initHydratedStorage();

  const launches = Launches(
    results: [
      Launch(
        id: '123',
        pad: Pad(
          name: 'Pad 1',
          latitude: '1',
          longitude: '1',
        ),
      ),
    ],
  );

  group('LaunchDetailsPage', () {
    late ExploreCubit exploreCubit;

    setUp(() {
      exploreCubit = MockExploreCubit();
      when(() => exploreCubit.state).thenReturn(
        const ExploreState(
          launches: launches,
        ),
      );
    });

    testWidgets('renders LaunchDetailsPage', (tester) async {
      await tester.pumpApp(
        exploreCubit: exploreCubit,
        LaunchDetailsPage(
          launchId: launches.results!.first.id!,
        ),
      );
    });
  });

  group('LaunchDetailsView', () {
    testWidgets('renders LaunchDetailsView', (tester) async {
      await tester.pumpApp(
        LaunchDetailsView(
          launch: launches.results!.first,
        ),
      );
    });

    testWidgets('Learn more button is tappable', (tester) async {
      await tester.pumpApp(
        LaunchDetailsView(
          launch: launches.results!.first,
        ),
      );

      await tester.tap(find.text('Learn more'));
    });
  });
}