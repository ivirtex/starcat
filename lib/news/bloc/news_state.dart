part of 'news_bloc.dart';

enum NewsStatus { initial, loading, success, failure }

enum SelectedNews { latest, popular, saved }

class NewsState extends Equatable {
  const NewsState({
    this.status = NewsStatus.initial,
    this.selection = SelectedNews.latest,
    News? news,
  }) : news = news ?? const News();

  final NewsStatus status;
  final SelectedNews selection;
  final News news;

  NewsState copyWith({
    NewsStatus? status,
    SelectedNews? selectedNews,
    News? news,
  }) {
    return NewsState(
      status: status ?? this.status,
      selection: selectedNews ?? selection,
      news: news ?? this.news,
    );
  }

  @override
  List<Object> get props => [
        status,
        selection,
        news,
      ];
}
