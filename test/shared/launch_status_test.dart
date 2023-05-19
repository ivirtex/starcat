// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
import '../test_helpers/test_helpers.dart';

void main() {
  group('LaunchStatus', () {
    const launchStatus = Status(
      id: 0,
      name: 'Go for launch',
      abbrev: StatusAbbrev.go,
    );

    testWidgets('renders status correctly', (WidgetTester tester) async {
      await tester.pumpApp(
        const LaunchStatus(launchStatus),
      );

      expect(find.text(launchStatus.name!), findsOneWidget);
    });

    testWidgets('renders with green accent color when abbrev is "Go"',
        (WidgetTester tester) async {
      await tester.pumpApp(
        const LaunchStatus(launchStatus),
      );

      final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
      expect(statusWidgetIcon.color, Colors.greenAccent.shade400);
    });

    testWidgets('renders with light green color when abbrev is "TBC"',
        (WidgetTester tester) async {
      const launchStatus = Status(
        id: 0,
        abbrev: StatusAbbrev.tbc,
      );

      await tester.pumpApp(
        const LaunchStatus(launchStatus),
      );

      final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
      expect(statusWidgetIcon.color, Colors.lightGreen);
    });

    testWidgets('renders with grey color when abbrev is "TBD"',
        (WidgetTester tester) async {
      const launchStatus = Status(
        id: 0,
        abbrev: StatusAbbrev.tbd,
      );

      await tester.pumpApp(
        const LaunchStatus(launchStatus),
      );

      final statusWidgetIcon = tester.widget(find.byType(Icon)) as Icon;
      expect(statusWidgetIcon.color, Colors.grey);
    });
  });
}
