// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  const launches = Launches(
    results: [
      Launch(
        name: 'Name',
        mission: Mission(
          name: 'Mission Name',
          description: 'Mission Description',
        ),
      ),
    ],
  );

  group('UpcomingLaunches', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        const UpcomingLaunches(
          launches: launches,
        ),
      );
    });
  });
}
