// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration extends Equatable {
  const Configuration({
    required this.id,
    this.url,
    this.name,
    this.active,
    this.reusable,
    this.description,
    this.family,
    this.fullName,
    this.manufacturer,
    this.program,
    this.variant,
    this.alias,
    this.minStage,
    this.maxStage,
    this.length,
    this.diameter,
    this.maidenFlight,
    this.launchCost,
    this.launchMass,
    this.leoCapacity,
    this.gtoCapacity,
    this.toThrust,
    this.apogee,
    this.vehicleRange,
    this.imageUrl,
    this.infoUrl,
    this.wikiUrl,
    this.totalLaunchCount,
    this.consecutiveSuccessfulLaunches,
    this.successfulLaunches,
    this.failedLaunches,
    this.pendingLaunches,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  factory Configuration.fromApi(api.LauncherConfigList apiConfiguration) {
    return Configuration(
      id: apiConfiguration.id,
      url: apiConfiguration.url,
      name: apiConfiguration.name,
      family: apiConfiguration.family,
      fullName: apiConfiguration.fullName,
      variant: apiConfiguration.variant,
    );
  }

  factory Configuration.fromApiDetailed(
    api.LauncherConfigDetail apiDetailedConfiguration,
  ) {
    return Configuration(
      id: apiDetailedConfiguration.id,
      url: apiDetailedConfiguration.url,
      name: apiDetailedConfiguration.name,
      active: apiDetailedConfiguration.active,
      reusable: apiDetailedConfiguration.reusable,
      description: apiDetailedConfiguration.description,
      family: apiDetailedConfiguration.family,
      fullName: apiDetailedConfiguration.fullName,
      manufacturer: apiDetailedConfiguration.manufacturer != null
          ? LaunchServiceProvider.fromApi(
              apiDetailedConfiguration.manufacturer!,
            )
          : null,
      program: apiDetailedConfiguration.program.map(Program.fromApi).toList(),
      variant: apiDetailedConfiguration.variant,
      alias: apiDetailedConfiguration.alias,
      minStage: apiDetailedConfiguration.minStage,
      maxStage: apiDetailedConfiguration.maxStage,
      length: apiDetailedConfiguration.length,
      diameter: apiDetailedConfiguration.diameter,
      maidenFlight: apiDetailedConfiguration.maidenFlight,
      launchCost: apiDetailedConfiguration.launchCost,
      launchMass: apiDetailedConfiguration.launchMass,
      leoCapacity: apiDetailedConfiguration.leoCapacity,
      gtoCapacity: apiDetailedConfiguration.gtoCapacity,
      toThrust: apiDetailedConfiguration.toThrust,
      apogee: apiDetailedConfiguration.apogee,
      vehicleRange: apiDetailedConfiguration.vehicleRange,
      imageUrl: apiDetailedConfiguration.imageUrl,
      infoUrl: apiDetailedConfiguration.infoUrl,
      wikiUrl: apiDetailedConfiguration.wikiUrl,
      totalLaunchCount: apiDetailedConfiguration.totalLaunchCount,
      consecutiveSuccessfulLaunches:
          apiDetailedConfiguration.consecutiveSuccessfulLaunches,
      successfulLaunches: apiDetailedConfiguration.successfulLaunches,
      failedLaunches: apiDetailedConfiguration.failedLaunches,
      pendingLaunches: apiDetailedConfiguration.pendingLaunches,
    );
  }

  final int id;
  final String? url;
  final String? name;
  final bool? active;
  final bool? reusable;
  final String? description;
  final String? family;
  final String? fullName;
  final LaunchServiceProvider? manufacturer;
  final List<Program>? program;
  final String? variant;
  final String? alias;
  final int? minStage;
  final int? maxStage;
  final double? length;
  final double? diameter;
  final DateTime? maidenFlight;
  final String? launchCost;
  final int? launchMass;
  final int? leoCapacity;
  final int? gtoCapacity;
  final int? toThrust;
  final int? apogee;
  final int? vehicleRange;
  final String? imageUrl;
  final String? infoUrl;
  final String? wikiUrl;
  final int? totalLaunchCount;
  final int? consecutiveSuccessfulLaunches;
  final int? successfulLaunches;
  final int? failedLaunches;
  final int? pendingLaunches;

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        family,
        fullName,
        variant,
      ];
}
