// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:falcon/launch_details/launch_details.dart';
import 'package:falcon/shared/shared.dart';

void main() {
  group('TargetOrbitCard', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: TargetOrbitCard(
            orbit: Orbit(
              name: 'Low Earth Orbit',
              abbrev: 'LEO',
            ),
          ),
        ),
      );

      expect(find.text('Low Earth Orbit (LEO)'), findsOneWidget);
    });

    testWidgets('renders N/A when orbit or its properties are null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: TargetOrbitCard(
            orbit: null,
          ),
        ),
      );

      expect(find.text('N/A'), findsOneWidget);

      await tester.pumpWidget(
        const MaterialApp(
          home: TargetOrbitCard(
            orbit: Orbit(),
          ),
        ),
      );

      expect(find.text('N/A'), findsOneWidget);
    });

    testWidgets('button is disabled when orbit or its properties are null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: TargetOrbitCard(
            orbit: null,
          ),
        ),
      );

      expect(
        tester.widget<ThemedButton>(find.byType(ThemedButton)).onPressed,
        isNull,
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: TargetOrbitCard(
            orbit: Orbit(),
          ),
        ),
      );

      expect(
        tester.widget<ThemedButton>(find.byType(ThemedButton)).onPressed,
        isNull,
      );
    });
  });
}
