// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

void main() {
  group('FilledTonalIconButton', () {
    testWidgets('has correct style', (WidgetTester tester) async {
      final theme = ThemeData.light();
      final colors = theme.colorScheme;

      await tester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return FilledTonalIconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                );
              },
            ),
          ),
        ),
      );

      final button = tester.widget<IconButton>(find.byType(IconButton));
      final style = button.style!;

      expect(style.foregroundColor!.resolve({}), colors.onSecondaryContainer);
      expect(style.backgroundColor!.resolve({}), colors.secondaryContainer);
    });
  });
}
