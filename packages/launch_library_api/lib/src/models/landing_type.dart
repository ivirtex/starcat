// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'landing_type.g.dart';

@JsonSerializable()
class LandingType extends Equatable {
  const LandingType({
    this.name,
    this.abbrev,
    this.description,
  });

  factory LandingType.fromJson(Map<String, dynamic> json) =>
      _$LandingTypeFromJson(json);

  final String? name;
  final String? abbrev;
  final String? description;

  Map<String, dynamic> toJson() => _$LandingTypeToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
        description,
      ];
}
