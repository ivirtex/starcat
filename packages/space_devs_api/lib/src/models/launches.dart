// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launches.g.dart';

@JsonSerializable(createToJson: false)
class Launches extends Equatable {
  const Launches({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory Launches.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFromJson(json);

  final int? count;
  final String? next;
  final dynamic previous;
  final List<Launch>? results;

  @override
  List<Object?> get props => [
        count,
        next,
        previous,
        results,
      ];
}

@JsonSerializable(createToJson: false)
class Launch extends Equatable {
  const Launch({
    this.id,
    this.url,
    this.slug,
    this.name,
    this.status,
    this.lastUpdated,
    this.net,
    this.windowEnd,
    this.windowStart,
    this.probability,
    this.holdreason,
    this.failreason,
    this.hashtag,
    this.launchServiceProvider,
    this.rocket,
    this.mission,
    this.pad,
    this.webcastLive,
    this.image,
    this.infographic,
    this.program,
    this.orbitalLaunchAttemptCount,
    this.locationLaunchAttemptCount,
    this.padLaunchAttemptCount,
    this.agencyLaunchAttemptCount,
    this.orbitalLaunchAttemptCountYear,
    this.locationLaunchAttemptCountYear,
    this.padLaunchAttemptCountYear,
    this.agencyLaunchAttemptCountYear,
  });

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  final String? id;
  final String? url;
  final String? slug;
  final String? name;
  final Status? status;

  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;
  final DateTime? net;

  @JsonKey(name: 'window_end')
  final DateTime? windowEnd;

  @JsonKey(name: 'window_start')
  final DateTime? windowStart;
  final int? probability;
  final String? holdreason;
  final String? failreason;
  final dynamic hashtag;

  @JsonKey(name: 'launch_service_provider')
  final LaunchServiceProvider? launchServiceProvider;
  final Rocket? rocket;
  final Mission? mission;
  final Pad? pad;

  @JsonKey(name: 'webcast_live')
  final bool? webcastLive;
  final String? image;
  final dynamic infographic;
  final List<Program>? program;

  @JsonKey(name: 'orbital_launch_attempt_count')
  final int? orbitalLaunchAttemptCount;

  @JsonKey(name: 'location_launch_attempt_count')
  final int? locationLaunchAttemptCount;

  @JsonKey(name: 'pad_launch_attempt_count')
  final int? padLaunchAttemptCount;

  @JsonKey(name: 'agency_launch_attempt_count')
  final int? agencyLaunchAttemptCount;

  @JsonKey(name: 'orbital_launch_attempt_count_year')
  final int? orbitalLaunchAttemptCountYear;

  @JsonKey(name: 'location_launch_attempt_count_year')
  final int? locationLaunchAttemptCountYear;

  @JsonKey(name: 'pad_launch_attempt_count_year')
  final int? padLaunchAttemptCountYear;

  @JsonKey(name: 'agency_launch_attempt_count_year')
  final int? agencyLaunchAttemptCountYear;

  @override
  List<Object?> get props => [
        id,
        url,
        slug,
        name,
        status,
        lastUpdated,
        net,
        windowEnd,
        windowStart,
        probability,
        holdreason,
        failreason,
        hashtag,
        launchServiceProvider,
        rocket,
        mission,
        pad,
        webcastLive,
        image,
        infographic,
        program,
        orbitalLaunchAttemptCount,
        locationLaunchAttemptCount,
        padLaunchAttemptCount,
        agencyLaunchAttemptCount,
        orbitalLaunchAttemptCountYear,
        locationLaunchAttemptCountYear,
        padLaunchAttemptCountYear,
        agencyLaunchAttemptCountYear,
      ];
}

@JsonSerializable(createToJson: false)
class LaunchServiceProvider extends Equatable {
  const LaunchServiceProvider({
    this.id,
    this.url,
    this.name,
    this.type,
  });

  factory LaunchServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$LaunchServiceProviderFromJson(json);

  final int? id;
  final String? url;
  final String? name;
  final String? type;

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        type,
      ];
}

@JsonSerializable(createToJson: false)
class Mission extends Equatable {
  const Mission({
    this.id,
    this.name,
    this.description,
    this.launchDesignator,
    this.type,
    this.orbit,
  });

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

  final int? id;
  final String? name;
  final String? description;

  @JsonKey(name: 'launch_designator')
  final dynamic launchDesignator;
  final String? type;
  final Status? orbit;

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        launchDesignator,
        type,
        orbit,
      ];
}

@JsonSerializable(createToJson: false)
class Status extends Equatable {
  const Status({
    this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  final int? id;
  final String? name;
  final String? abbrev;
  final String? description;

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
        description,
      ];
}

@JsonSerializable(createToJson: false)
class Pad extends Equatable {
  const Pad({
    this.id,
    this.url,
    this.agencyId,
    this.name,
    this.infoUrl,
    this.wikiUrl,
    this.mapUrl,
    this.latitude,
    this.longitude,
    this.location,
    this.mapImage,
    this.totalLaunchCount,
    this.orbitalLaunchAttemptCount,
  });

  factory Pad.fromJson(Map<String, dynamic> json) => _$PadFromJson(json);

  final int? id;
  final String? url;

  @JsonKey(name: 'agency_id')
  final int? agencyId;
  final String? name;

  @JsonKey(name: 'info_url')
  final dynamic infoUrl;

  @JsonKey(name: 'wiki_url')
  final String? wikiUrl;

  @JsonKey(name: 'map_url')
  final String? mapUrl;
  final String? latitude;
  final String? longitude;
  final Location? location;

  @JsonKey(name: 'map_image')
  final String? mapImage;

  @JsonKey(name: 'total_launch_count')
  final int? totalLaunchCount;

  @JsonKey(name: 'orbital_launch_attempt_count')
  final int? orbitalLaunchAttemptCount;

  @override
  List<Object?> get props => [
        id,
        url,
        agencyId,
        name,
        infoUrl,
        wikiUrl,
        mapUrl,
        latitude,
        longitude,
        location,
        mapImage,
        totalLaunchCount,
        orbitalLaunchAttemptCount,
      ];
}

@JsonSerializable(createToJson: false)
class Location extends Equatable {
  const Location({
    this.id,
    this.url,
    this.name,
    this.countryCode,
    this.mapImage,
    this.totalLaunchCount,
    this.totalLandingCount,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final int? id;
  final String? url;
  final String? name;

  @JsonKey(name: 'country_code')
  final String? countryCode;

  @JsonKey(name: 'map_image')
  final String? mapImage;

  @JsonKey(name: 'total_launch_count')
  final int? totalLaunchCount;

  @JsonKey(name: 'total_landing_count')
  final int? totalLandingCount;

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        countryCode,
        mapImage,
        totalLaunchCount,
        totalLandingCount,
      ];
}

@JsonSerializable(createToJson: false)
class Program extends Equatable {
  const Program({
    this.id,
    this.url,
    this.name,
    this.description,
    this.agencies,
    this.imageUrl,
    this.startDate,
    this.endDate,
    this.infoUrl,
    this.wikiUrl,
    this.missionPatches,
  });

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);

  final int? id;
  final String? url;
  final String? name;
  final String? description;
  final List<LaunchServiceProvider>? agencies;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @JsonKey(name: 'start_date')
  final DateTime? startDate;

  @JsonKey(name: 'end_date')
  final dynamic endDate;

  @JsonKey(name: 'info_url')
  final String? infoUrl;

  @JsonKey(name: 'wiki_url')
  final String? wikiUrl;

  @JsonKey(name: 'mission_patches')
  final List<dynamic>? missionPatches;

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        description,
        agencies,
        imageUrl,
        startDate,
        endDate,
        infoUrl,
        wikiUrl,
        missionPatches,
      ];
}

@JsonSerializable(createToJson: false)
class Rocket extends Equatable {
  const Rocket({
    this.id,
    this.configuration,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  final int? id;
  final Configuration? configuration;

  @override
  List<Object?> get props => [
        id,
        configuration,
      ];
}

@JsonSerializable(createToJson: false)
class Configuration extends Equatable {
  const Configuration({
    this.id,
    this.url,
    this.name,
    this.family,
    this.fullName,
    this.variant,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  final int? id;
  final String? url;
  final String? name;
  final String? family;

  @JsonKey(name: 'full_name')
  final String? fullName;
  final String? variant;

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        family,
        fullName,
        variant,
      ];
}
