// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) =>
    Configuration(
      url: json['url'] as String?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      reusable: json['reusable'] as bool?,
      description: json['description'] as String?,
      family: json['family'] as String?,
      fullName: json['full_name'] as String?,
      manufacturer: json['manufacturer'] == null
          ? null
          : LaunchServiceProvider.fromJson(
              json['manufacturer'] as Map<String, dynamic>),
      program: (json['program'] as List<dynamic>?)
          ?.map((e) => Program.fromJson(e as Map<String, dynamic>))
          .toList(),
      variant: json['variant'] as String?,
      alias: json['alias'] as String?,
      minStage: json['min_stage'] as int?,
      maxStage: json['max_stage'] as int?,
      length: (json['length'] as num?)?.toDouble(),
      diameter: (json['diameter'] as num?)?.toDouble(),
      maidenFlight: json['maiden_flight'] == null
          ? null
          : DateTime.parse(json['maiden_flight'] as String),
      launchCost: json['launch_cost'] as String?,
      launchMass: json['launch_mass'] as int?,
      leoCapacity: json['leo_capacity'] as int?,
      gtoCapacity: json['gto_capacity'] as int?,
      toThrust: json['to_thrust'] as int?,
      apogee: json['apogee'] as int?,
      vehicleRange: json['vehicle_range'] as int?,
      imageUrl: json['image_url'] as String?,
      infoUrl: json['info_url'] as String?,
      wikiUrl: json['wiki_url'] as String?,
      totalLaunchCount: json['total_launch_count'] as int?,
      consecutiveSuccessfulLaunches:
          json['consecutive_successful_launches'] as int?,
      successfulLaunches: json['successful_launches'] as int?,
      failedLaunches: json['failed_launches'] as int?,
      pendingLaunches: json['pending_launches'] as int?,
    );

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
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
