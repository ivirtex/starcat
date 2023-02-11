// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

void main() {
  group('CupertinoInkWell', () {
    testWidgets('enabled property is true when onPressed is not null',
        (WidgetTester tester) async {
      final inkWell = CupertinoInkWell(
        onPressed: () {},
        child: Container(),
      );
      expect(inkWell.enabled, isTrue);
    });

    testWidgets('enabled property is false when onPressed is null',
        (WidgetTester tester) async {
      final inkWell = CupertinoInkWell(
        onPressed: null,
        child: Container(),
      );
      expect(inkWell.enabled, isFalse);
    });

    testWidgets('tapping the widget triggers onPressed',
        (WidgetTester tester) async {
      var onPressedCalled = false;
      final inkWell = CupertinoInkWell(
        onPressed: () {
          onPressedCalled = true;
        },
        child: Container(),
      );

      await tester.pumpWidget(CupertinoApp(home: inkWell));
      await tester.tap(find.byType(CupertinoInkWell));
      expect(onPressedCalled, isTrue);
    });
  });
}
