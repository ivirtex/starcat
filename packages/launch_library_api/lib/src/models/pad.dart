// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'pad.g.dart';

@JsonSerializable()
class Pad extends Equatable {
  const Pad({
    required this.id,
    required this.location,
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

  final int id;
  final String? url;
  final int? agencyId;
  final String? name;
  final String? infoUrl;
  final String? wikiUrl;
  final String? mapUrl;
  final String? latitude;
  final String? longitude;
  final Location location;
  final String? mapImage;
  final int? totalLaunchCount;
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
