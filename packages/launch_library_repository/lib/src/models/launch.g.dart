// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Launch',
      json,
      ($checkedConvert) {
        final val = Launch(
          id: $checkedConvert('id', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => Status.fromJson(v as Map<String, dynamic>)),
          launchServiceProvider: $checkedConvert('launch_service_provider',
              (v) => LaunchServiceProvider.fromJson(v as Map<String, dynamic>)),
          rocket: $checkedConvert(
              'rocket', (v) => Rocket.fromJson(v as Map<String, dynamic>)),
          mission: $checkedConvert(
              'mission', (v) => Mission.fromJson(v as Map<String, dynamic>)),
          pad: $checkedConvert(
              'pad', (v) => Pad.fromJson(v as Map<String, dynamic>)),
          webcastLive: $checkedConvert('webcast_live', (v) => v as bool),
          program: $checkedConvert(
              'program',
              (v) => (v as List<dynamic>)
                  .map((e) => Program.fromJson(e as Map<String, dynamic>))
                  .toList()),
          image: $checkedConvert('image', (v) => v as String?),
          infographic: $checkedConvert('infographic', (v) => v as String?),
          net: $checkedConvert(
              'net', (v) => v == null ? null : DateTime.parse(v as String)),
          windowEnd: $checkedConvert('window_end',
              (v) => v == null ? null : DateTime.parse(v as String)),
          windowStart: $checkedConvert('window_start',
              (v) => v == null ? null : DateTime.parse(v as String)),
          probability: $checkedConvert('probability', (v) => v as int?),
          holdreason: $checkedConvert('holdreason', (v) => v as String?),
          failreason: $checkedConvert('failreason', (v) => v as String?),
          hashtag: $checkedConvert('hashtag', (v) => v as String?),
          orbitalLaunchAttemptCount:
              $checkedConvert('orbital_launch_attempt_count', (v) => v as int?),
          locationLaunchAttemptCount: $checkedConvert(
              'location_launch_attempt_count', (v) => v as int?),
          padLaunchAttemptCount:
              $checkedConvert('pad_launch_attempt_count', (v) => v as int?),
          agencyLaunchAttemptCount:
              $checkedConvert('agency_launch_attempt_count', (v) => v as int?),
          orbitalLaunchAttemptCountYear: $checkedConvert(
              'orbital_launch_attempt_count_year', (v) => v as int?),
          locationLaunchAttemptCountYear: $checkedConvert(
              'location_launch_attempt_count_year', (v) => v as int?),
          padLaunchAttemptCountYear: $checkedConvert(
              'pad_launch_attempt_count_year', (v) => v as int?),
          agencyLaunchAttemptCountYear: $checkedConvert(
              'agency_launch_attempt_count_year', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'launchServiceProvider': 'launch_service_provider',
        'webcastLive': 'webcast_live',
        'windowEnd': 'window_end',
        'windowStart': 'window_start',
        'orbitalLaunchAttemptCount': 'orbital_launch_attempt_count',
        'locationLaunchAttemptCount': 'location_launch_attempt_count',
        'padLaunchAttemptCount': 'pad_launch_attempt_count',
        'agencyLaunchAttemptCount': 'agency_launch_attempt_count',
        'orbitalLaunchAttemptCountYear': 'orbital_launch_attempt_count_year',
        'locationLaunchAttemptCountYear': 'location_launch_attempt_count_year',
        'padLaunchAttemptCountYear': 'pad_launch_attempt_count_year',
        'agencyLaunchAttemptCountYear': 'agency_launch_attempt_count_year'
      },
    );

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'name': instance.name,
      'status': instance.status,
      'net': instance.net?.toIso8601String(),
      'window_end': instance.windowEnd?.toIso8601String(),
      'window_start': instance.windowStart?.toIso8601String(),
      'probability': instance.probability,
      'holdreason': instance.holdreason,
      'failreason': instance.failreason,
      'hashtag': instance.hashtag,
      'launch_service_provider': instance.launchServiceProvider,
      'rocket': instance.rocket,
      'mission': instance.mission,
      'pad': instance.pad,
      'webcast_live': instance.webcastLive,
      'image': instance.image,
      'infographic': instance.infographic,
      'program': instance.program,
      'orbital_launch_attempt_count': instance.orbitalLaunchAttemptCount,
      'location_launch_attempt_count': instance.locationLaunchAttemptCount,
      'pad_launch_attempt_count': instance.padLaunchAttemptCount,
      'agency_launch_attempt_count': instance.agencyLaunchAttemptCount,
      'orbital_launch_attempt_count_year':
          instance.orbitalLaunchAttemptCountYear,
      'location_launch_attempt_count_year':
          instance.locationLaunchAttemptCountYear,
      'pad_launch_attempt_count_year': instance.padLaunchAttemptCountYear,
      'agency_launch_attempt_count_year': instance.agencyLaunchAttemptCountYear,
    };