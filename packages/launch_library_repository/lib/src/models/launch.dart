// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch extends Equatable {
  const Launch({
    required this.id,
    required this.name,
    this.url,
    this.slug,
    this.status,
    this.netPrecision,
    this.launchServiceProvider,
    this.rocket,
    this.mission,
    this.pad,
    this.webcastLive,
    this.image,
    this.program,
    this.infographic,
    this.flightclubUrl,
    this.rSpacexApiId,
    this.net,
    this.windowEnd,
    this.windowStart,
    this.probability,
    this.holdreason,
    this.failreason,
    this.hashtag,
    this.infoURLs,
    this.vidURLs,
    this.orbitalLaunchAttemptCount,
    this.locationLaunchAttemptCount,
    this.padLaunchAttemptCount,
    this.agencyLaunchAttemptCount,
    this.orbitalLaunchAttemptCountYear,
    this.locationLaunchAttemptCountYear,
    this.padLaunchAttemptCountYear,
    this.agencyLaunchAttemptCountYear,
    this.missionPatches,
  });

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  factory Launch.fromApiMini(api.LaunchSerializerMini apiLaunchModelMini) {
    return Launch(
      id: apiLaunchModelMini.id,
      name: apiLaunchModelMini.name ?? 'N/A',
    );
  }

  factory Launch.fromApi(api.LaunchSerializerCommon apiLaunchModel) {
    return Launch(
      id: apiLaunchModel.id,
      url: apiLaunchModel.url,
      slug: apiLaunchModel.slug,
      name: apiLaunchModel.name ?? 'N/A',
      status: Status.fromApi(apiLaunchModel.status),
      net: apiLaunchModel.net,
      netPrecision: apiLaunchModel.netPrecision != null
          ? NetPrecision.fromApi(apiLaunchModel.netPrecision!)
          : null,
      windowEnd: apiLaunchModel.windowEnd,
      windowStart: apiLaunchModel.windowStart,
      probability: apiLaunchModel.probability,
      holdreason: apiLaunchModel.holdreason,
      failreason: apiLaunchModel.failreason,
      hashtag: apiLaunchModel.hashtag,
      launchServiceProvider: LaunchServiceProvider.fromApiMini(
        apiLaunchModel.launchServiceProvider,
      ),
      rocket: Rocket.fromApi(apiLaunchModel.rocket),
      mission: apiLaunchModel.mission != null
          ? Mission.fromApi(apiLaunchModel.mission!)
          : null,
      pad: Pad.fromApi(apiLaunchModel.pad),
      webcastLive: apiLaunchModel.webcastLive ?? false,
      image: apiLaunchModel.image,
      program: apiLaunchModel.program.map(Program.fromApi).toList(),
      orbitalLaunchAttemptCount: apiLaunchModel.orbitalLaunchAttemptCount,
      locationLaunchAttemptCount: apiLaunchModel.locationLaunchAttemptCount,
      padLaunchAttemptCount: apiLaunchModel.padLaunchAttemptCount,
      agencyLaunchAttemptCount: apiLaunchModel.agencyLaunchAttemptCount,
      orbitalLaunchAttemptCountYear:
          apiLaunchModel.orbitalLaunchAttemptCountYear,
      locationLaunchAttemptCountYear:
          apiLaunchModel.locationLaunchAttemptCountYear,
      padLaunchAttemptCountYear: apiLaunchModel.padLaunchAttemptCountYear,
      agencyLaunchAttemptCountYear: apiLaunchModel.agencyLaunchAttemptCountYear,
    );
  }

  factory Launch.fromApiDetailed(api.LaunchDetailed apiDetailedLaunchModel) {
    return Launch(
      id: apiDetailedLaunchModel.id,
      url: apiDetailedLaunchModel.url,
      slug: apiDetailedLaunchModel.slug,
      name: apiDetailedLaunchModel.name,
      status: Status.fromApi(apiDetailedLaunchModel.status),
      net: apiDetailedLaunchModel.net,
      netPrecision: apiDetailedLaunchModel.netPrecision != null
          ? NetPrecision.fromApi(apiDetailedLaunchModel.netPrecision!)
          : null,
      windowEnd: apiDetailedLaunchModel.windowEnd,
      windowStart: apiDetailedLaunchModel.windowStart,
      probability: apiDetailedLaunchModel.probability,
      holdreason: apiDetailedLaunchModel.holdreason,
      failreason: apiDetailedLaunchModel.failreason,
      hashtag: apiDetailedLaunchModel.hashtag,
      launchServiceProvider: LaunchServiceProvider.fromApi(
        apiDetailedLaunchModel.launchServiceProvider,
      ),
      rocket: Rocket.fromApiDetailed(apiDetailedLaunchModel.rocket),
      mission: apiDetailedLaunchModel.mission != null
          ? Mission.fromApi(apiDetailedLaunchModel.mission!)
          : null,
      pad: Pad.fromApi(apiDetailedLaunchModel.pad),
      webcastLive: apiDetailedLaunchModel.webcastLive,
      image: apiDetailedLaunchModel.image,
      infographic: apiDetailedLaunchModel.infographic,
      infoURLs: apiDetailedLaunchModel.infoURLs.map(InfoURL.fromApi).toList(),
      vidURLs: apiDetailedLaunchModel.vidURLs.map(VideoURL.fromApi).toList(),
      program: apiDetailedLaunchModel.program.map(Program.fromApi).toList(),
      orbitalLaunchAttemptCount:
          apiDetailedLaunchModel.orbitalLaunchAttemptCount,
      locationLaunchAttemptCount:
          apiDetailedLaunchModel.locationLaunchAttemptCount,
      padLaunchAttemptCount: apiDetailedLaunchModel.padLaunchAttemptCount,
      agencyLaunchAttemptCount: apiDetailedLaunchModel.agencyLaunchAttemptCount,
      orbitalLaunchAttemptCountYear:
          apiDetailedLaunchModel.orbitalLaunchAttemptCountYear,
      locationLaunchAttemptCountYear:
          apiDetailedLaunchModel.locationLaunchAttemptCountYear,
      padLaunchAttemptCountYear:
          apiDetailedLaunchModel.padLaunchAttemptCountYear,
      agencyLaunchAttemptCountYear:
          apiDetailedLaunchModel.agencyLaunchAttemptCountYear,
    );
  }

  final String id;
  final String? url;
  final String? slug;
  final String? flightclubUrl;
  final String? rSpacexApiId;
  final String name;
  final Status? status;
  final DateTime? net;
  final NetPrecision? netPrecision;
  final DateTime? windowEnd;
  final DateTime? windowStart;
  final int? probability;
  final String? holdreason;
  final String? failreason;
  final String? hashtag;
  final LaunchServiceProvider? launchServiceProvider;
  final Rocket? rocket;
  final Mission? mission;
  final Pad? pad;
  final List<InfoURL>? infoURLs;
  final List<VideoURL>? vidURLs;
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
  final List<MissionPatch>? missionPatches;

  Map<String, dynamic> toJson() => _$LaunchToJson(this);

  // create copyWith
  Launch copyWith({
    String? id,
    String? url,
    String? slug,
    String? flightclubUrl,
    String? rSpacexApiId,
    String? name,
    Status? status,
    DateTime? net,
    NetPrecision? netPrecision,
    DateTime? windowEnd,
    DateTime? windowStart,
    int? probability,
    String? holdreason,
    String? failreason,
    String? hashtag,
    LaunchServiceProvider? launchServiceProvider,
    Rocket? rocket,
    Mission? mission,
    Pad? pad,
    List<InfoURL>? infoURLs,
    List<VideoURL>? vidURLs,
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
    List<MissionPatch>? missionPatches,
  }) {
    return Launch(
      id: id ?? this.id,
      url: url ?? this.url,
      slug: slug ?? this.slug,
      flightclubUrl: flightclubUrl ?? this.flightclubUrl,
      rSpacexApiId: rSpacexApiId ?? this.rSpacexApiId,
      name: name ?? this.name,
      status: status ?? this.status,
      net: net ?? this.net,
      netPrecision: netPrecision ?? this.netPrecision,
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
      infoURLs: infoURLs ?? this.infoURLs,
      vidURLs: vidURLs ?? this.vidURLs,
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
      missionPatches: missionPatches ?? this.missionPatches,
    );
  }

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
