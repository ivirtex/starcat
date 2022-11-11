// Flutter imports:
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
      await tester.pumpApp(
        platform: TargetPlatform.macOS,
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('cupertino'), findsOneWidget);
    });

    testWidgets('calls cupertino builder on iOS', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.iOS,
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('cupertino'), findsOneWidget);
    });

    testWidgets('calls material builder on Android', (tester) async {
      await tester.pumpApp(
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);
    });

    testWidgets('calls material builder on Fuschia', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.fuchsia,
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);
    });

    testWidgets('calls material builder on Linux', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.linux,
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);
    });

    testWidgets('calls material builder on Windows', (tester) async {
      await tester.pumpApp(
        platform: TargetPlatform.windows,
        PlatformWidget(
          cupertino: (_) => const Text('cupertino'),
          material: (_) => const Text('material'),
        ),
      );

      expect(find.text('material'), findsOneWidget);
    });
  });
}
