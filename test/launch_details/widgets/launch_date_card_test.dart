// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/launch_details/launch_details.dart';

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
      expect(find.textContaining('(02:04 UTC)'), findsOneWidget);
    });

    testWidgets('renders correctly when date is null',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LaunchDateCard(
            date: null,
          ),
        ),
      );

      expect(find.text('N/A'), findsNWidgets(3));
    });
  });
}
