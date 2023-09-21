// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'first_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      type: json['type'] as String,
      launcher: Launcher.fromJson(json['launcher'] as Map<String, dynamic>),
      landing: json['landing'] == null
          ? null
          : Landing.fromJson(json['landing'] as Map<String, dynamic>),
      reused: json['reused'] as bool?,
      launcherFlightNumber: json['launcher_flight_number'] as int?,
      previousFlightDate: json['previous_flight_date'] == null
          ? null
          : DateTime.parse(json['previous_flight_date'] as String),
      turnAroundTimeDays: json['turn_around_time_days'] as int?,
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'reused': instance.reused,
      'launcher_flight_number': instance.launcherFlightNumber,
      'launcher': instance.launcher,
      'landing': instance.landing,
      'previous_flight_date': instance.previousFlightDate?.toIso8601String(),
      'turn_around_time_days': instance.turnAroundTimeDays,
    };
