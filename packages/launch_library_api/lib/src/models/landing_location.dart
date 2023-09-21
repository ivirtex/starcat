// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'landing_location.g.dart';

@JsonSerializable()
class LandingLocation extends Equatable {
  const LandingLocation({
    this.name,
    this.abbrev,
    this.description,
    this.location,
    this.successfulLandings,
  });

  factory LandingLocation.fromJson(Map<String, dynamic> json) =>
      _$LandingLocationFromJson(json);

  final String? name;
  final String? abbrev;
  final String? description;
  final Location? location;
  final int? successfulLandings;

  Map<String, dynamic> toJson() => _$LandingLocationToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
        description,
        location,
        successfulLandings,
      ];
}
