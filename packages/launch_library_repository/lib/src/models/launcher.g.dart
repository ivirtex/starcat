// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launcher _$LauncherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Launcher',
      json,
      ($checkedConvert) {
        final val = Launcher(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          details: $checkedConvert('details', (v) => v as String?),
          flightProven: $checkedConvert('flight_proven', (v) => v as bool?),
          serialNumber: $checkedConvert('serial_number', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          successfulLandings:
              $checkedConvert('successful_landings', (v) => v as int?),
          attemptedLandings:
              $checkedConvert('attempted_landings', (v) => v as int?),
          flights: $checkedConvert('flights', (v) => v as int?),
          lastLaunchDate: $checkedConvert('last_launch_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
          firstLaunchDate: $checkedConvert('first_launch_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'flightProven': 'flight_proven',
        'serialNumber': 'serial_number',
        'imageUrl': 'image_url',
        'successfulLandings': 'successful_landings',
        'attemptedLandings': 'attempted_landings',
        'lastLaunchDate': 'last_launch_date',
        'firstLaunchDate': 'first_launch_date'
      },
    );

Map<String, dynamic> _$LauncherToJson(Launcher instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'details': instance.details,
      'flight_proven': instance.flightProven,
      'serial_number': instance.serialNumber,
      'status': instance.status,
      'image_url': instance.imageUrl,
      'successful_landings': instance.successfulLandings,
      'attempted_landings': instance.attemptedLandings,
      'flights': instance.flights,
      'last_launch_date': instance.lastLaunchDate?.toIso8601String(),
      'first_launch_date': instance.firstLaunchDate?.toIso8601String(),
    };
