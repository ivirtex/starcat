// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/launches/launch_details.dart';

void main() {
  group('LaunchDateCard', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LaunchDateCard(
            date: DateTime(2022, 1, 2, 3, 4, 5),
          ),
        ),
      );

      expect(find.text('Jan 2'), findsOneWidget);
      expect(find.text('Sunday'), findsOneWidget);
    });

    testWidgets('renders N/A when date is null', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchDateCard(),
        ),
      );

      expect(find.text('N/A'), findsNWidgets(3));
    });
  });
}
