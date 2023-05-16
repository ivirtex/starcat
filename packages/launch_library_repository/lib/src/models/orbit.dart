// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'orbit.g.dart';

@JsonSerializable()
class Orbit extends Equatable {
  const Orbit({
    this.name,
    this.abbrev,
  });

  factory Orbit.fromJson(Map<String, dynamic> json) => _$OrbitFromJson(json);

  factory Orbit.fromApi(api.Orbit apiOrbit) {
    return Orbit(
      name: apiOrbit.name,
      abbrev: apiOrbit.abbrev,
    );
  }

  final String? name;
  final String? abbrev;

  Map<String, dynamic> toJson() => _$OrbitToJson(this);

  @override
  List<Object?> get props => [
        name,
        abbrev,
      ];
}
