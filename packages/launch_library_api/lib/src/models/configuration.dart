// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/launch_library_api.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration extends Equatable {
  const Configuration({
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
        active,
        reusable,
        description,
        family,
        fullName,
        manufacturer,
        program,
        variant,
        alias,
        minStage,
        maxStage,
        length,
        diameter,
        maidenFlight,
        launchCost,
        launchMass,
        leoCapacity,
        gtoCapacity,
        toThrust,
        apogee,
        vehicleRange,
        imageUrl,
        infoUrl,
        wikiUrl,
        totalLaunchCount,
        consecutiveSuccessfulLaunches,
        successfulLaunches,
        failedLaunches,
        pendingLaunches,
      ];
}
