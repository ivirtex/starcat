// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => Launch(
      id: json['id'] as String,
      url: json['url'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      lastUpdated: json['last_updated'] as String?,
      launchServiceProvider: json['launch_service_provider'] == null
          ? null
          : LaunchServiceProvider.fromJson(
              json['launch_service_provider'] as Map<String, dynamic>),
      rocket: json['rocket'] == null
          ? null
          : Rocket.fromJson(json['rocket'] as Map<String, dynamic>),
      mission: json['mission'] == null
          ? null
          : Mission.fromJson(json['mission'] as Map<String, dynamic>),
      pad: json['pad'] == null
          ? null
          : Pad.fromJson(json['pad'] as Map<String, dynamic>),
      vidURLs: (json['vidURLs'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      webcastLive: json['webcast_live'] as bool?,
      image: json['image'] as String?,
      program: (json['program'] as List<dynamic>?)
          ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
          .toList(),
      infographic: json['infographic'] as String?,
      net: json['net'] == null ? null : DateTime.parse(json['net'] as String),
      windowEnd: json['window_end'] == null
          ? null
          : DateTime.parse(json['window_end'] as String),
      windowStart: json['window_start'] == null
          ? null
          : DateTime.parse(json['window_start'] as String),
      probability: json['probability'] as int?,
      netPrecision: json['net_precision'] == null
          ? null
          : NetPrecision.fromJson(
              json['net_precision'] as Map<String, dynamic>),
      holdreason: json['holdreason'] as String?,
      failreason: json['failreason'] as String?,
      hashtag: json['hashtag'] as String?,
      orbitalLaunchAttemptCount: json['orbital_launch_attempt_count'] as int?,
      locationLaunchAttemptCount: json['location_launch_attempt_count'] as int?,
      padLaunchAttemptCount: json['pad_launch_attempt_count'] as int?,
      agencyLaunchAttemptCount: json['agency_launch_attempt_count'] as int?,
      orbitalLaunchAttemptCountYear:
          json['orbital_launch_attempt_count_year'] as int?,
      locationLaunchAttemptCountYear:
          json['location_launch_attempt_count_year'] as int?,
      padLaunchAttemptCountYear: json['pad_launch_attempt_count_year'] as int?,
      agencyLaunchAttemptCountYear:
          json['agency_launch_attempt_count_year'] as int?,
    );

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'name': instance.name,
      'status': instance.status,
      'last_updated': instance.lastUpdated,
      'net': instance.net?.toIso8601String(),
      'window_end': instance.windowEnd?.toIso8601String(),
      'window_start': instance.windowStart?.toIso8601String(),
      'probability': instance.probability,
      'net_precision': instance.netPrecision,
      'holdreason': instance.holdreason,
      'failreason': instance.failreason,
      'hashtag': instance.hashtag,
      'launch_service_provider': instance.launchServiceProvider,
      'rocket': instance.rocket,
      'mission': instance.mission,
      'pad': instance.pad,
      'vidURLs': instance.vidURLs,
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
