// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'launches_event.dart';
part 'launches_state.dart';
part 'launches_bloc.g.dart';

class LaunchesBloc extends HydratedBloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc(
    this._launchLibraryRepository, {
    this.clock = const Clock(),
  }) : super(const LaunchesState()) {
    on<LaunchesRequested>(_onLaunchesRequested);
    on<LaunchesDetailsRequested>(_onLaunchesDetailsRequested);
    on<LaunchesSelectionChanged>(_onLaunchesSelectionChanged);
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
      final upcomingLaunches = await _launchLibraryRepository.getLaunches();
      final pastLaunches = await _launchLibraryRepository.getLaunches();

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

  Future<void> _onLaunchesDetailsRequested(
    LaunchesDetailsRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));

    try {
      final detailedLaunch = await _launchLibraryRepository.getLaunchDetails(
        event.launchId,
      );

      emit(
        state.copyWith(
          status: LaunchesStatus.success,
          upcomingLaunches: state.upcomingLaunches.map(
            (launch) {
              if (launch.id == event.launchId) {
                return detailedLaunch;
              } else {
                return launch;
              }
            },
          ).toList(),
          pastLaunches: state.pastLaunches.map(
            (launch) {
              if (launch.id == event.launchId) {
                return detailedLaunch;
              } else {
                return launch;
              }
            },
          ).toList(),
          lastSuccessfulUpdate: clock.now(),
        ),
      );
    } catch (err) {
      log('LaunchesBloc._onLaunchesDetailsRequested: $err');

      emit(
        state.copyWith(status: LaunchesStatus.failure),
      );
    }
  }

  void _onLaunchesSelectionChanged(
    LaunchesSelectionChanged event,
    Emitter<LaunchesState> emit,
  ) {
    emit(state.copyWith(selectedLaunches: event.selectedLaunches));
  }
}
