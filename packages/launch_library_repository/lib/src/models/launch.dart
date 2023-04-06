// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch extends Equatable {
  const Launch({
    required this.id,
    required this.url,
    required this.slug,
    required this.name,
    required this.status,
    required this.launchServiceProvider,
    required this.rocket,
    required this.mission,
    required this.pad,
    required this.webcastLive,
    required this.program,
    this.image,
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

  factory Launch.fromApi(api.Launch launch) => Launch(
        id: launch.id,
        url: launch.url,
        slug: launch.slug,
        name: launch.name,
        status: Status(
          name: launch.status.name,
          abbrev: launch.status.abbrev,
          description: launch.status.description,
        ),
        net: DateTime.parse(launch.net ?? ''),
        windowEnd: DateTime.parse(launch.windowEnd ?? ''),
        windowStart: DateTime.parse(launch.windowStart ?? ''),
        probability: launch.probability,
        holdreason: launch.holdreason,
        failreason: launch.failreason,
        hashtag: launch.hashtag,
        launchServiceProvider: LaunchServiceProvider(
          url: launch.launchServiceProvider?.url,
          name: launch.launchServiceProvider?.name,
          type: launch.launchServiceProvider?.type,
        ),
        rocket: Rocket(
          configuration: Configuration(
            url: launch.rocket?.configuration.url ?? '',
            name: launch.rocket?.configuration.name ?? 'N/A',
            family: launch.rocket?.configuration.family ?? 'N/A',
            fullName: launch.rocket?.configuration.fullName ?? 'N/A',
            variant: launch.rocket?.configuration.variant ?? 'N/A',
          ),
        ),
        mission: Mission(
          name: launch.mission?.name,
          description: launch.mission?.description,
          type: launch.mission?.type,
          launchDesignator: launch.mission?.launchDesignator,
          orbit: Orbit(
            name: launch.mission?.orbit.name,
            abbrev: launch.mission?.orbit.abbrev,
          ),
        ),
        pad: Pad(
          url: launch.pad?.url,
          name: launch.pad?.name,
          latitude: launch.pad?.latitude,
          longitude: launch.pad?.longitude,
          location: Location(
            name: launch.pad?.location.name ?? 'N/A',
          ),
        ),
        webcastLive: launch.webcastLive,
        image: launch.image,
        infographic: launch.infographic,
        program: launch.program
                ?.map(
                  (program) => Program(
                    agencies: program.agencies
                        .map(
                          (agency) => LaunchServiceProvider(
                            url: agency.url,
                            name: agency.name,
                            type: agency.type,
                          ),
                        )
                        .toList(),
                    missionPatches: program.missionPatches
                        .map(
                          (patch) => MissionPatch(
                            agency: LaunchServiceProvider(
                              url: patch.agency.url,
                              name: patch.agency.name,
                              type: patch.agency.type,
                            ),
                          ),
                        )
                        .toList(),
                    url: program.url,
                    name: program.name,
                    description: program.description,
                    imageUrl: program.imageUrl,
                    startDate: DateTime.parse(program.startDate ?? ''),
                    endDate: DateTime.parse(program.endDate ?? ''),
                    infoUrl: program.infoUrl,
                    wikiUrl: program.wikiUrl,
                  ),
                )
                .toList() ??
            <Program>[],
        orbitalLaunchAttemptCount: launch.orbitalLaunchAttemptCount,
        locationLaunchAttemptCount: launch.locationLaunchAttemptCount,
        padLaunchAttemptCount: launch.padLaunchAttemptCount,
        agencyLaunchAttemptCount: launch.agencyLaunchAttemptCount,
        orbitalLaunchAttemptCountYear: launch.orbitalLaunchAttemptCountYear,
        locationLaunchAttemptCountYear: launch.locationLaunchAttemptCountYear,
        padLaunchAttemptCountYear: launch.padLaunchAttemptCountYear,
        agencyLaunchAttemptCountYear: launch.agencyLaunchAttemptCountYear,
      );

  final String id;
  final String url;
  final String slug;
  final String name;
  final Status status;
  final DateTime? net;
  final DateTime? windowEnd;
  final DateTime? windowStart;
  final int? probability;
  final String? holdreason;
  final String? failreason;
  final String? hashtag;
  final LaunchServiceProvider launchServiceProvider;
  final Rocket rocket;
  final Mission mission;
  final Pad pad;
  final bool webcastLive;
  final String? image;
  final String? infographic;
  final List<Program> program;
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
