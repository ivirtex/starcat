// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map<String, dynamic> json) => Mission(
      orbit: json['orbit'] == null
          ? null
          : Orbit.fromJson(json['orbit'] as Map<String, dynamic>),
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      launchDesignator: json['launch_designator'] as String?,
    );

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'launch_designator': instance.launchDesignator,
      'type': instance.type,
      'orbit': instance.orbit,
    };
