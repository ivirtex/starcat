import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_info_repository/spacex_info_repository.dart';

part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this._spaceXInfoRepository) : super(const ExploreState());

  final SpaceXInfoRepository _spaceXInfoRepository;

  Future<void> fetchLaunches({required LaunchTime launchTime}) async {
    emit(state.copyWith(status: ExploreStatus.loading));

    try {
      final launches = await _spaceXInfoRepository.getLaunches(launchTime);

      emit(state.copyWith(status: ExploreStatus.success, launches: launches));
    } on Exception {
      emit(state.copyWith(status: ExploreStatus.failure));
    }
  }
}
