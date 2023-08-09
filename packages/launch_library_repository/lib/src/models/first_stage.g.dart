// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'first_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => $checkedCreate(
      'FirstStage',
      json,
      ($checkedConvert) {
        final val = FirstStage(
          id: $checkedConvert('id', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          launcher: $checkedConvert(
              'launcher', (v) => Launcher.fromJson(v as Map<String, dynamic>)),
          landing: $checkedConvert(
              'landing',
              (v) => v == null
                  ? null
                  : Landing.fromJson(v as Map<String, dynamic>)),
          reused: $checkedConvert('reused', (v) => v as bool?),
          launcherFlightNumber:
              $checkedConvert('launcher_flight_number', (v) => v as int?),
          previousFlightDate: $checkedConvert('previous_flight_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
          turnAroundTimeDays:
              $checkedConvert('turn_around_time_days', (v) => v as int?),
          previousFlight: $checkedConvert(
              'previous_flight',
              (v) => v == null
                  ? null
                  : Launch.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'launcherFlightNumber': 'launcher_flight_number',
        'previousFlightDate': 'previous_flight_date',
        'turnAroundTimeDays': 'turn_around_time_days',
        'previousFlight': 'previous_flight'
      },
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'reused': instance.reused,
      'launcher_flight_number': instance.launcherFlightNumber,
      'launcher': instance.launcher,
      'landing': instance.landing,
      'previous_flight_date': instance.previousFlightDate?.toIso8601String(),
      'turn_around_time_days': instance.turnAroundTimeDays,
      'previous_flight': instance.previousFlight,
    };
