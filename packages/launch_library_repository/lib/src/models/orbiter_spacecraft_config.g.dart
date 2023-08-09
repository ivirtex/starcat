// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'orbiter_spacecraft_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbiterSpacecraftConfig _$OrbiterSpacecraftConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OrbiterSpacecraftConfig',
      json,
      ($checkedConvert) {
        final val = OrbiterSpacecraftConfig(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type',
              (v) => SpacecraftConfigType.fromJson(v as Map<String, dynamic>)),
          agency: $checkedConvert('agency',
              (v) => LaunchServiceProvider.fromJson(v as Map<String, dynamic>)),
          inUse: $checkedConvert('in_use', (v) => v as bool?),
          capability: $checkedConvert('capability', (v) => v as String?),
          history: $checkedConvert('history', (v) => v as String?),
          details: $checkedConvert('details', (v) => v as String?),
          maidenFlight: $checkedConvert('maiden_flight',
              (v) => v == null ? null : DateTime.parse(v as String)),
          height: $checkedConvert('height', (v) => (v as num?)?.toDouble()),
          diameter: $checkedConvert('diameter', (v) => (v as num?)?.toDouble()),
          humanRated: $checkedConvert('human_rated', (v) => v as bool?),
          crewCapacity: $checkedConvert('crew_capacity', (v) => v as int?),
          payloadCapacity:
              $checkedConvert('payload_capacity', (v) => v as int?),
          flightLife: $checkedConvert('flight_life', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          nationUrl: $checkedConvert('nation_url', (v) => v as String?),
          wikiLink: $checkedConvert('wiki_link', (v) => v as String?),
          infoLink: $checkedConvert('info_link', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'inUse': 'in_use',
        'maidenFlight': 'maiden_flight',
        'humanRated': 'human_rated',
        'crewCapacity': 'crew_capacity',
        'payloadCapacity': 'payload_capacity',
        'flightLife': 'flight_life',
        'imageUrl': 'image_url',
        'nationUrl': 'nation_url',
        'wikiLink': 'wiki_link',
        'infoLink': 'info_link'
      },
    );

Map<String, dynamic> _$OrbiterSpacecraftConfigToJson(
        OrbiterSpacecraftConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
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
