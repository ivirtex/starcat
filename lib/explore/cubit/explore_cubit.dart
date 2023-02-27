// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:space_devs_repository/space_devs_repository.dart';

part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this._spaceDevsRepository) : super(const ExploreState());

  final SpaceDevsRepository _spaceDevsRepository;

  Future<void> fetchLaunches({required LaunchTime launchTime}) async {
    emit(state.copyWith(status: ExploreStatus.loading));

    try {
      final launches = await _spaceDevsRepository.getLaunches(launchTime);

      emit(state.copyWith(status: ExploreStatus.success, launches: launches));
    } on Exception {
      emit(state.copyWith(status: ExploreStatus.failure));
    }
  }
}
