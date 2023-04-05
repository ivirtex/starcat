// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Configuration',
      json,
      ($checkedConvert) {
        final val = Configuration(
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          family: $checkedConvert('family', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          variant: $checkedConvert('variant', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'fullName': 'full_name'},
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'family': instance.family,
      'full_name': instance.fullName,
      'variant': instance.variant,
    };
