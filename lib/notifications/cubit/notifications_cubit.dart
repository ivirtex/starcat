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

  Future<void> trackLaunch(
    Launch launch, {
    required TrackingMethod mode,
  }) async {
    try {
      final id =
          await _notificationsRepository.trackLaunchUsingLiveActivity(launch);

      emit(
        state.copyWith(
          trackedLaunches: [
            ...state.trackedLaunches,
            TrackedLaunch(
              launchData: launch,
              trackingMethod: mode,
              activityId: id,
            ),
          ],
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
            'mode: $mode',
          ],
        );
      }

      emit(
        state.copyWith(
          liveActivityCreationStatus: LiveActivityCreationStatus.failure,
        ),
      );
    }
  }

  Future<void> cancelTrackingLaunch(Launch launch) async {
    final trackedLaunch = state.trackedLaunches.firstWhere(
      (trackedLaunch) => trackedLaunch.launchData.id == launch.id,
    );

    switch (trackedLaunch.trackingMethod) {
      case TrackingMethod.liveActivity:
        await _notificationsRepository.cancelLiveActivityTracking(id);
    }

    emit(
      state.copyWith(
        trackedLaunches: state.trackedLaunches
            .where(
              (trackedLaunch) => trackedLaunch.launchData.id != launch.id,
            )
            .toList(),
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
