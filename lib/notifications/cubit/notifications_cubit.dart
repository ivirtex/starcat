// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:notifications_repository/notifications_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';

part 'notifications_state.dart';
part 'notifications_cubit.g.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  NotificationsCubit(
    this._notificationsRepository,
  ) : super(const NotificationsState());

  final NotificationsRepository _notificationsRepository;

  @override
  NotificationsState? fromJson(Map<String, dynamic> json) =>
      NotificationsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(NotificationsState state) => state.toJson();

  Future<void> trackLaunch(Launch launch) async {
    emit(
      state.copyWith(
        liveActivityCreationStatus: LiveActivityCreationStatus.creating,
      ),
    );

    try {
      final id =
          await _notificationsRepository.trackLaunchUsingLiveActivity(launch);

      emit(
        state.copyWith(
          liveActivityCreationStatus: LiveActivityCreationStatus.success,
          trackedLaunch: TrackedLaunch(
            launchData: launch,
            activityId: id,
          ),
        ),
      );
    } catch (e) {
      if (kReleaseMode) {
        await FirebaseCrashlytics.instance.recordError(
          'Failed to create live activity',
          StackTrace.current,
          reason: e.toString(),
          information: [
            'launch: ${launch.toJson()}',
          ],
        );
      }

      log('Failed to create live activity', error: e);

      emit(
        state.copyWith(
          liveActivityCreationStatus: LiveActivityCreationStatus.failure,
        ),
      );
    }
  }

  Future<void> cancelTrackingLaunch() async {
    try {
      await _notificationsRepository
          .cancelLiveActivityTracking(state.trackedLaunch!.activityId);
    } catch (e) {
      if (kReleaseMode && e is TokenAlreadyInvalidatedException) {
        await FirebaseCrashlytics.instance.recordError(
          e,
          StackTrace.current,
        );
      }
    }

    emit(
      state.copyWithNullable(
        trackedLaunch: () => null,
      ),
    );
  }

  Future<void> setIfNotificationsAreSentContinuously({
    required bool isTrue,
  }) async {
    if (isTrue) {
      await _notificationsRepository
          .subscribeToTopic(kContinuousNotificationsTopicName);
    } else {
      await _notificationsRepository
          .unsubscribeFromTopic(kContinuousNotificationsTopicName);
    }

    emit(
      state.copyWith(areNotificationsContinuous: isTrue),
    );
  }

  Future<void> setIfStarbaseNotificationsAreEnabled({
    required bool isTrue,
  }) async {
    if (isTrue) {
      await _notificationsRepository
          .subscribeToTopic(kStarbaseNotificationsTopicName);
    } else {
      await _notificationsRepository
          .unsubscribeFromTopic(kStarbaseNotificationsTopicName);
    }

    emit(
      state.copyWith(areStarbaseNotificationsEnabled: isTrue),
    );
  }

  Future<void> setIfNotificationsPreferenceModalHasBeenShown({
    required bool isTrue,
  }) async {
    emit(
      state.copyWith(hasNotificationsPreferenceModalBeenShown: isTrue),
    );
  }
}
