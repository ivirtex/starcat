// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';

part 'notifications_state.dart';
part 'notifications_cubit.g.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  NotificationsCubit(
    this._firebaseMessagingInstance,
    this._liveActivitiesPlugin, {
    this.clock = const Clock(),
  }) : super(const NotificationsState());

  final FirebaseMessaging _firebaseMessagingInstance;
  final LiveActivities _liveActivitiesPlugin;
  final Clock clock;

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
      await _liveActivitiesPlugin.init(appGroupId: kAppGroupId);

      final activityData = {
        'status': launch.status!.abbrev!.name,
        'launchTZeroDate': launch.net!.toUtc().toIso8601String(),
        'launchName': launch.mission!.name,
        'launchVehicle': launch.rocket!.configuration!.name,
      };

      // TODO(ivirtex): fetch push token and upload
      // to the server for real-time updates
      final id = await _liveActivitiesPlugin.createActivity(activityData);

      if (id == null && kReleaseMode) {
        await FirebaseCrashlytics.instance.recordError(
          'Failed to create live activity',
          StackTrace.current,
          information: activityData.entries
              .map((entry) => '${entry.key}: ${entry.value}'),
        );

        emit(
          state.copyWith(
            liveActivityCreationStatus: LiveActivityCreationStatus.failure,
          ),
        );

        return;
      }

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
      await FirebaseCrashlytics.instance.recordError(
        'Failed to initialize live activity',
        StackTrace.current,
        information: [
          'launch: ${launch.toJson()}',
          'mode: $mode',
        ],
      );

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
        await _liveActivitiesPlugin.init(appGroupId: kAppGroupId);
        await _liveActivitiesPlugin.endActivity(trackedLaunch.activityId!);
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
      await _firebaseMessagingInstance.requestPermission();
      await _firebaseMessagingInstance
          .subscribeToTopic(kContinuousNotificationsTopicName);
    } else {
      await _firebaseMessagingInstance
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
      await _firebaseMessagingInstance.requestPermission();
      await _firebaseMessagingInstance
          .subscribeToTopic(kStarbaseNotificationsTopicName);
    } else {
      await _firebaseMessagingInstance
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
