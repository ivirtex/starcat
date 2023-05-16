// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launcher.g.dart';

@JsonSerializable()
class Launcher extends Equatable {
  const Launcher({
    required this.id,
    required this.url,
    this.details,
    this.flightProven,
    this.serialNumber,
    this.status,
    this.imageUrl,
    this.successfulLandings,
    this.attemptedLandings,
    this.flights,
    this.lastLaunchDate,
    this.firstLaunchDate,
  });

  factory Launcher.fromJson(Map<String, dynamic> json) =>
      _$LauncherFromJson(json);

  final int id;
  final String url;
  final String? details;
  final bool? flightProven;
  final String? serialNumber;
  final String? status;
  final String? imageUrl;
  final int? successfulLandings;
  final int? attemptedLandings;
  final int? flights;
  final DateTime? lastLaunchDate;
  final DateTime? firstLaunchDate;

  Map<String, dynamic> toJson() => _$LauncherToJson(this);

  @override
  List<Object?> get props => [
        id,
        url,
        details,
        flightProven,
        serialNumber,
        status,
        imageUrl,
        successfulLandings,
        attemptedLandings,
        flights,
        lastLaunchDate,
        firstLaunchDate,
      ];
}
