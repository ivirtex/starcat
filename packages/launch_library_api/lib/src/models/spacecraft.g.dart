// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'spacecraft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spacecraft _$SpacecraftFromJson(Map<String, dynamic> json) => Spacecraft(
      url: json['url'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      serialNumber: json['serial_number'] as String?,
    );

Map<String, dynamic> _$SpacecraftToJson(Spacecraft instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'description': instance.description,
      'serial_number': instance.serialNumber,
    };
