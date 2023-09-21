// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      url: json['url'] as String?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      type: json['type'] == null
          ? null
          : EventType.fromJson(json['type'] as Map<String, dynamic>),
      datePrecision: json['date_precision'] == null
          ? null
          : NetPrecision.fromJson(
              json['date_precision'] as Map<String, dynamic>),
      updates: (json['updates'] as List<dynamic>?)
              ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String?,
      webcastLive: json['webcast_live'] as bool?,
      location: json['location'] as String?,
      newsUrl: json['news_url'] as String?,
      videoUrl: json['video_url'] as String?,
      featureImage: json['feature_image'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      launches: (json['launches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      program: (json['program'] as List<dynamic>?)
              ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
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
