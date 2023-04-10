// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

void main() {
  group('OutlinedCard', () {
    testWidgets('has a Card as a child', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OutlinedCard(
              child: Container(),
            ),
          ),
        ),
      );

      expect(find.byType(Card), findsOneWidget);
    });

    testWidgets('respects margin', (tester) async {
      const margin = EdgeInsets.all(10);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OutlinedCard(
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
            body: OutlinedCard(
              shape: shape,
              child: Container(),
            ),
          ),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.shape, shape);
    });

    testWidgets('respects borderRadius', (tester) async {
      const borderRadius = 10.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: OutlinedCard(
              borderRadius: borderRadius,
              child: Container(),
            ),
          ),
        ),
      );

      final card = tester.widget<Card>(find.byType(Card));
      final shape = card.shape! as RoundedRectangleBorder;
      expect(
        shape.borderRadius,
        const BorderRadius.all(Radius.circular(borderRadius)),
      );
    });
  });
}
