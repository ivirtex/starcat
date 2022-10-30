// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/theme/theme.dart';
import '../../helpers/helpers.dart';

class MockExploreCubit extends MockCubit<ExploreState> implements ExploreCubit {
}

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

void main() {
  final mockedCurrentTime = DateTime(2022, 1, 18, 5, 6, 7);
  final launchDate = DateTime(2022, 1, 20, 4, 5, 6);

  final timeDiff = launchDate.difference(mockedCurrentTime);
  final days = timeDiff.inDays;
  final hours = timeDiff.inHours - (days * 24);
  final minutes = timeDiff.inMinutes - (days * 24 * 60) - (hours * 60);
  final seconds = timeDiff.inSeconds -
      (days * 24 * 60 * 60) -
      (hours * 60 * 60) -
      (minutes * 60);

  final tMinusToLaunchDays = days.toString().padLeft(2, '0');
  final tMinusToLaunchHours = hours.toString().padLeft(2, '0');
  final tMinusToLaunchMinutes = minutes.toString().padLeft(2, '0');
  final tMinusToLaunchSeconds = seconds.toString().padLeft(2, '0');

  group('CountdownTimer', () {
    initHydratedStorage();

    testWidgets('renders CountdownTimer as DD:HH:MM by default',
        (WidgetTester tester) async {
      await tester.pumpApp(
        CountdownTimer(
          launchDate: launchDate,
          clock: Clock.fixed(mockedCurrentTime),
        ),
      );

      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.text(tMinusToLaunchDays), findsOneWidget);
      expect(find.text('d'), findsOneWidget);

      expect(find.text(tMinusToLaunchHours), findsOneWidget);
      expect(find.text('h'), findsOneWidget);

      expect(find.text(tMinusToLaunchMinutes), findsOneWidget);
      expect(find.text('m'), findsOneWidget);

      expect(find.text(tMinusToLaunchSeconds), findsNothing);
      expect(find.text('s'), findsNothing);
    });

    testWidgets(
        'renders CountdownTimer as HH:MM:SS when mode is set to CountdownTimerMode.hoursMinutesSeconds',
        (WidgetTester tester) async {
      await tester.pumpApp(
        CountdownTimer(
          mode: CountdownTimerMode.hoursMinutesSeconds,
          launchDate: launchDate,
          clock: Clock.fixed(mockedCurrentTime),
        ),
      );

      expect(find.byType(CountdownTimer), findsOneWidget);
      expect(find.text(tMinusToLaunchDays), findsNothing);
      expect(find.text('d'), findsNothing);

      expect(find.text(tMinusToLaunchHours), findsOneWidget);
      expect(find.text('h'), findsOneWidget);

      expect(find.text(tMinusToLaunchMinutes), findsOneWidget);
      expect(find.text('m'), findsOneWidget);

      expect(find.text(tMinusToLaunchSeconds), findsOneWidget);
      expect(find.text('s'), findsOneWidget);
    });

    testWidgets('uses CupertinoColors.systemRed in iOS for T -',
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

      await tester.pumpApp(
        CountdownTimer(launchDate: launchDate),
      );

      final text = tester.widget<Text>(find.textContaining('T'));
      expect(text.style?.color, CupertinoColors.systemRed);

      debugDefaultTargetPlatformOverride = null;
    });
  });
}
