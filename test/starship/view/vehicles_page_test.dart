// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/pump_app.dart';

void main() {
  group('VehiclesPage', () {
    testWidgets('renders', (tester) async {
      await tester.pumpApp(
        const VehiclesPage(launchers: []),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(VehiclesPage), findsOneWidget);
    });

    testWidgets('displays list of updates', (tester) async {
      await tester.pumpApp(
        const VehiclesPage(
          launchers: [
            Launcher(url: ''),
          ],
        ),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(VehicleCard), findsOneWidget);
    });
  });
}
