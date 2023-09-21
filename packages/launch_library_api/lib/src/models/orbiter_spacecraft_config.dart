// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'orbiter_spacecraft_config.g.dart';

@JsonSerializable()
class OrbiterSpacecraftConfig extends Equatable {
  const OrbiterSpacecraftConfig({
    required this.url,
    required this.name,
    required this.type,
    required this.agency,
    this.inUse,
    this.capability,
    this.history,
    this.details,
    this.maidenFlight,
    this.height,
    this.diameter,
    this.humanRated,
    this.crewCapacity,
    this.payloadCapacity,
    this.flightLife,
    this.imageUrl,
    this.nationUrl,
    this.wikiLink,
    this.infoLink,
  });

  factory OrbiterSpacecraftConfig.fromJson(Map<String, dynamic> json) =>
      _$OrbiterSpacecraftConfigFromJson(json);

  final String url;
  final String name;
  final SpacecraftConfigType type;
  final LaunchServiceProvider agency;
  final bool? inUse;
  final String? capability;
  final String? history;
  final String? details;
  final DateTime? maidenFlight;
  final double? height;
  final double? diameter;
  final bool? humanRated;
  final int? crewCapacity;
  final int? payloadCapacity;
  final String? flightLife;
  final String? imageUrl;
  final String? nationUrl;
  final String? wikiLink;
  final String? infoLink;

  Map<String, dynamic> toJson() => _$OrbiterSpacecraftConfigToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        type,
        agency,
        inUse,
        capability,
        history,
        details,
        maidenFlight,
        height,
        diameter,
        humanRated,
        crewCapacity,
        payloadCapacity,
        flightLife,
        imageUrl,
        nationUrl,
        wikiLink,
        infoLink,
      ];
}
