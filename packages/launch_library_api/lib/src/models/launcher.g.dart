// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'launcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launcher _$LauncherFromJson(Map<String, dynamic> json) => Launcher(
      url: json['url'] as String,
      details: json['details'] as String?,
      flightProven: json['flight_proven'] as bool?,
      serialNumber: json['serial_number'] as String?,
      status: json['status'] as String?,
      imageUrl: json['image_url'] as String?,
      successfulLandings: json['successful_landings'] as int?,
      attemptedLandings: json['attempted_landings'] as int?,
      flights: json['flights'] as int?,
      lastLaunchDate: json['last_launch_date'] == null
          ? null
          : DateTime.parse(json['last_launch_date'] as String),
      firstLaunchDate: json['first_launch_date'] == null
          ? null
          : DateTime.parse(json['first_launch_date'] as String),
    );

Map<String, dynamic> _$LauncherToJson(Launcher instance) => <String, dynamic>{
      'url': instance.url,
      'details': instance.details,
      'flight_proven': instance.flightProven,
      'serial_number': instance.serialNumber,
      'status': instance.status,
      'image_url': instance.imageUrl,
      'successful_landings': instance.successfulLandings,
      'attempted_landings': instance.attemptedLandings,
      'flights': instance.flights,
      'last_launch_date': instance.lastLaunchDate?.toIso8601String(),
      'first_launch_date': instance.firstLaunchDate?.toIso8601String(),
    };
