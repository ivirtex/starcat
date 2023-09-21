// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch extends Equatable {
  const Launch({
    required this.id,
    required this.url,
    required this.slug,
    required this.name,
    this.status,
    this.lastUpdated,
    this.launchServiceProvider,
    this.rocket,
    this.mission,
    this.pad,
    this.webcastLive,
    this.image,
    this.program,
    this.infographic,
    this.net,
    this.windowEnd,
    this.windowStart,
    this.probability,
    this.netPrecision,
    this.holdreason,
    this.failreason,
    this.hashtag,
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

  final String id;
  final String url;
  final String slug;
  final String name;
  final Status? status;
  final String? lastUpdated;
  final DateTime? net;
  final DateTime? windowEnd;
  final DateTime? windowStart;
  final int? probability;
  final NetPrecision? netPrecision;
  final String? holdreason;
  final String? failreason;
  final String? hashtag;
  final LaunchServiceProvider? launchServiceProvider;
  final Rocket? rocket;
  final Mission? mission;
  final Pad? pad;
  final bool? webcastLive;
  final String? image;
  final String? infographic;
  final List<Program>? program;
  final int? orbitalLaunchAttemptCount;
  final int? locationLaunchAttemptCount;
  final int? padLaunchAttemptCount;
  final int? agencyLaunchAttemptCount;
  final int? orbitalLaunchAttemptCountYear;
  final int? locationLaunchAttemptCountYear;
  final int? padLaunchAttemptCountYear;
  final int? agencyLaunchAttemptCountYear;

  Map<String, dynamic> toJson() => _$LaunchToJson(this);

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

  // copywith
  Launch copyWith({
    String? id,
    String? url,
    String? slug,
    String? name,
    Status? status,
    String? lastUpdated,
    DateTime? net,
    DateTime? windowEnd,
    DateTime? windowStart,
    int? probability,
    NetPrecision? netPrecision,
    String? holdreason,
    String? failreason,
    String? hashtag,
    LaunchServiceProvider? launchServiceProvider,
    Rocket? rocket,
    Mission? mission,
    Pad? pad,
    bool? webcastLive,
    String? image,
    String? infographic,
    List<Program>? program,
    int? orbitalLaunchAttemptCount,
    int? locationLaunchAttemptCount,
    int? padLaunchAttemptCount,
    int? agencyLaunchAttemptCount,
    int? orbitalLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYear,
    int? padLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYear,
  }) {
    return Launch(
      id: id ?? this.id,
      url: url ?? this.url,
      slug: slug ?? this.slug,
      name: name ?? this.name,
      status: status ?? this.status,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      net: net ?? this.net,
      windowEnd: windowEnd ?? this.windowEnd,
      windowStart: windowStart ?? this.windowStart,
      probability: probability ?? this.probability,
      holdreason: holdreason ?? this.holdreason,
      failreason: failreason ?? this.failreason,
      hashtag: hashtag ?? this.hashtag,
      launchServiceProvider:
          launchServiceProvider ?? this.launchServiceProvider,
      rocket: rocket ?? this.rocket,
      mission: mission ?? this.mission,
      pad: pad ?? this.pad,
      webcastLive: webcastLive ?? this.webcastLive,
      image: image ?? this.image,
      infographic: infographic ?? this.infographic,
      program: program ?? this.program,
      orbitalLaunchAttemptCount:
          orbitalLaunchAttemptCount ?? this.orbitalLaunchAttemptCount,
      locationLaunchAttemptCount:
          locationLaunchAttemptCount ?? this.locationLaunchAttemptCount,
      padLaunchAttemptCount:
          padLaunchAttemptCount ?? this.padLaunchAttemptCount,
      agencyLaunchAttemptCount:
          agencyLaunchAttemptCount ?? this.agencyLaunchAttemptCount,
      orbitalLaunchAttemptCountYear:
          orbitalLaunchAttemptCountYear ?? this.orbitalLaunchAttemptCountYear,
      locationLaunchAttemptCountYear:
          locationLaunchAttemptCountYear ?? this.locationLaunchAttemptCountYear,
      padLaunchAttemptCountYear:
          padLaunchAttemptCountYear ?? this.padLaunchAttemptCountYear,
      agencyLaunchAttemptCountYear:
          agencyLaunchAttemptCountYear ?? this.agencyLaunchAttemptCountYear,
    );
  }
}
