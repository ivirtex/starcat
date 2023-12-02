// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

void main() {
  group('LaunchVehicleCard', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchVehicleCard(
            vehicle: Rocket(
              configuration: Configuration(
                url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
                name: 'Falcon 9',
                fullName: 'Falcon 9 Block 5',
                family: 'Falcon',
                variant: 'Block 5',
              ),
            ),
          ),
        ),
      );

      expect(find.text('Falcon 9 Block 5'), findsOneWidget);
      expect(find.text('Learn more'), findsOneWidget);
    });

    testWidgets('renders correctly when vehicle is null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchVehicleCard(
            vehicle: null,
          ),
        ),
      );

      expect(find.text('N/A'), findsOneWidget);
    });
  });
}
