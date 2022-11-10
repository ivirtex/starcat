// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/launch_details/launch_details.dart';

void main() {
  group('LaunchVehicleCard', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchVehicleCard(
            vehicle: Rocket(
              configuration: Configuration(
                fullName: 'Falcon 9 Block 5',
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
