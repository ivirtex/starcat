// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

part 'news.g.dart';

@JsonSerializable()
class News extends Equatable {
  const News({
    this.latestArticles = const [],
    this.popularArticles = const [],
    this.savedArticles = const [],
    this.allSavedArticles = const [],
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  final List<Article> latestArticles;
  final List<Article> popularArticles;
  final List<Article> savedArticles;

  // Contains all saved articles,
  // they are not affected by search queries.
  final List<Article> allSavedArticles;

  Map<String, dynamic> toJson() => _$NewsToJson(this);

  News copyWith({
    List<Article>? latestArticles,
    List<Article>? popularArticles,
    List<Article>? savedArticles,
    List<Article>? allSavedArticles,
  }) {
    return News(
      latestArticles: latestArticles ?? this.latestArticles,
      popularArticles: popularArticles ?? this.popularArticles,
      savedArticles: savedArticles ?? this.savedArticles,
      allSavedArticles: allSavedArticles ?? this.allSavedArticles,
    );
  }

  @override
  List<Object?> get props => [
        latestArticles,
        popularArticles,
        savedArticles,
        allSavedArticles,
      ];
}
