// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Update _$UpdateFromJson(Map<String, dynamic> json) => Update(
      comment: json['comment'] as String?,
      infoUrl: json['info_url'] as String?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$UpdateToJson(Update instance) => <String, dynamic>{
      'comment': instance.comment,
      'info_url': instance.infoUrl,
      'created_on': instance.createdOn?.toIso8601String(),
    };
