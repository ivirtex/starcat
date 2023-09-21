// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      url: json['url'] as String?,
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      mapImage: json['map_image'] as String?,
      totalLaunchCount: json['total_launch_count'] as int?,
      totalLandingCount: json['total_landing_count'] as int?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'country_code': instance.countryCode,
      'map_image': instance.mapImage,
      'total_launch_count': instance.totalLaunchCount,
      'total_landing_count': instance.totalLandingCount,
    };
