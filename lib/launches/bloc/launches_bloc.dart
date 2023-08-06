// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
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
    on<LaunchesDetailsRequested>(_onLaunchesDetailsRequested);
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
      late Launch detailedLaunch;

      // Check if launch exists in cache
      if (state.detailedLaunchesCached
          .any((element) => element.launch.id == event.launchId)) {
        final cachedLaunch = state.detailedLaunchesCached.firstWhere(
          (element) => element.launch.id == event.launchId,
        );

        // Check if launch is still valid
        if (cachedLaunch.expirationDate.isAfter(clock.now())) {
          detailedLaunch = cachedLaunch.launch;

          // ignore: lines_longer_than_80_chars
          log('LaunchesBloc._onLaunchesDetailsRequested: Cache hit for launch ${detailedLaunch.name}');
        } else {
          detailedLaunch = await _launchLibraryRepository.getLaunchDetails(
            event.launchId,
          );

          // Invalidate cache
          state.detailedLaunchesCached.removeWhere(
            (element) => element.launch.id == event.launchId,
          );

          log('Invalidating cache for launch ${detailedLaunch.name}');
        }
      } else {
        detailedLaunch = await _launchLibraryRepository.getLaunchDetails(
          event.launchId,
        );
      }

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
          detailedLaunchesCached: {
            ...state.detailedLaunchesCached,
            LaunchCached(
              launch: detailedLaunch,
              expirationDate: computeCacheExpirationDate(
                clock.now(),
                detailedLaunch.net,
              ),
            ),
          },
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
