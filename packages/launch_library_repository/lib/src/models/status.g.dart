// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Status',
      json,
      ($checkedConvert) {
        final val = Status(
          name: $checkedConvert('name', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };
