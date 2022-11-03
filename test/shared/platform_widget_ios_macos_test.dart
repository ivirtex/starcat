// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';
import '../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  group('PlatformWidget', () {
    testWidgets('calls cupertino builder on macOS', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.macOS;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('cupertino'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('calls cupertino builder on iOS', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('cupertino'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });
  });
}
