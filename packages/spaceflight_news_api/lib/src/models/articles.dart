import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'articles.g.dart';

@JsonSerializable()
class Articles extends Equatable {
  const Articles({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<Article> results;

  @override
  List<Object?> get props => [
        count,
        next,
        previous,
        results,
      ];
}

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

@JsonSerializable()
class LaunchInfo extends Equatable {
  const LaunchInfo({
    required this.launchId,
    required this.provider,
  });

  factory LaunchInfo.fromJson(Map<String, dynamic> json) =>
      _$LaunchInfoFromJson(json);

  final String launchId;
  final String provider;

  @override
  List<Object?> get props => [
        launchId,
        provider,
      ];
}

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.eventId,
    required this.provider,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final int eventId;
  final String provider;

  @override
  List<Object?> get props => [
        eventId,
        provider,
      ];
}
