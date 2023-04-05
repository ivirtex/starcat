// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          url: $checkedConvert('url', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          mapImage: $checkedConvert('map_image', (v) => v as String?),
          totalLaunchCount:
              $checkedConvert('total_launch_count', (v) => v as int?),
          totalLandingCount:
              $checkedConvert('total_landing_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'countryCode': 'country_code',
        'mapImage': 'map_image',
        'totalLaunchCount': 'total_launch_count',
        'totalLandingCount': 'total_landing_count'
      },
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'country_code': instance.countryCode,
      'map_image': instance.mapImage,
      'total_launch_count': instance.totalLaunchCount,
      'total_landing_count': instance.totalLandingCount,
    };
