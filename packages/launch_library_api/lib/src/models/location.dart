// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    required this.id,
    this.url,
    this.name,
    this.countryCode,
    this.mapImage,
    this.totalLaunchCount,
    this.totalLandingCount,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final int id;
  final String? url;
  final String? name;
  final String? countryCode;
  final String? mapImage;
  final int? totalLaunchCount;
  final int? totalLandingCount;

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        countryCode,
        mapImage,
        totalLaunchCount,
        totalLandingCount,
      ];
}
