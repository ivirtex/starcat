// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'spacecraft.g.dart';

@JsonSerializable()
class Spacecraft extends Equatable {
  const Spacecraft({
    required this.id,
    required this.url,
    required this.name,
    required this.description,
    this.serialNumber,
  });

  factory Spacecraft.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftFromJson(json);

  factory Spacecraft.fromApiDetailed(
    api.SpacecraftDetailedNoFlights apiSpacecraft,
  ) {
    return Spacecraft(
      id: apiSpacecraft.id,
      url: apiSpacecraft.url,
      name: apiSpacecraft.name,
      description: apiSpacecraft.description,
      serialNumber: apiSpacecraft.serialNumber,
    );
  }

  final int id;
  final String url;
  final String name;
  final String description;
  final String? serialNumber;

  Map<String, dynamic> toJson() => _$SpacecraftToJson(this);

  @override
  List<Object?> get props => [
        id,
        url,
        name,
        description,
        serialNumber,
      ];
}
