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
    testWidgets('calls material builder on Android', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('calls material builder on Fuschia', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('calls material builder on Linux', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.linux;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('calls material builder on Windows', (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.windows;

      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });
  });
}
