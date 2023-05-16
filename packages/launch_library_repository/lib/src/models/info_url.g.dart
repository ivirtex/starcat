// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'info_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoURL _$InfoURLFromJson(Map<String, dynamic> json) => $checkedCreate(
      'InfoURL',
      json,
      ($checkedConvert) {
        final val = InfoURL(
          url: $checkedConvert('url', (v) => v as String),
          priority: $checkedConvert('priority', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          featureImage: $checkedConvert('feature_image', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'featureImage': 'feature_image'},
    );

Map<String, dynamic> _$InfoURLToJson(InfoURL instance) => <String, dynamic>{
      'priority': instance.priority,
      'title': instance.title,
      'description': instance.description,
      'feature_image': instance.featureImage,
      'url': instance.url,
    };
