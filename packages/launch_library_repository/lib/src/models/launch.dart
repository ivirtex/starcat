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
    required this.url,
    required this.name,
    required this.slug,
    required this.status,
    required this.netPrecision,
    required this.launchServiceProvider,
    required this.rocket,
    required this.mission,
    required this.pad,
    required this.webcastLive,
    required this.image,
    required this.program,
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

  factory Launch.fromApi(api.LaunchSerializerCommon apiLaunchModel) {
    return Launch(
      id: apiLaunchModel.id,
      url: apiLaunchModel.url,
      slug: apiLaunchModel.slug,
      name: apiLaunchModel.name ?? 'N/A',
      status: Status.fromApi(apiLaunchModel.status),
      net: apiLaunchModel.net,
      netPrecision: NetPrecision.fromApi(apiLaunchModel.netPrecision),
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
      mission: Mission.fromApi(apiLaunchModel.mission),
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

  final String id;
  final String url;
  final String slug;
  final String? flightclubUrl;
  final String? rSpacexApiId;
  final String name;
  final Status status;
  final DateTime? net;
  final NetPrecision netPrecision;
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
  final List<InfoURL>? infoURLs;
  final List<VideoURL>? vidURLs;
  final bool webcastLive;
  final String image;
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
