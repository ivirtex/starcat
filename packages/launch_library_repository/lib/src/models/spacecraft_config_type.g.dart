// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'spacecraft_config_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacecraftConfigType _$SpacecraftConfigTypeFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SpacecraftConfigType',
      json,
      ($checkedConvert) {
        final val = SpacecraftConfigType(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SpacecraftConfigTypeToJson(
        SpacecraftConfigType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
