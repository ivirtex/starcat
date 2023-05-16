// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    this.url,
    this.name,
    this.countryCode,
    this.mapImage,
    this.totalLaunchCount,
    this.totalLandingCount,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  factory Location.fromApi(api.Location apiLocation) {
    return Location(
      url: apiLocation.url,
      name: apiLocation.name,
      countryCode: apiLocation.countryCode,
      mapImage: apiLocation.mapImage,
      totalLaunchCount: apiLocation.totalLaunchCount,
      totalLandingCount: apiLocation.totalLandingCount,
    );
  }

  final String? url;
  final String? name;
  final String? countryCode;
  final String? mapImage;
  final int? totalLaunchCount;
  final int? totalLandingCount;

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        countryCode,
        mapImage,
        totalLaunchCount,
        totalLandingCount,
      ];
}
