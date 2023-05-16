// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'spacecraft_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacecraftStage _$SpacecraftStageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SpacecraftStage',
      json,
      ($checkedConvert) {
        final val = SpacecraftStage(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          spacecraft: $checkedConvert('spacecraft',
              (v) => Spacecraft.fromJson(v as Map<String, dynamic>)),
          landing: $checkedConvert(
              'landing', (v) => Landing.fromJson(v as Map<String, dynamic>)),
          missionEnd: $checkedConvert('mission_end',
              (v) => v == null ? null : DateTime.parse(v as String)),
          destination: $checkedConvert('destination', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'missionEnd': 'mission_end'},
    );

Map<String, dynamic> _$SpacecraftStageToJson(SpacecraftStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'spacecraft': instance.spacecraft,
      'landing': instance.landing,
      'mission_end': instance.missionEnd?.toIso8601String(),
      'destination': instance.destination,
    };
