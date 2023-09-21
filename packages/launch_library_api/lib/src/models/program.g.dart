// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Program _$ProgramFromJson(Map<String, dynamic> json) => Program(
      agencies: (json['agencies'] as List<dynamic>)
          .map((e) => LaunchServiceProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
      missionPatches: (json['mission_patches'] as List<dynamic>)
          .map((e) => MissionPatch.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      infoUrl: json['info_url'] as String?,
      wikiUrl: json['wiki_url'] as String?,
    );

Map<String, dynamic> _$ProgramToJson(Program instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'agencies': instance.agencies,
      'image_url': instance.imageUrl,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'mission_patches': instance.missionPatches,
    };
