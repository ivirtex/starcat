import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._spaceflightNewsRepository) : super(const NewsState()) {
    on<NewsFetchRequested>(_onNewsFetchRequested);
  }

  final SpaceflightNewsRepository _spaceflightNewsRepository;

  Future<void> _onNewsFetchRequested(
    NewsFetchRequested event,
    Emitter<NewsState> emit,
  ) async {
    emit(state.copyWith(status: NewsStatus.loading));

    try {
      final news = await _spaceflightNewsRepository.getNews();
      emit(state.copyWith(status: NewsStatus.success, news: news));
    } catch (err) {
      log('NewsBloc._onNewsFetchRequested: $err');

      emit(state.copyWith(status: NewsStatus.failure));
    }
  }
}
