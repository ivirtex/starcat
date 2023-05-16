// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Configuration',
      json,
      ($checkedConvert) {
        final val = Configuration(
          id: $checkedConvert('id', (v) => v as int),
          url: $checkedConvert('url', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool?),
          reusable: $checkedConvert('reusable', (v) => v as bool?),
          description: $checkedConvert('description', (v) => v as String?),
          family: $checkedConvert('family', (v) => v as String?),
          fullName: $checkedConvert('full_name', (v) => v as String?),
          manufacturer: $checkedConvert(
              'manufacturer',
              (v) => v == null
                  ? null
                  : LaunchServiceProvider.fromJson(v as Map<String, dynamic>)),
          program: $checkedConvert(
              'program',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
                  .toList()),
          variant: $checkedConvert('variant', (v) => v as String?),
          alias: $checkedConvert('alias', (v) => v as String?),
          minStage: $checkedConvert('min_stage', (v) => v as int?),
          maxStage: $checkedConvert('max_stage', (v) => v as int?),
          length: $checkedConvert('length', (v) => (v as num?)?.toDouble()),
          diameter: $checkedConvert('diameter', (v) => (v as num?)?.toDouble()),
          maidenFlight: $checkedConvert('maiden_flight',
              (v) => v == null ? null : DateTime.parse(v as String)),
          launchCost: $checkedConvert('launch_cost', (v) => v as String?),
          launchMass: $checkedConvert('launch_mass', (v) => v as int?),
          leoCapacity: $checkedConvert('leo_capacity', (v) => v as int?),
          gtoCapacity: $checkedConvert('gto_capacity', (v) => v as int?),
          toThrust: $checkedConvert('to_thrust', (v) => v as int?),
          apogee: $checkedConvert('apogee', (v) => v as int?),
          vehicleRange: $checkedConvert('vehicle_range', (v) => v as int?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
          infoUrl: $checkedConvert('info_url', (v) => v as String?),
          wikiUrl: $checkedConvert('wiki_url', (v) => v as String?),
          totalLaunchCount:
              $checkedConvert('total_launch_count', (v) => v as int?),
          consecutiveSuccessfulLaunches: $checkedConvert(
              'consecutive_successful_launches', (v) => v as int?),
          successfulLaunches:
              $checkedConvert('successful_launches', (v) => v as int?),
          failedLaunches: $checkedConvert('failed_launches', (v) => v as int?),
          pendingLaunches:
              $checkedConvert('pending_launches', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'minStage': 'min_stage',
        'maxStage': 'max_stage',
        'maidenFlight': 'maiden_flight',
        'launchCost': 'launch_cost',
        'launchMass': 'launch_mass',
        'leoCapacity': 'leo_capacity',
        'gtoCapacity': 'gto_capacity',
        'toThrust': 'to_thrust',
        'vehicleRange': 'vehicle_range',
        'imageUrl': 'image_url',
        'infoUrl': 'info_url',
        'wikiUrl': 'wiki_url',
        'totalLaunchCount': 'total_launch_count',
        'consecutiveSuccessfulLaunches': 'consecutive_successful_launches',
        'successfulLaunches': 'successful_launches',
        'failedLaunches': 'failed_launches',
        'pendingLaunches': 'pending_launches'
      },
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'active': instance.active,
      'reusable': instance.reusable,
      'description': instance.description,
      'family': instance.family,
      'full_name': instance.fullName,
      'manufacturer': instance.manufacturer,
      'program': instance.program,
      'variant': instance.variant,
      'alias': instance.alias,
      'min_stage': instance.minStage,
      'max_stage': instance.maxStage,
      'length': instance.length,
      'diameter': instance.diameter,
      'maiden_flight': instance.maidenFlight?.toIso8601String(),
      'launch_cost': instance.launchCost,
      'launch_mass': instance.launchMass,
      'leo_capacity': instance.leoCapacity,
      'gto_capacity': instance.gtoCapacity,
      'to_thrust': instance.toThrust,
      'apogee': instance.apogee,
      'vehicle_range': instance.vehicleRange,
      'image_url': instance.imageUrl,
      'info_url': instance.infoUrl,
      'wiki_url': instance.wikiUrl,
      'total_launch_count': instance.totalLaunchCount,
      'consecutive_successful_launches': instance.consecutiveSuccessfulLaunches,
      'successful_launches': instance.successfulLaunches,
      'failed_launches': instance.failedLaunches,
      'pending_launches': instance.pendingLaunches,
    };
