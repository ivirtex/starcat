// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';
import '../test_helpers/test_helpers.dart';

void main() {
  initHydratedStorage();

  group('DataLine', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpApp(
        const DataLine(
          leftSide: Text('Left'),
          rightSide: Text('Right'),
        ),
      );

      expect(find.byType(DataLine), findsOneWidget);
      expect(find.byType(Text), findsNWidgets(2));
    });
  });
}
