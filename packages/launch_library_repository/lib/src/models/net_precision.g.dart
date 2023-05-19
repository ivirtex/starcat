// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'net_precision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetPrecision _$NetPrecisionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NetPrecision',
      json,
      ($checkedConvert) {
        final val = NetPrecision(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String?),
          abbrev: $checkedConvert('abbrev', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$NetPrecisionToJson(NetPrecision instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
      'description': instance.description,
    };
