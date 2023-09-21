// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

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
    on<LaunchesNextPageRequested>(_onLaunchesNextPageRequested);
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
          await _launchLibraryRepository.getUpcomingLaunches();
      final pastLaunches = await _launchLibraryRepository.getPastLaunches();

      emit(
        state.copyWith(
          status: LaunchesStatus.success,
          upcomingLaunches: upcomingLaunches,
          pastLaunches: pastLaunches,
        ),
      );
    } catch (err) {
      log('LaunchesBloc._onLaunchesRequested: $err');

      if (kReleaseMode) {
        await FirebaseCrashlytics.instance.recordError(
          err,
          StackTrace.current,
          reason: 'LaunchesBloc._onLaunchesRequested',
        );
      }

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

  Future<void> _onLaunchesNextPageRequested(
    LaunchesNextPageRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));

    switch (event.type) {
      case SelectedLaunches.upcoming:
        try {
          final upcomingLaunches =
              await _launchLibraryRepository.getNextPageUpcomingLaunches(
            offset: state.currentOffsetOfUpcomingLaunches,
          );

          emit(
            state.copyWith(
              status: LaunchesStatus.success,
              upcomingLaunches: [
                ...state.upcomingLaunches,
                ...upcomingLaunches,
              ],
              currentOffsetOfUpcomingLaunches:
                  state.currentOffsetOfUpcomingLaunches + 10,
            ),
          );
        } catch (err) {
          log('LaunchesBloc._onLaunchesNextPageRequested: $err');

          emit(
            state.copyWith(
              status: LaunchesStatus.failure,
              upcomingLaunches: state.upcomingLaunches,
            ),
          );
        }
        break;
      case SelectedLaunches.past:
        try {
          final pastLaunches =
              await _launchLibraryRepository.getNextPagePastLaunches(
            offset: state.currentOffsetOfPastLaunches,
          );

          emit(
            state.copyWith(
              status: LaunchesStatus.success,
              pastLaunches: [
                ...state.pastLaunches,
                ...pastLaunches,
              ],
              currentOffsetOfPastLaunches:
                  state.currentOffsetOfPastLaunches + 10,
            ),
          );
        } catch (err) {
          log('LaunchesBloc._onLaunchesNextPageRequested: $err');

          emit(
            state.copyWith(
              status: LaunchesStatus.failure,
              pastLaunches: state.pastLaunches,
            ),
          );
        }
        break;
    }
  }
}
