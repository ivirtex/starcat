// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'spacecraft.g.dart';

@JsonSerializable()
class Spacecraft extends Equatable {
  const Spacecraft({
    required this.url,
    required this.name,
    required this.description,
    this.serialNumber,
  });

  factory Spacecraft.fromJson(Map<String, dynamic> json) =>
      _$SpacecraftFromJson(json);

  final String? url;
  final String? name;
  final String? description;
  final String? serialNumber;

  Map<String, dynamic> toJson() => _$SpacecraftToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        description,
        serialNumber,
      ];
}
