// Package imports:
import 'package:equatable/equatable.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

class News extends Equatable {
  const News({
    this.latestArticles = const [],
    this.popularArticles = const [],
    this.savedArticles = const [],
  });

  final List<Article> latestArticles;
  final List<Article> popularArticles;
  final List<Article> savedArticles;

  News copyWith({
    List<Article>? latestArticles,
    List<Article>? popularArticles,
    List<Article>? savedArticles,
  }) {
    return News(
      latestArticles: latestArticles ?? this.latestArticles,
      popularArticles: popularArticles ?? this.popularArticles,
      savedArticles: savedArticles ?? this.savedArticles,
    );
  }

  @override
  List<Object?> get props => [
        latestArticles,
        popularArticles,
        savedArticles,
      ];
}
