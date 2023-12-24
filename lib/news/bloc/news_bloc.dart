// Dart imports:
import 'dart:async';
import 'dart:developer';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/news/news.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.g.dart';

class NewsBloc extends HydratedBloc<NewsEvent, NewsState> {
  NewsBloc(this._spaceflightNewsRepository) : super(const NewsState()) {
    on<NewsExploreFetchRequested>(_onExploreNewsFetchRequested);
    on<NewsFetchRequested>(_onNewsFetchRequested);
    on<NewsSelectionChanged>(_onNewsSelected);
    on<NewsArticleSaveRequested>(_onNewsArticleSaveRequested);
    on<NewsArticleUnsaveRequested>(_onNewsArticleUnsaveRequested);
    on<NewsNewPageRequested>(_onNewsNewPageRequested);
  }

  final SpaceflightNewsRepository _spaceflightNewsRepository;

  @override
  NewsState? fromJson(Map<String, dynamic> json) => NewsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(NewsState state) => state.toJson();

  Future<void> _onExploreNewsFetchRequested(
    NewsExploreFetchRequested event,
    Emitter<NewsState> emit,
  ) async {
    emit(state.copyWith(status: NewsStatus.loading));

    try {
      final latestArticles = await _spaceflightNewsRepository.getNews();

      emit(
        state.copyWith(
          status: NewsStatus.success,
          allLatestArticles: latestArticles,
        ),
      );
    } catch (err) {
      log('NewsBloc._onExploreNewsFetchRequested: $err');

      emit(state.copyWith(status: NewsStatus.failure));
    }
  }

  /// Fetches news articles from the API
  /// when user searches for a topic.
  Future<void> _onNewsFetchRequested(
    NewsFetchRequested event,
    Emitter<NewsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: NewsStatus.loading,
        currentOffsetOfArticles: 0,
        query: event.query,
      ),
    );

    try {
      final latestArticles =
          await _spaceflightNewsRepository.getNews(searchTopic: event.query);
      final popularArticles =
          latestArticles.where((article) => article.featured).toList();

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

      if (err is ArticlesResultsNotFoundFailure) {
        emit(
          state.copyWith(
            status: NewsStatus.noResults,
            news: const News(),
          ),
        );
      } else {
        emit(state.copyWith(status: NewsStatus.failure));
      }
    }
  }

  void _onNewsSelected(
    NewsSelectionChanged event,
    Emitter<NewsState> emit,
  ) {
    emit(state.copyWith(selection: event.selection));
  }

  void _onNewsArticleSaveRequested(
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

  void _onNewsArticleUnsaveRequested(
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

  Future<void> _onNewsNewPageRequested(
    NewsNewPageRequested event,
    Emitter<NewsState> emit,
  ) async {
    emit(state.copyWith(status: NewsStatus.loading));

    try {
      final latestArticles = await _spaceflightNewsRepository.getNews(
        offset: state.currentOffsetOfArticles + 10,
        searchTopic: state.query,
      );
      final popularArticles =
          latestArticles.where((article) => article.featured).toList();

      emit(
        state.copyWith(
          status: NewsStatus.success,
          news: state.news.copyWith(
            latestArticles: [
              ...state.news.latestArticles,
              ...latestArticles,
            ],
            popularArticles: [
              ...state.news.popularArticles,
              ...popularArticles,
            ],
          ),
          currentOffsetOfArticles: state.currentOffsetOfArticles + 10,
        ),
      );
    } catch (err) {
      log('NewsBloc._onNewsNewPageRequested: $err');

      emit(state.copyWith(status: NewsStatus.failure));
    }
  }
}
