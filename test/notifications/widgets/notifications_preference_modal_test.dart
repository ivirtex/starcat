// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import '../../test_helpers/test_helpers.dart';

class MockNotificationsCubit extends MockCubit<NotificationsState>
    implements NotificationsCubit {}

void main() {
  group('NotificationsPreferenceModal', () {
    late NotificationsCubit notificationsCubit;

    setUpAll(() {
      notificationsCubit = MockNotificationsCubit();

      when(
        () => notificationsCubit.setIfNotificationsAreSentContinuously(
          isTrue: any(named: 'isTrue'),
        ),
      ).thenAnswer((_) async {});
      when(
        () => notificationsCubit.setIfNotificationsPreferenceModalHasBeenShown(
          isTrue: any(named: 'isTrue'),
        ),
      ).thenAnswer((_) async {});
    });
    testWidgets('renders', (tester) async {
      late BuildContext savedContext;

      await tester.pumpApp(
        Builder(
          builder: (context) {
            savedContext = context;

            return Container();
          },
        ),
      );

      unawaited(
        showModalBottomSheet<void>(
          context: savedContext,
          builder: (context) => const NotificationsPreferenceModal(),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(NotificationsPreferenceModal), findsOneWidget);
    });

    testWidgets('default option is to enable all notifications',
        (tester) async {
      late BuildContext savedContext;

      await tester.pumpApp(
        Builder(
          builder: (context) {
            savedContext = context;

            return Container();
          },
        ),
      );

      unawaited(
        showModalBottomSheet<void>(
          context: savedContext,
          builder: (context) => const NotificationsPreferenceModal(),
        ),
      );

      await tester.pumpAndSettle();

      expect(
        tester
            .widget<Switch>(
              find.byType(Switch),
            )
            .value,
        true,
      );
    });

    testWidgets('tapping on the switch toggles the value', (tester) async {
      late BuildContext savedContext;

      await tester.pumpApp(
        Builder(
          builder: (context) {
            savedContext = context;

            return Container();
          },
        ),
      );

      unawaited(
        showModalBottomSheet<void>(
          context: savedContext,
          builder: (context) => const NotificationsPreferenceModal(),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();

      expect(
        tester
            .widget<Switch>(
              find.byType(Switch),
            )
            .value,
        false,
      );

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();

      expect(
        tester
            .widget<Switch>(
              find.byType(Switch),
            )
            .value,
        true,
      );
    });

    testWidgets('tapping save button calls the cubit', (tester) async {
      late BuildContext savedContext;

      await tester.pumpApp(
        Builder(
          builder: (context) {
            savedContext = context;

            return Container();
          },
        ),
        notificationsCubit: notificationsCubit,
      );

      unawaited(
        showModalBottomSheet<void>(
          context: savedContext,
          builder: (context) => const NotificationsPreferenceModal(),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('Save'));
      await tester.pumpAndSettle();

      verify(
        () => notificationsCubit.setIfNotificationsAreSentContinuously(
          isTrue: true,
        ),
      ).called(1);
      verify(
        () => notificationsCubit.setIfNotificationsPreferenceModalHasBeenShown(
          isTrue: true,
        ),
      ).called(1);
    });
  });
}
