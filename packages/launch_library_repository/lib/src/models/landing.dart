// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'landing.g.dart';

@JsonSerializable()
class Landing extends Equatable {
  const Landing({
    required this.id,
    required this.type,
    this.location,
    this.attempt,
    this.success,
    this.description,
  });

  factory Landing.fromJson(Map<String, dynamic> json) =>
      _$LandingFromJson(json);

  factory Landing.fromApi(api.Landing apiLanding) {
    return Landing(
      id: apiLanding.id,
      attempt: apiLanding.attempt,
      success: apiLanding.success,
      description: apiLanding.description,
      location: apiLanding.location != null
          ? LandingLocation.fromApi(apiLanding.location!)
          : null,
      type: LandingType.fromApi(apiLanding.type),
    );
  }

  final int id;
  final bool? attempt;
  final bool? success;
  final String? description;
  final LandingLocation? location;
  final LandingType type;

  Map<String, dynamic> toJson() => _$LandingToJson(this);

  @override
  List<Object?> get props => [
        id,
        attempt,
        success,
        description,
        location,
        type,
      ];
}
