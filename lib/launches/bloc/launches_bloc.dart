// Dart imports:
import 'dart:async';
import 'dart:developer';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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
    on<ExploreLaunchesRequested>(_onExploreLaunchesRequested);
    on<LaunchesRefreshRequested>(_onLaunchesRefreshRequested);
    on<LaunchesSelectionChanged>(_onLaunchesSelectionChanged);
    on<LaunchesFilterChanged>(_onLaunchesFilterChanged);
    on<LaunchesNextPageRequested>(_onLaunchesNextPageRequested);
    on<LaunchesOffsetReset>(_onLaunchesOffsetReset);
  }

  final LaunchLibraryRepository _launchLibraryRepository;
  final Clock clock;

  @override
  LaunchesState? fromJson(Map<String, dynamic> json) =>
      LaunchesState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LaunchesState state) => state.toJson();

  Future<void> _onExploreLaunchesRequested(
    ExploreLaunchesRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(
      state.copyWith(
        upcomingLaunchesStatus: LaunchesStatus.loading,
      ),
    );

    try {
      final upcomingLaunches =
          await _launchLibraryRepository.getUpcomingLaunches();

      emit(
        state.copyWith(
          upcomingLaunchesStatus: LaunchesStatus.success,
          allUpcomingLaunches: upcomingLaunches,
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
          upcomingLaunchesStatus: LaunchesStatus.failure,
        ),
      );
    }
  }

  Future<void> _onLaunchesRefreshRequested(
    LaunchesRefreshRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    add(const LaunchesOffsetReset());

    emit(
      state.copyWith(
        upcomingLaunchesStatus: LaunchesStatus.loading,
        pastLaunchesStatus: LaunchesStatus.loading,
      ),
    );

    final providerIds = state.filter.selectedLaunchProviders.map((provider) {
      return provider.id;
    }).toList();

    try {
      final upcomingLaunches =
          await _launchLibraryRepository.getUpcomingLaunches(
        searchQuery: state.filter.searchQuery,
        providers: providerIds,
      );

      emit(
        state.copyWith(
          upcomingLaunchesStatus: LaunchesStatus.success,
          upcomingLaunches: upcomingLaunches,
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

      if (err is LaunchesResultsNotFoundFailure) {
        emit(
          state.copyWith(
            upcomingLaunchesStatus: LaunchesStatus.noMoreResults,
            upcomingLaunches: const <Launch>[],
          ),
        );

        return;
      }

      emit(
        state.copyWith(
          upcomingLaunchesStatus: LaunchesStatus.failure,
        ),
      );
    }

    try {
      final pastLaunches = await _launchLibraryRepository.getPastLaunches(
        searchQuery: state.filter.searchQuery,
        providers: providerIds,
      );

      emit(
        state.copyWith(
          pastLaunchesStatus: LaunchesStatus.success,
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

      if (err is LaunchesResultsNotFoundFailure) {
        emit(
          state.copyWith(
            pastLaunchesStatus: LaunchesStatus.noMoreResults,
            pastLaunches: const <Launch>[],
          ),
        );

        return;
      }

      emit(
        state.copyWith(
          pastLaunchesStatus: LaunchesStatus.failure,
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

  Future<void> _onLaunchesFilterChanged(
    LaunchesFilterChanged event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(
      state.copyWith(filter: event.newFilter),
    );

    add(const LaunchesRefreshRequested());
  }

  Future<void> _onLaunchesNextPageRequested(
    LaunchesNextPageRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    final providerIds = state.filter.selectedLaunchProviders.map((provider) {
      return provider.id;
    }).toList();

    switch (event.type) {
      case SelectedLaunches.upcoming:
        emit(
          state.copyWith(
            upcomingLaunchesStatus: LaunchesStatus.loading,
            currentOffsetOfUpcomingLaunches:
                state.currentOffsetOfUpcomingLaunches + 10,
          ),
        );

        try {
          final upcomingLaunches =
              await _launchLibraryRepository.getNextPageUpcomingLaunches(
            offset: state.currentOffsetOfUpcomingLaunches,
            searchQuery: state.filter.searchQuery,
            providers: providerIds,
          );

          emit(
            state.copyWith(
              upcomingLaunchesStatus: LaunchesStatus.success,
              upcomingLaunches: [
                ...state.upcomingLaunches,
                ...upcomingLaunches,
              ],
              currentOffsetOfUpcomingLaunches:
                  state.currentOffsetOfUpcomingLaunches,
            ),
          );
        } catch (err) {
          log('LaunchesBloc._onLaunchesNextPageRequested: $err');

          if (err is LaunchesResultsNotFoundFailure) {
            emit(
              state.copyWith(
                upcomingLaunchesStatus: LaunchesStatus.noMoreResults,
              ),
            );

            return;
          }

          emit(
            state.copyWith(
              upcomingLaunchesStatus: LaunchesStatus.failure,
            ),
          );
        }
        break;
      case SelectedLaunches.past:
        try {
          emit(
            state.copyWith(
              pastLaunchesStatus: LaunchesStatus.loading,
              currentOffsetOfPastLaunches:
                  state.currentOffsetOfPastLaunches + 10,
            ),
          );

          final pastLaunches =
              await _launchLibraryRepository.getNextPagePastLaunches(
            offset: state.currentOffsetOfPastLaunches,
            searchQuery: state.filter.searchQuery,
            providers: providerIds,
          );

          emit(
            state.copyWith(
              pastLaunchesStatus: LaunchesStatus.success,
              pastLaunches: [
                ...state.pastLaunches,
                ...pastLaunches,
              ],
              currentOffsetOfPastLaunches: state.currentOffsetOfPastLaunches,
            ),
          );
        } catch (err) {
          log('LaunchesBloc._onLaunchesNextPageRequested: $err');

          if (err is LaunchesResultsNotFoundFailure) {
            emit(
              state.copyWith(
                pastLaunchesStatus: LaunchesStatus.noMoreResults,
              ),
            );

            return;
          }

          emit(
            state.copyWith(
              pastLaunchesStatus: LaunchesStatus.failure,
            ),
          );
        }
        break;
    }
  }

  void _onLaunchesOffsetReset(
    LaunchesOffsetReset event,
    Emitter<LaunchesState> emit,
  ) {
    emit(
      state.copyWith(
        currentOffsetOfUpcomingLaunches: 0,
        currentOffsetOfPastLaunches: 0,
      ),
    );
  }
}
