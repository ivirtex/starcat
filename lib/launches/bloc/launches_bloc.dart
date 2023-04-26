// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

part 'launches_event.dart';
part 'launches_state.dart';
part 'launches_bloc.g.dart';

class LaunchesBloc extends HydratedBloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc(
    this._launchLibraryRepository, {
    this.clock = const Clock(),
  }) : super(const LaunchesState()) {
    on<LaunchesRequested>(_onLaunchesRequested);
    on<LaunchesSelectionChanged>(_onLaunchesSelectionChanged);
    on<LaunchesToTrackAdded>(_onLaunchesToTrackAdded);
    on<LaunchesToTrackRemoved>(_onLaunchesToTrackRemoved);
  }

  final LaunchLibraryRepository _launchLibraryRepository;
  final Clock clock;

  @override
  LaunchesState? fromJson(Map<String, dynamic> json) =>
      LaunchesState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LaunchesState state) => state.toJson();

  Future<void> _onLaunchesRequested(
    LaunchesRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));

    try {
      final upcomingLaunches =
          await _launchLibraryRepository.getLaunches(LaunchTime.upcoming);
      final pastLaunches =
          await _launchLibraryRepository.getLaunches(LaunchTime.previous);

      emit(
        state.copyWith(
          status: LaunchesStatus.success,
          upcomingLaunches: upcomingLaunches,
          pastLaunches: pastLaunches,
          lastSuccessfulUpdate: clock.now(),
        ),
      );
    } catch (err) {
      log('LaunchesBloc._onLaunchesRequested: $err');

      emit(
        state.copyWith(
          status: LaunchesStatus.failure,
          upcomingLaunches: state.upcomingLaunches,
          pastLaunches: state.pastLaunches,
        ),
      );
    }
  }

  void _onLaunchesSelectionChanged(
    LaunchesSelectionChanged event,
    Emitter<LaunchesState> emit,
  ) {
    emit(state.copyWith(selectedLaunches: event.selectedLaunches));
  }

  Future<void> _onLaunchesToTrackAdded(
    LaunchesToTrackAdded event,
    Emitter<LaunchesState> emit,
  ) async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    await scheduleLaunchTimeCheckTask(
      event.launch.net!,
      event.launch.name,
      event.launch.pad.name!,
      Uri.parse(event.launch.url),
    );
    await scheduleLaunchNotifications(
      event.launch.net!,
      event.launch.name,
      event.launch.pad.name!,
    );

    emit(
      state.copyWith(
        launchesToTrack: [...state.launchesToTrack, event.launch],
      ),
    );
  }

  void _onLaunchesToTrackRemoved(
    LaunchesToTrackRemoved event,
    Emitter<LaunchesState> emit,
  ) {
    cancelLaunchNotifications(event.launch.name);
    cancelLaunchTimeCheckTask();

    emit(
      state.copyWith(
        launchesToTrack: state.launchesToTrack
            .where((launch) => launch.id != event.launch.id)
            .toList(),
      ),
    );
  }
}
