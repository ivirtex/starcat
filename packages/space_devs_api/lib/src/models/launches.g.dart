// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches _$LaunchesFromJson(Map<String, dynamic> json) => Launches(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Launch _$LaunchFromJson(Map<String, dynamic> json) => Launch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      lastUpdated: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      net: json['net'] == null ? null : DateTime.parse(json['net'] as String),
      windowEnd: json['window_end'] == null
          ? null
          : DateTime.parse(json['window_end'] as String),
      windowStart: json['window_start'] == null
          ? null
          : DateTime.parse(json['window_start'] as String),
      probability: json['probability'] as int?,
      holdreason: json['holdreason'] as String?,
      failreason: json['failreason'] as String?,
      hashtag: json['hashtag'],
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
      webcastLive: json['webcast_live'] as bool?,
      image: json['image'] as String?,
      infographic: json['infographic'],
      program: (json['program'] as List<dynamic>?)
          ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
          .toList(),
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

LaunchServiceProvider _$LaunchServiceProviderFromJson(
        Map<String, dynamic> json) =>
    LaunchServiceProvider(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Mission _$MissionFromJson(Map<String, dynamic> json) => Mission(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      launchDesignator: json['launch_designator'],
      type: json['type'] as String?,
      orbit: json['orbit'] == null
          ? null
          : Status.fromJson(json['orbit'] as Map<String, dynamic>),
    );

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      id: json['id'] as int?,
      name: json['name'] as String?,
      abbrev: json['abbrev'] as String?,
      description: json['description'] as String?,
    );

Pad _$PadFromJson(Map<String, dynamic> json) => Pad(
      id: json['id'] as int?,
      url: json['url'] as String?,
      agencyId: json['agency_id'] as int?,
      name: json['name'] as String?,
      infoUrl: json['info_url'],
      wikiUrl: json['wiki_url'] as String?,
      mapUrl: json['map_url'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      mapImage: json['map_image'] as String?,
      totalLaunchCount: json['total_launch_count'] as int?,
      orbitalLaunchAttemptCount: json['orbital_launch_attempt_count'] as int?,
    );

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      mapImage: json['map_image'] as String?,
      totalLaunchCount: json['total_launch_count'] as int?,
      totalLandingCount: json['total_landing_count'] as int?,
    );

Program _$ProgramFromJson(Map<String, dynamic> json) => Program(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      agencies: (json['agencies'] as List<dynamic>?)
          ?.map(
              (e) => LaunchServiceProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['image_url'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'],
      infoUrl: json['info_url'] as String?,
      wikiUrl: json['wiki_url'] as String?,
      missionPatches: json['mission_patches'] as List<dynamic>?,
    );

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      id: json['id'] as int?,
      configuration: json['configuration'] == null
          ? null
          : Configuration.fromJson(
              json['configuration'] as Map<String, dynamic>),
    );

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    Configuration(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      family: json['family'] as String?,
      fullName: json['full_name'] as String?,
      variant: json['variant'] as String?,
    );
