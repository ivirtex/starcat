// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orbit _$OrbitFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Orbit',
      json,
      ($checkedConvert) {
        final val = Orbit(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
        );
        return val;
      },
    );
