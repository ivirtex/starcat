// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';

void main() {
  group('IconToggleButton', () {
    testWidgets('IconToggleButton should be initially unselected',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: IconToggleButton(
              icon: const Icon(Icons.star),
              selectedIcon: const Icon(Icons.star_border),
              selected: false,
              onToggle: (bool toggled) {},
            ),
          ),
        ),
      );

      final iconButton = tester.widget<IconButton>(find.byType(IconButton));
      expect(iconButton.isSelected, false);
    });

    testWidgets('IconToggleButton should not toggle state when disabled',
        (WidgetTester tester) async {
      var isToggled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: IconToggleButton(
              icon: const Icon(Icons.star),
              selectedIcon: const Icon(Icons.star_border),
              selected: isToggled,
              isEnabled: false,
              onToggle: (bool toggled) {
                isToggled = toggled;
              },
            ),
          ),
        ),
      );

      final iconButton = tester.widget<IconButton>(find.byType(IconButton));
      expect(iconButton.isSelected, isToggled);

      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(isToggled, false);
      expect(iconButton.isSelected, isToggled);
    });
  });
}
