// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:workmanager/workmanager.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

part 'notifications_state.dart';
part 'notifications_cubit.g.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  NotificationsCubit(
    this._flutterLocalNotificationsPlugin,
    this._workmanager, {
    this.clock = const Clock(),
  }) : super(const NotificationsState());

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final Workmanager _workmanager;
  final Clock clock;

  @override
  NotificationsState? fromJson(Map<String, dynamic> json) =>
      NotificationsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(NotificationsState state) => state.toJson();

  Future<void> trackLaunch(Launch launch) async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    await scheduleLaunchTimeCheckTask(
      launch.net!,
      Uri.parse(launch.url),
      checkFrequency: getNewCheckFrequency(launch.net!, clock.now().toLocal()),
      workmanager: _workmanager,
    );
    await scheduleLaunchNotifications(
      launch.net!,
      launch.name,
      launch.pad.name!,
      _flutterLocalNotificationsPlugin,
    );

    emit(
      state.copyWith(
        trackedLaunches: [...state.trackedLaunches, launch],
      ),
    );
  }

  Future<void> cancelTrackingLaunch(Launch launch) async {
    await cancelLaunchTimeCheckTask(launch.name);
    await cancelLaunchNotifications(
      launch.name,
      _flutterLocalNotificationsPlugin,
    );

    emit(
      state.copyWith(
        trackedLaunches: state.trackedLaunches
            .where((trackedLaunch) => trackedLaunch.id != launch.id)
            .toList(),
      ),
    );
  }

  Future<void> setIfNotificationsAreSentContinuously({
    required bool isTrue,
  }) async {
    if (isTrue) {
      await scheduleUpcomingLaunchCheck('');
    } else {
      await cancelUpcomingLaunchCheck();
    }

    emit(
      state.copyWith(areNotificationsContinuous: isTrue),
    );
  }
}
