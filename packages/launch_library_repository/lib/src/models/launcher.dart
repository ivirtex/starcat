// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

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

  factory Launcher.fromApi(api.Launcher apiLauncher) {
    return Launcher(
      id: apiLauncher.id,
      url: apiLauncher.url,
      details: apiLauncher.details,
      flightProven: apiLauncher.flightProven,
      serialNumber: apiLauncher.serialNumber,
      status: apiLauncher.status,
      imageUrl: apiLauncher.imageUrl,
      flights: apiLauncher.flights,
      lastLaunchDate: apiLauncher.lastLaunchDate,
      firstLaunchDate: apiLauncher.firstLaunchDate,
    );
  }

  factory Launcher.fromApiDetailed(api.LauncherDetailed apiLauncherDetailed) {
    return Launcher(
      id: apiLauncherDetailed.id,
      url: apiLauncherDetailed.url,
      details: apiLauncherDetailed.details,
      flightProven: apiLauncherDetailed.flightProven,
      serialNumber: apiLauncherDetailed.serialNumber,
      status: apiLauncherDetailed.status,
      imageUrl: apiLauncherDetailed.imageUrl,
      successfulLandings: apiLauncherDetailed.successfulLandings,
      attemptedLandings: apiLauncherDetailed.attemptedLandings,
      flights: apiLauncherDetailed.flights,
      lastLaunchDate: apiLauncherDetailed.lastLaunchDate,
      firstLaunchDate: apiLauncherDetailed.firstLaunchDate,
    );
  }

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
