// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch_service_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchServiceProvider _$LaunchServiceProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'LaunchServiceProvider',
      json,
      ($checkedConvert) {
        final val = LaunchServiceProvider(
          url: $checkedConvert('url', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LaunchServiceProviderToJson(
        LaunchServiceProvider instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
    };