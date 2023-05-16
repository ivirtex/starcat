// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'spacecraft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spacecraft _$SpacecraftFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Spacecraft',
      json,
      ($checkedConvert) {
        final val = Spacecraft(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          serialNumber: $checkedConvert('serial_number', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'serialNumber': 'serial_number'},
    );

Map<String, dynamic> _$SpacecraftToJson(Spacecraft instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'serial_number': instance.serialNumber,
    };
