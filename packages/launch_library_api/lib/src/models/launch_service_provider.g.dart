// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch_service_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchServiceProvider _$LaunchServiceProviderFromJson(
        Map<String, dynamic> json) =>
    LaunchServiceProvider(
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$LaunchServiceProviderToJson(
        LaunchServiceProvider instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
    };
