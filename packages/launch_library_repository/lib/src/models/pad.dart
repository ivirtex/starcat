// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'pad.g.dart';

@JsonSerializable()
class Pad extends Equatable {
  const Pad({
     this.location,
    this.url,
    this.latitude,
    this.longitude,
    this.agencyId,
    this.name,
    this.infoUrl,
    this.wikiUrl,
    this.mapUrl,
    this.mapImage,
    this.totalLaunchCount,
    this.orbitalLaunchAttemptCount,
  });

  factory Pad.fromJson(Map<String, dynamic> json) => _$PadFromJson(json);

  factory Pad.fromApi(api.Pad apiPad) {
    return Pad(
      url: apiPad.url,
      agencyId: apiPad.agencyId,
      name: apiPad.name,
      infoUrl: apiPad.infoUrl,
      wikiUrl: apiPad.wikiUrl,
      mapUrl: apiPad.mapUrl,
      latitude: apiPad.latitude,
      longitude: apiPad.longitude,
      location:
          apiPad.location != null ? Location.fromApi(apiPad.location!) : null,
      mapImage: apiPad.mapImage,
      totalLaunchCount: apiPad.totalLaunchCount,
      orbitalLaunchAttemptCount: apiPad.orbitalLaunchAttemptCount,
    );
  }

  final String? url;
  final int? agencyId;
  final String? name;
  final String? infoUrl;
  final String? wikiUrl;
  final String? mapUrl;
  final String? latitude;
  final String? longitude;
  final Location? location;
  final String? mapImage;
  final int? totalLaunchCount;
  final int? orbitalLaunchAttemptCount;

  Map<String, dynamic> toJson() => _$PadToJson(this);

  @override
  List<Object?> get props => [
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
