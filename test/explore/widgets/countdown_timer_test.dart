// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/theme/theme.dart';
import '../../test_helpers/test_helpers.dart';

class MockLaunchesBloc extends MockCubit<LaunchesState>
    implements LaunchesBloc {}

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
      for (final char in tMinusToLaunchDays.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('d'), findsOneWidget);

      for (final char in tMinusToLaunchHours.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('h'), findsOneWidget);

      for (final char in tMinusToLaunchMinutes.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('m'), findsOneWidget);

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
      expect(find.text('d'), findsNothing);

      for (final char in tMinusToLaunchHours.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('h'), findsOneWidget);

      for (final char in tMinusToLaunchMinutes.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('m'), findsOneWidget);

      for (final char in tMinusToLaunchSeconds.split('')) {
        expect(find.text(char), findsWidgets);
      }
      expect(find.text('s'), findsOneWidget);
    });

    testWidgets('uses ColorScheme.primary for T -',
        (WidgetTester tester) async {
      await tester.pumpApp(
        CountdownTimer(launchDate: launchDate),
      );

      final text = tester.widget<Text>(find.textContaining('T'));
      expect(text.style?.color, ThemeData().colorScheme.primary);
    });

    testWidgets('does not render minuses for T +', (WidgetTester tester) async {
      await tester.pumpApp(
        CountdownTimer(
          launchDate: launchDate,
          clock: Clock.fixed(mockedCurrentTime.add(const Duration(days: 3))),
        ),
      );

      expect(find.textContaining('T +'), findsOneWidget);
      expect(find.textContaining('-'), findsNothing);
    });
  });
}
