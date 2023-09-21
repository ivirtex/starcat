import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart';

part 'landing.g.dart';

@JsonSerializable()
class Landing extends Equatable {
  const Landing({
    this.attempt,
    this.success,
    this.description,
    this.location,
    this.type,
  });

  factory Landing.fromJson(Map<String, dynamic> json) =>
      _$LandingFromJson(json);

  final bool? attempt;
  final bool? success;
  final String? description;
  final LandingLocation? location;
  final LandingType? type;

  Map<String, dynamic> toJson() => _$LandingToJson(this);

  @override
  List<Object?> get props => [
        attempt,
        success,
        description,
        location,
        type,
      ];
}
