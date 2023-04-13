// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc(this._launchLibraryRepository) : super(const LaunchesState()) {
    on<LaunchesRequested>(_onLaunchesRequested);
  }

  final LaunchLibraryRepository _launchLibraryRepository;

  Future<void> _onLaunchesRequested(
    LaunchesRequested event,
    Emitter<LaunchesState> emit,
  ) async {
    emit(state.copyWith(status: LaunchesStatus.loading));

    await Future<void>.delayed(const Duration(seconds: 3));

    try {
      final launches =
          await _launchLibraryRepository.getLaunches(event.launchTime);

      emit(
        state.copyWith(
          status: LaunchesStatus.success,
          launches: launches,
        ),
      );
    } catch (err) {
      log('LaunchesBloc._onLaunchesRequested: $err');

      emit(state.copyWith(status: LaunchesStatus.failure));
    }
  }
}
