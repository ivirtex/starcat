// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'starship_dashboard_event.dart';
part 'starship_dashboard_state.dart';
part 'starship_dashboard_bloc.g.dart';

class StarshipDashboardBloc
    extends HydratedBloc<StarshipDashboardEvent, StarshipDashboardState> {
  StarshipDashboardBloc(this._repository)
      : super(const StarshipDashboardState()) {
    on<StarshipDashboardRequested>(_onStarshipDashboardRequested);
  }

  final LaunchLibraryRepository _repository;

  @override
  StarshipDashboardState? fromJson(Map<String, dynamic> json) =>
      StarshipDashboardState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(StarshipDashboardState state) => state.toJson();

  Future<void> _onStarshipDashboardRequested(
    StarshipDashboardRequested event,
    Emitter<StarshipDashboardState> emit,
  ) async {
    emit(state.copyWith(status: StarshipDashboardStatus.loading));

    try {
      final dashboard = await _repository.getStarshipDashboard();

      emit(
        state.copyWith(
          status: StarshipDashboardStatus.success,
          dashboard: dashboard,
        ),
      );
    } catch (err) {
      log('StarshipDashboardBloc._onStarshipDashboardRequested: $err');

      await FirebaseCrashlytics.instance.recordError(
        err,
        StackTrace.current,
        reason: 'LaunchesBloc._onLaunchesRequested',
      );

      emit(
        state.copyWith(status: StarshipDashboardStatus.failure),
      );
    }
  }
}
