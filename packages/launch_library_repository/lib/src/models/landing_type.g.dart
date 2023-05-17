// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'landing_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandingType _$LandingTypeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LandingType',
      json,
      ($checkedConvert) {
        final val = LandingType(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LandingTypeToJson(LandingType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };
