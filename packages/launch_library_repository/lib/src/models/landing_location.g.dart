// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'landing_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandingLocation _$LandingLocationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LandingLocation',
      json,
      ($checkedConvert) {
        final val = LandingLocation(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : Location.fromJson(v as Map<String, dynamic>)),
          successfulLandings:
              $checkedConvert('successful_landings', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'successfulLandings': 'successful_landings'},
    );

Map<String, dynamic> _$LandingLocationToJson(LandingLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
      'location': instance.location,
      'successful_landings': instance.successfulLandings,
    };
