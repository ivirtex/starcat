// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbiter_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterStatus _$OrbiterStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrbiterStatus',
      json,
      ($checkedConvert) {
        final val = OrbiterStatus(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrbiterStatusToJson(OrbiterStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
