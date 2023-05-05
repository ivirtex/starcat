// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';

void main() {
  group('ArticlesPreviewPlaceholder', () {
    testWidgets('renders', (tester) async {
      // Set up
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ArticlesPreviewPlaceholder(),
          ),
        ),
      );

      await tester.pump(const Duration(seconds: 1));

      // Verify
      expect(find.byType(ArticlesPreviewPlaceholder), findsOneWidget);
    });
  });
}
