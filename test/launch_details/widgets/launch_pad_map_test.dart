// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/launch_details/launch_details.dart';

void main() {
  group('LaunchPadMap', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchPadMap(
            pad: Pad(
              name: 'Vandenberg Air Force Base Space Launch Complex 4E',
              latitude: '34.632093',
              longitude: '-120.610829',
              location: Location(
                name: 'Vandenberg Air Force Base',
              ),
            ),
          ),
        ),
      );

      expect(find.byType(GoogleMap), findsOneWidget);
    });
  });
}
