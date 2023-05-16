// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'landing.g.dart';

@JsonSerializable()
class Landing extends Equatable {
  const Landing({
    required this.id,
    required this.name,
    required this.success,
    required this.description,
  });

  factory Landing.fromJson(Map<String, dynamic> json) =>
      _$LandingFromJson(json);

  final int id;
  final String name;
  final bool success;
  final String description;

  Map<String, dynamic> toJson() => _$LandingToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        success,
        description,
      ];
}
