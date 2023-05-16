// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Rocket',
      json,
      ($checkedConvert) {
        final val = Rocket(
          id: $checkedConvert('id', (v) => v as int),
          configuration: $checkedConvert('configuration',
              (v) => Configuration.fromJson(v as Map<String, dynamic>)),
          launcherStage: $checkedConvert(
              'launcher_stage',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => FirstStage.fromJson(e as Map<String, dynamic>))
                  .toList()),
          spacecraftStage: $checkedConvert(
              'spacecraft_stage',
              (v) => v == null
                  ? null
                  : SpacecraftStage.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'launcherStage': 'launcher_stage',
        'spacecraftStage': 'spacecraft_stage'
      },
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'id': instance.id,
      'configuration': instance.configuration,
      'launcher_stage': instance.launcherStage,
      'spacecraft_stage': instance.spacecraftStage,
    };
