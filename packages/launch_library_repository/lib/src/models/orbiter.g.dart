// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbiter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orbiter _$OrbiterFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Orbiter',
      json,
      ($checkedConvert) {
        final val = Orbiter(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          serialNumber: $checkedConvert('serial_number', (v) => v as String),
          isPlaceholder: $checkedConvert('is_placeholder', (v) => v as bool),
          inSpace: $checkedConvert('in_space', (v) => v as bool),
          timeInSpace: $checkedConvert('time_in_space', (v) => v as String),
          timeDocked: $checkedConvert('time_docked', (v) => v as String),
          status: $checkedConvert('status',
              (v) => OrbiterStatus.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description', (v) => v as String),
          spacecraftConfig: $checkedConvert(
              'spacecraft_config',
              (v) =>
                  OrbiterSpacecraftConfig.fromJson(v as Map<String, dynamic>)),
          flightsCount: $checkedConvert('flights_count', (v) => v as int?),
          missionEndsCount:
              $checkedConvert('mission_ends_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'serialNumber': 'serial_number',
        'isPlaceholder': 'is_placeholder',
        'inSpace': 'in_space',
        'timeInSpace': 'time_in_space',
        'timeDocked': 'time_docked',
        'spacecraftConfig': 'spacecraft_config',
        'flightsCount': 'flights_count',
        'missionEndsCount': 'mission_ends_count'
      },
    );

Map<String, dynamic> _$OrbiterToJson(Orbiter instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'serial_number': instance.serialNumber,
      'is_placeholder': instance.isPlaceholder,
      'in_space': instance.inSpace,
      'time_in_space': instance.timeInSpace,
      'time_docked': instance.timeDocked,
      'flights_count': instance.flightsCount,
      'mission_ends_count': instance.missionEndsCount,
      'status': instance.status,
      'description': instance.description,
      'spacecraft_config': instance.spacecraftConfig,
    };
