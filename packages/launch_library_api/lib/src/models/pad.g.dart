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
          id: $checkedConvert('id', (v) => v as int),
          location: $checkedConvert(
              'location', (v) => Location.fromJson(v as Map<String, dynamic>)),
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
