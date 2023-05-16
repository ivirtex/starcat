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
    required this.url,
    required this.name,
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
    );
  }

  final int id;
  final String url;
  final String name;
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
