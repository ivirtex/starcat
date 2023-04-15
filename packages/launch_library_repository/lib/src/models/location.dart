// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

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
