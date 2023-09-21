// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbiter_spacecraft_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterSpacecraftConfig _$OrbiterSpacecraftConfigFromJson(
        Map<String, dynamic> json) =>
    OrbiterSpacecraftConfig(
      url: json['url'] as String,
      name: json['name'] as String,
      type: SpacecraftConfigType.fromJson(json['type'] as Map<String, dynamic>),
      agency: LaunchServiceProvider.fromJson(
          json['agency'] as Map<String, dynamic>),
      inUse: json['in_use'] as bool?,
      capability: json['capability'] as String?,
      history: json['history'] as String?,
      details: json['details'] as String?,
      maidenFlight: json['maiden_flight'] == null
          ? null
          : DateTime.parse(json['maiden_flight'] as String),
      height: (json['height'] as num?)?.toDouble(),
      diameter: (json['diameter'] as num?)?.toDouble(),
      humanRated: json['human_rated'] as bool?,
      crewCapacity: json['crew_capacity'] as int?,
      payloadCapacity: json['payload_capacity'] as int?,
      flightLife: json['flight_life'] as String?,
      imageUrl: json['image_url'] as String?,
      nationUrl: json['nation_url'] as String?,
      wikiLink: json['wiki_link'] as String?,
      infoLink: json['info_link'] as String?,
    );

Map<String, dynamic> _$OrbiterSpacecraftConfigToJson(
        OrbiterSpacecraftConfig instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'agency': instance.agency,
      'in_use': instance.inUse,
      'capability': instance.capability,
      'history': instance.history,
      'details': instance.details,
      'maiden_flight': instance.maidenFlight?.toIso8601String(),
      'height': instance.height,
      'diameter': instance.diameter,
      'human_rated': instance.humanRated,
      'crew_capacity': instance.crewCapacity,
      'payload_capacity': instance.payloadCapacity,
      'flight_life': instance.flightLife,
      'image_url': instance.imageUrl,
      'nation_url': instance.nationUrl,
      'wiki_link': instance.wikiLink,
      'info_link': instance.infoLink,
    };
