// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';

part 'notifications_state.dart';
part 'notifications_cubit.g.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  NotificationsCubit(
    this._flutterLocalNotificationsPlugin,
    this._liveActivitiesPlugin,
    this._workmanager, {
    this.clock = const Clock(),
  }) : super(const NotificationsState());

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final LiveActivities _liveActivitiesPlugin;
  final Workmanager _workmanager;
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
    String? id;

    switch (mode) {
      case TrackingMethod.notifications:
        await requestPermissions(_flutterLocalNotificationsPlugin);

        await scheduleUserSpecifiedLaunchCheck(
          launchDate: launch.net!.toLocal(),
          launchUpdateUri: Uri.parse(launch.url!),
          workmanager: _workmanager,
          checkFrequency: getNewCheckFrequency(
            launch.net!.toLocal(),
            clock.now().toLocal(),
          ),
        );
        await scheduleLaunchNotifications(
          launch.net!.toLocal(),
          launch.name,
          launch.pad!.name!,
          _flutterLocalNotificationsPlugin,
        );
      case TrackingMethod.liveActivity:
        await _liveActivitiesPlugin.init(
          appGroupId: 'group.hubertjozwiak.starcat',
        );

        id = await _liveActivitiesPlugin.createActivity(
          {
            'launchTZeroDate': launch.net!.toIso8601String(),
            'launchName': launch.name,
          },
        );
    }

    emit(
      state.copyWith(
        trackedLaunches: [
          ...state.trackedLaunches,
          TrackedLaunch(
            launchData: launch,
            trackingMethod: mode,
            activityId: id,
          )
        ],
      ),
    );
  }

  Future<void> cancelTrackingLaunch(Launch launch) async {
    final trackedLaunch = state.trackedLaunches.firstWhere(
      (trackedLaunch) => trackedLaunch.launchData.id == launch.id,
    );

    switch (trackedLaunch.trackingMethod) {
      case TrackingMethod.notifications:
        await cancelUserSpecifiedLaunchCheck(
          launch.name,
          _workmanager,
        );
        await cancelLaunchNotifications(
          launch.name,
          _flutterLocalNotificationsPlugin,
        );
      case TrackingMethod.liveActivity:
        await _liveActivitiesPlugin.init(
          appGroupId: 'group.hubertjozwiak.starcat',
        );

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
      await requestPermissions(_flutterLocalNotificationsPlugin);
      await scheduleAutoNextLaunchCheck(
        checkFrequency: const Duration(hours: 3),
      );
    } else {
      await cancelAutoNextLaunchCheck();
    }

    emit(
      state.copyWith(areNotificationsContinuous: isTrue),
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
