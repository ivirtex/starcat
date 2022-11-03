// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  final launches = Launches(
    results: [
      Launch(
        name: 'Name',
        net: DateTime(2021),
        mission: const Mission(
          name: 'Mission Name',
          description: 'Mission Description',
        ),
        pad: const Pad(
          name: 'Pad Name',
        ),
      ),
      Launch(
        name: 'Name 2',
        net: DateTime(2021),
        mission: const Mission(
          name: 'Mission Name 2',
          description: 'Mission Description 2',
        ),
        pad: const Pad(
          name: 'Pad Name 2',
        ),
      ),
      Launch(
        name: 'Name 3',
        net: DateTime(2021),
        mission: const Mission(
          name: 'Mission Name 3',
          description: 'Mission Description 3',
        ),
        pad: const Pad(
          name: 'Pad Name 3',
        ),
      ),
    ],
  );

  group('UpcomingLaunches', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        UpcomingLaunches(launches: launches),
      );

      expect(find.byType(UpcomingLaunches), findsOneWidget);

      for (final launch in launches.results!.skip(1)) {
        await tester.scrollUntilVisible(
          find.text(launch.mission!.name!),
          10,
        );

        expect(find.text(launch.mission!.name!), findsOneWidget);
        expect(find.text(launch.pad!.name!), findsOneWidget);
      }
    });
  });
}
