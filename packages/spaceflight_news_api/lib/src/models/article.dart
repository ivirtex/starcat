// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:spaceflight_news_api/src/models/models.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends Equatable {
  const Article({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.featured,
    required this.launchesInfo,
    required this.events,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  final int id;
  final String title;
  final String url;
  final String imageUrl;
  final String newsSite;
  final String summary;
  final String publishedAt;
  final String updatedAt;
  final bool featured;
  @JsonKey(name: 'launches')
  final List<LaunchInfo> launchesInfo;
  final List<Event> events;

  @override
  List<Object?> get props => [
        id,
        title,
        url,
        imageUrl,
        newsSite,
        summary,
        publishedAt,
        updatedAt,
        featured,
        launchesInfo,
        events,
      ];
}
