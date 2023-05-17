// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'landing_type.g.dart';

@JsonSerializable()
class LandingType extends Equatable {
  const LandingType({
    required this.id,
    this.name,
    this.abbrev,
    this.description,
  });

  factory LandingType.fromJson(Map<String, dynamic> json) =>
      _$LandingTypeFromJson(json);

  factory LandingType.fromApi(api.LandingType apiLandingType) {
    return LandingType(
      id: apiLandingType.id,
      name: apiLandingType.name,
      abbrev: apiLandingType.abbrev,
      description: apiLandingType.description,
    );
  }

  final int id;
  final String? name;
  final String? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$LandingTypeToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
        description,
      ];
}
