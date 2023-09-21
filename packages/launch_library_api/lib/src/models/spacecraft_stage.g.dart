// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'spacecraft_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacecraftStage _$SpacecraftStageFromJson(Map<String, dynamic> json) =>
    SpacecraftStage(
      url: json['url'] as String?,
      spacecraft: json['spacecraft'] == null
          ? null
          : Spacecraft.fromJson(json['spacecraft'] as Map<String, dynamic>),
      landing: json['landing'] == null
          ? null
          : Landing.fromJson(json['landing'] as Map<String, dynamic>),
      missionEnd: json['mission_end'] == null
          ? null
          : DateTime.parse(json['mission_end'] as String),
      destination: json['destination'] as String?,
    );

Map<String, dynamic> _$SpacecraftStageToJson(SpacecraftStage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'spacecraft': instance.spacecraft,
      'landing': instance.landing,
      'mission_end': instance.missionEnd?.toIso8601String(),
      'destination': instance.destination,
    };
