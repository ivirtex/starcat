// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Mission',
      json,
      ($checkedConvert) {
        final val = Mission(
          id: $checkedConvert('id', (v) => v as int),
          orbit: $checkedConvert(
              'orbit', (v) => Orbit.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          launchDesignator:
              $checkedConvert('launch_designator', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'launchDesignator': 'launch_designator'},
    );