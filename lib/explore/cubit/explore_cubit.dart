// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this._spaceDevsRepository, this._spaceflightNewsRepository)
      : super(const ExploreState());

  final LaunchLibraryRepository _spaceDevsRepository;
  final SpaceflightNewsRepository _spaceflightNewsRepository;

  Future<void> fetchLaunches({required LaunchTime launchTime}) async {
    emit(state.copyWith(status: ExploreStatus.loading));

    try {
      final launches = await _spaceDevsRepository.getLaunches(launchTime);

      emit(state.copyWith(status: ExploreStatus.success, launches: launches));
    } on Exception {
      emit(state.copyWith(status: ExploreStatus.failure));
    }
  }

  Future<void> fetchNews() async {
    emit(state.copyWith(status: ExploreStatus.loading));

    try {
      final articles = await _spaceflightNewsRepository.getNews();

      emit(state.copyWith(status: ExploreStatus.success, news: articles));
    } on Exception {
      emit(state.copyWith(status: ExploreStatus.failure));
    }
  }
}
