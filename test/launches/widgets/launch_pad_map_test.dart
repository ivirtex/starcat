// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

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
