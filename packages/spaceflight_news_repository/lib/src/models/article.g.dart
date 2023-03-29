// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Article',
      json,
      ($checkedConvert) {
        final val = Article(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          newsSite: $checkedConvert('news_site', (v) => v as String),
          summary: $checkedConvert('summary', (v) => v as String),
          publishedAt: $checkedConvert(
              'published_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          featured: $checkedConvert('featured', (v) => v as bool),
          launchesRef: $checkedConvert('launches_ref',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          eventsRef: $checkedConvert('events_ref',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'imageUrl': 'image_url',
        'newsSite': 'news_site',
        'publishedAt': 'published_at',
        'updatedAt': 'updated_at',
        'launchesRef': 'launches_ref',
        'eventsRef': 'events_ref'
      },
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'news_site': instance.newsSite,
      'summary': instance.summary,
      'published_at': instance.publishedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'featured': instance.featured,
      'launches_ref': instance.launchesRef,
      'events_ref': instance.eventsRef,
    };
