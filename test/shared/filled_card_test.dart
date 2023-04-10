// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';

void main() {
  group('FilledCard', () {
    testWidgets(
      'has a Card as a child',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: FilledCard(
                child: Container(),
              ),
            ),
          ),
        );

        expect(find.byType(Card), findsOneWidget);
      },
    );

    testWidgets('respects margin', (tester) async {
      const margin = EdgeInsets.all(10);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilledCard(
              margin: margin,
              child: Container(),
            ),
          ),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.margin, margin);
    });

    testWidgets('respects shape', (tester) async {
      const shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FilledCard(
              shape: shape,
              child: Container(),
            ),
          ),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.shape, shape);
    });

    testWidgets('respects child', (tester) async {
      const child = Text('child');

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FilledCard(
              child: child,
            ),
          ),
        ),
      );

      expect(find.text('child'), findsOneWidget);
    });

    testWidgets('has correct color', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            colorScheme: const ColorScheme.light(
              surfaceVariant: Color(0xFFE5E5E5),
            ),
          ),
          home: const Scaffold(
            body: FilledCard(
              child: SizedBox.expand(),
            ),
          ),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.color, const Color(0xFFE5E5E5));
    });
  });
}
