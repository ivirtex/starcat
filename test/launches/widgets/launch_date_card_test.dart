// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

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

    testWidgets('renders error slideOut when there is a fail reason',
        (WidgetTester tester) async {
      late BuildContext capturedContext;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              capturedContext = context;

              return const LaunchDateCard(
                optionalFailReason: 'Fail reason',
              );
            },
          ),
        ),
      );

      expect(find.text('Fail reason'), findsOneWidget);

      // check texts color
      final text = tester.widget<Text>(find.text('Fail reason'));
      expect(
        text.style?.color,
        Theme.of(capturedContext).colorScheme.onErrorContainer,
      );
    });
  });
}
