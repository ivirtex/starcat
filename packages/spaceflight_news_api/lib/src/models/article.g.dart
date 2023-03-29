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
          publishedAt: $checkedConvert('published_at', (v) => v as String),
          updatedAt: $checkedConvert('updated_at', (v) => v as String),
          featured: $checkedConvert('featured', (v) => v as bool),
          launchesInfo: $checkedConvert(
              'launches',
              (v) => (v as List<dynamic>)
                  .map((e) => LaunchInfo.fromJson(e as Map<String, dynamic>))
                  .toList()),
          events: $checkedConvert(
              'events',
              (v) => (v as List<dynamic>)
                  .map((e) => Event.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'imageUrl': 'image_url',
        'newsSite': 'news_site',
        'publishedAt': 'published_at',
        'updatedAt': 'updated_at',
        'launchesInfo': 'launches'
      },
    );
