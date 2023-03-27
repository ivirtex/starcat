import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

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

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

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
    required this.id,
    required this.provider,
  });

  factory LaunchInfo.fromJson(Map<String, dynamic> json) =>
      _$LaunchInfoFromJson(json);

  final String id;
  final String provider;

  Map<String, dynamic> toJson() => _$LaunchInfoToJson(this);

  @override
  List<Object?> get props => [
        id,
        provider,
      ];
}

@JsonSerializable()
class Event extends Equatable {
  const Event({
    required this.id,
    required this.provider,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final int id;
  final String provider;

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  List<Object?> get props => [
        id,
        provider,
      ];
}
