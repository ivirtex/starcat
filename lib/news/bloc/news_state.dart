part of 'news_bloc.dart';

enum NewsStatus { initial, loading, success, failure }

class NewsState extends Equatable {
  const NewsState({
    this.status = NewsStatus.initial,
    News? news,
  }) : news = news ?? const News(articles: []);

  final NewsStatus status;
  final News news;

  NewsState copyWith({
    NewsStatus? status,
    News? news,
  }) {
    return NewsState(
      status: status ?? this.status,
      news: news ?? this.news,
    );
  }

  @override
  List<Object> get props => [];
}
