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
    required this.status,
    required this.lastUpdated,
    required this.launchServiceProvider,
    required this.rocket,
    required this.mission,
    required this.pad,
    required this.webcastLive,
    required this.image,
    required this.program,
    this.infographic,
    this.net,
    this.windowEnd,
    this.windowStart,
    this.probability,
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
  final Status status;
  final String lastUpdated;
  final String? net;
  final String? windowEnd;
  final String? windowStart;
  final int? probability;
  final String? holdreason;
  final String? failreason;
  final String? hashtag;
  final LaunchServiceProvider? launchServiceProvider;
  final Rocket? rocket;
  final Mission? mission;
  final Pad? pad;
  final bool webcastLive;
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
