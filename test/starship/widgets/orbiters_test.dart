// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/starship/starship.dart';
import '../../test_helpers/test_helpers.dart';

void main() {
  group('Orbiters', () {
    testWidgets('renders', (tester) async {
      await tester.pumpApp(
        const Orbiters(orbiters: []),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(Orbiters), findsOneWidget);
    });

    testWidgets('displays list of vehicles', (tester) async {
      await tester.pumpApp(
        const Orbiters(
          orbiters: [
            Orbiter(
              id: 1,
              url: 'https://example.com',
              name: 'Orbiter 1',
              serialNumber: '12345',
              isPlaceholder: false,
              inSpace: true,
              timeInSpace: '10 days',
              timeDocked: '5 days',
              status: OrbiterStatus(id: 1, name: 'Active'),
              description: 'This is a description',
              spacecraftConfig: OrbiterSpacecraftConfig(
                id: 1,
                url: '',
                name: '',
                type: SpacecraftConfigType(id: 1, name: 'Spacecraft'),
                agency: LaunchServiceProvider(id: 1, name: 'SpaceX', url: ''),
              ),
            ),
          ],
        ),
      );
      await tester.pump(const Duration(seconds: 3));

      expect(find.byType(VehicleCard), findsOneWidget);
    });
  });
}
