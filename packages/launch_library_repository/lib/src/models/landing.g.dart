// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'landing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Landing _$LandingFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Landing',
      json,
      ($checkedConvert) {
        final val = Landing(
          id: $checkedConvert('id', (v) => v as int),
          type: $checkedConvert(
              'type',
              (v) => v == null
                  ? null
                  : LandingType.fromJson(v as Map<String, dynamic>)),
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : LandingLocation.fromJson(v as Map<String, dynamic>)),
          attempt: $checkedConvert('attempt', (v) => v as bool?),
          success: $checkedConvert('success', (v) => v as bool?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LandingToJson(Landing instance) => <String, dynamic>{
      'id': instance.id,
      'attempt': instance.attempt,
      'success': instance.success,
      'description': instance.description,
      'location': instance.location,
      'type': instance.type,
    };
