// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mission_patch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissionPatch _$MissionPatchFromJson(Map<String, dynamic> json) => MissionPatch(
      agency: json['agency'] == null
          ? null
          : LaunchServiceProvider.fromJson(
              json['agency'] as Map<String, dynamic>),
      name: json['name'] as String?,
      priority: json['priority'] as int?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$MissionPatchToJson(MissionPatch instance) =>
    <String, dynamic>{
      'name': instance.name,
      'priority': instance.priority,
      'image_url': instance.imageUrl,
      'agency': instance.agency,
    };
