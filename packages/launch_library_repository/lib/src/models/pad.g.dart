// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pad _$PadFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Pad',
      json,
      ($checkedConvert) {
        final val = Pad(
          location: $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : Location.fromJson(v as Map<String, dynamic>)),
          url: $checkedConvert('url', (v) => v as String?),
          latitude: $checkedConvert('latitude', (v) => v as String?),
          longitude: $checkedConvert('longitude', (v) => v as String?),
          agencyId: $checkedConvert('agency_id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          infoUrl: $checkedConvert('info_url', (v) => v as String?),
          wikiUrl: $checkedConvert('wiki_url', (v) => v as String?),
          mapUrl: $checkedConvert('map_url', (v) => v as String?),
          mapImage: $checkedConvert('map_image', (v) => v as String?),
          totalLaunchCount:
              $checkedConvert('total_launch_count', (v) => v as int?),
          orbitalLaunchAttemptCount:
              $checkedConvert('orbital_launch_attempt_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'agencyId': 'agency_id',
        'infoUrl': 'info_url',
        'wikiUrl': 'wiki_url',
        'mapUrl': 'map_url',
        'mapImage': 'map_image',
        'totalLaunchCount': 'total_launch_count',
        'orbitalLaunchAttemptCount': 'orbital_launch_attempt_count'
      },
    );

Map<String, dynamic> _$PadToJson(Pad instance) => <String, dynamic>{
      'url': instance.url,
      'agency_id': instance.agencyId,
      'name': instance.name,
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'map_url': instance.mapUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
      'map_image': instance.mapImage,
      'total_launch_count': instance.totalLaunchCount,
      'orbital_launch_attempt_count': instance.orbitalLaunchAttemptCount,
    };
