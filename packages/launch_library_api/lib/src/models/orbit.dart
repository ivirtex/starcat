// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orbit.g.dart';

@JsonSerializable()
class Orbit extends Equatable {
  const Orbit({
    required this.id,
    this.name,
    this.abbrev,
  });

  factory Orbit.fromJson(Map<String, dynamic> json) => _$OrbitFromJson(json);

  final int id;
  final String? name;
  final String? abbrev;

  @override
  List<Object?> get props => [
        id,
        name,
        abbrev,
      ];
}
