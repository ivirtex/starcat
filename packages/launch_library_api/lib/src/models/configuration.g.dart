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
          id: $checkedConvert('id', (v) => v as int),
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
