// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'landing_location.g.dart';

@JsonSerializable()
class LandingLocation extends Equatable {
  const LandingLocation({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.description,
    this.location,
    this.successfulLandings,
  });

  factory LandingLocation.fromJson(Map<String, dynamic> json) =>
      _$LandingLocationFromJson(json);

  factory LandingLocation.fromApi(api.LandingLocation apiLandingLocation) {
    return LandingLocation(
      id: apiLandingLocation.id,
      name: apiLandingLocation.name,
      abbrev: apiLandingLocation.abbrev,
      description: apiLandingLocation.description,
      location: apiLandingLocation.location != null
          ? Location.fromApi(apiLandingLocation.location!)
          : null,
      successfulLandings: apiLandingLocation.successfulLandings,
    );
  }

  final int id;
  final String? name;
  final String? abbrev;
  final String? description;
  final Location? location;
  final int? successfulLandings;

  Map<String, dynamic> toJson() => _$LandingLocationToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
        description,
        location,
        successfulLandings,
      ];
}
