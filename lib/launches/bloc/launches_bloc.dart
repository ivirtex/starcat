// Dart imports:
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
      final launches =
          await _launchLibraryRepository.getLaunches(event.launchTime);

      emit(
        state.copyWith(
          status: LaunchesStatus.success,
          launches: launches,
          lastSuccessfulUpdate: clock.now(),
        ),
      );
    } catch (err) {
      log('LaunchesBloc._onLaunchesRequested: $err');

      emit(
        state.copyWith(
          status: LaunchesStatus.failure,
          launches: state.launches,
        ),
      );
    }
  }
}
