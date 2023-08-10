// Dart imports:
import 'dart:async';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'starship_dashboard_event.dart';
part 'starship_dashboard_state.dart';
part 'starship_dashboard_bloc.g.dart';

class StarshipDashboardBloc
    extends HydratedBloc<StarshipDashboardEvent, StarshipDashboardState> {
  StarshipDashboardBloc(this._repository)
      : super(
          const StarshipDashboardState(status: StarshipDashboardStatus.initial),
        ) {
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
      emit(
        state.copyWith(status: StarshipDashboardStatus.failure),
      );
    }
  }
}
