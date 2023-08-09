// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Event',
      json,
      ($checkedConvert) {
        final val = Event(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => EventType.fromJson(v as Map<String, dynamic>)),
          datePrecision: $checkedConvert(
              'date_precision',
              (v) => v == null
                  ? null
                  : NetPrecision.fromJson(v as Map<String, dynamic>)),
          updates: $checkedConvert(
              'updates',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          description: $checkedConvert('description', (v) => v as String?),
          webcastLive: $checkedConvert('webcast_live', (v) => v as bool?),
          location: $checkedConvert('location', (v) => v as String?),
          newsUrl: $checkedConvert('news_url', (v) => v as String?),
          videoUrl: $checkedConvert('video_url', (v) => v as String?),
          featureImage: $checkedConvert('feature_image', (v) => v as String?),
          date: $checkedConvert(
              'date', (v) => v == null ? null : DateTime.parse(v as String)),
          launches: $checkedConvert(
              'launches',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          program: $checkedConvert(
              'program',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
      fieldKeyMap: const {
        'datePrecision': 'date_precision',
        'webcastLive': 'webcast_live',
        'newsUrl': 'news_url',
        'videoUrl': 'video_url',
        'featureImage': 'feature_image'
      },
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'name': instance.name,
      'updates': instance.updates,
      'type': instance.type,
      'description': instance.description,
      'webcast_live': instance.webcastLive,
      'location': instance.location,
      'news_url': instance.newsUrl,
      'video_url': instance.videoUrl,
      'feature_image': instance.featureImage,
      'date': instance.date?.toIso8601String(),
      'date_precision': instance.datePrecision,
      'launches': instance.launches,
      'program': instance.program,
    };
