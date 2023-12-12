// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      priority: json['priority'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      source: json['source'] as String?,
      publisher: json['publisher'] as String?,
      description: json['description'] as String?,
      featureImage: json['feature_image'] as String?,
    );

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'priority': instance.priority,
      'title': instance.title,
      'url': instance.url,
      'source': instance.source,
      'publisher': instance.publisher,
      'description': instance.description,
      'feature_image': instance.featureImage,
    };
