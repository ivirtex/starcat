// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/news/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._spaceflightNewsRepository) : super(const NewsState()) {
    on<NewsFetchRequested>(_onNewsFetchRequested);
    on<NewsSelectionChanged>(_onNewsSelected);
    on<NewsArticleSaveRequested>(_onNewsArticleSaveRequested);
    on<NewsArticleUnsaveRequested>(_onNewsArticleUnsaveRequested);
  }

  final SpaceflightNewsRepository _spaceflightNewsRepository;

  Future<void> _onNewsFetchRequested(
    NewsFetchRequested event,
    Emitter<NewsState> emit,
  ) async {
    emit(state.copyWith(status: NewsStatus.loading));

    try {
      final latestArticles = await _spaceflightNewsRepository.getNews();
      final popularArticles = latestArticles
          .where((article) => article.featured)
          .toList(growable: false);

      log('no. of popularArticles: ${popularArticles.length}');

      emit(
        state.copyWith(
          status: NewsStatus.success,
          news: state.news.copyWith(
            latestArticles: latestArticles,
            popularArticles: popularArticles,
          ),
        ),
      );
    } catch (err) {
      log('NewsBloc._onNewsFetchRequested: $err');

      emit(state.copyWith(status: NewsStatus.failure));
    }
  }

  FutureOr<void> _onNewsSelected(
    NewsSelectionChanged event,
    Emitter<NewsState> emit,
  ) {
    emit(state.copyWith(selectedNews: event.selectedNews));
  }

  FutureOr<void> _onNewsArticleSaveRequested(
    NewsArticleSaveRequested event,
    Emitter<NewsState> emit,
  ) {
    final article = event.article;

    emit(
      state.copyWith(
        news: state.news.copyWith(
          savedArticles: state.news.savedArticles.contains(article)
              ? state.news.savedArticles
              : [...state.news.savedArticles, article],
        ),
      ),
    );
  }

  FutureOr<void> _onNewsArticleUnsaveRequested(
    NewsArticleUnsaveRequested event,
    Emitter<NewsState> emit,
  ) {
    emit(
      state.copyWith(
        news: state.news.copyWith(
          savedArticles: state.news.savedArticles
              .where((article) => article.id != event.article.id)
              .toList(),
        ),
      ),
    );
  }
}
