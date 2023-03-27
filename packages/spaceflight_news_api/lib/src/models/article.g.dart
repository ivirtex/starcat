// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      imageUrl: json['imageUrl'] as String,
      newsSite: json['newsSite'] as String,
      summary: json['summary'] as String,
      publishedAt: json['publishedAt'] as String,
      updatedAt: json['updatedAt'] as String,
      featured: json['featured'] as bool,
      launchesInfo: (json['launches'] as List<dynamic>)
          .map((e) => LaunchInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'newsSite': instance.newsSite,
      'summary': instance.summary,
      'publishedAt': instance.publishedAt,
      'updatedAt': instance.updatedAt,
      'featured': instance.featured,
      'launches': instance.launchesInfo,
      'events': instance.events,
    };

LaunchInfo _$LaunchInfoFromJson(Map<String, dynamic> json) => LaunchInfo(
      id: json['id'] as String,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$LaunchInfoToJson(LaunchInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: json['id'] as int,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
    };
