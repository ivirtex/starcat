// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'pad.g.dart';

@JsonSerializable()
class Pad extends Equatable {
  const Pad({
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
