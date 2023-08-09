import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:launch_library_repository/launch_library_repository.dart';

part 'orbiter_spacecraft_config.g.dart';

@JsonSerializable()
class OrbiterSpacecraftConfig extends Equatable {
  const OrbiterSpacecraftConfig({
    required this.id,
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

  factory OrbiterSpacecraftConfig.fromApi(api.OrbiterSpacecraftConfig data) {
    return OrbiterSpacecraftConfig(
      id: data.id,
      url: data.url,
      name: data.name,
      type: SpacecraftConfigType.fromApi(data.type),
      agency: LaunchServiceProvider.fromApiStandard(data.agency),
      inUse: data.inUse,
      capability: data.capability,
      history: data.history,
      details: data.details,
      maidenFlight: data.maidenFlight,
      height: data.height,
      diameter: data.diameter,
      humanRated: data.humanRated,
      crewCapacity: data.crewCapacity,
      payloadCapacity: data.payloadCapacity,
      flightLife: data.flightLife,
      imageUrl: data.imageUrl,
      nationUrl: data.nationUrl,
      wikiLink: data.wikiLink,
      infoLink: data.infoLink,
    );
  }

  final int id;
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
        id,
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
