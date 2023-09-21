// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbiter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orbiter _$OrbiterFromJson(Map<String, dynamic> json) => Orbiter(
      url: json['url'] as String?,
      name: json['name'] as String?,
      serialNumber: json['serial_number'] as String?,
      isPlaceholder: json['is_placeholder'] as bool?,
      inSpace: json['in_space'] as bool?,
      timeInSpace: json['time_in_space'] as String?,
      timeDocked: json['time_docked'] as String?,
      status: json['status'] == null
          ? null
          : OrbiterStatus.fromJson(json['status'] as Map<String, dynamic>),
      description: json['description'] as String?,
      spacecraftConfig: json['spacecraft_config'] == null
          ? null
          : OrbiterSpacecraftConfig.fromJson(
              json['spacecraft_config'] as Map<String, dynamic>),
      flightsCount: json['flights_count'] as int?,
      missionEndsCount: json['mission_ends_count'] as int?,
    );

Map<String, dynamic> _$OrbiterToJson(Orbiter instance) => <String, dynamic>{
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
