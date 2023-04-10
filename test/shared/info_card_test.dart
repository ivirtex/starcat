// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
import '../test_helpers/test_helpers.dart';

void main() {
  initHydratedStorage();

  group('InfoCard', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        const InfoCard(
          icon: Icon(Icons.ac_unit),
          child: Text('Child'),
        ),
      );

      expect(find.byType(InfoCard), findsOneWidget);
      expect(find.byType(Icon), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });
  });
}
