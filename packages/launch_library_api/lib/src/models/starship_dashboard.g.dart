// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'starship_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarshipDashboard _$StarshipDashboardFromJson(Map<String, dynamic> json) =>
    StarshipDashboard(
      updates: (json['updates'] as List<dynamic>?)
              ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upcoming: json['upcoming'] == null
          ? null
          : StarshipLaunchesAndEvents.fromJson(
              json['upcoming'] as Map<String, dynamic>),
      previous: json['previous'] == null
          ? null
          : StarshipLaunchesAndEvents.fromJson(
              json['previous'] as Map<String, dynamic>),
      roadClosures: (json['road_closures'] as List<dynamic>?)
              ?.map((e) => RoadClosure.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      notices: (json['notices'] as List<dynamic>?)
              ?.map((e) => NoticeType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      liveStreams: (json['live_streams'] as List<dynamic>?)
              ?.map((e) => LiveStream.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Launcher.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orbiters: (json['orbiters'] as List<dynamic>?)
              ?.map((e) => Orbiter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StarshipDashboardToJson(StarshipDashboard instance) =>
    <String, dynamic>{
      'updates': instance.updates,
      'upcoming': instance.upcoming,
      'previous': instance.previous,
      'road_closures': instance.roadClosures,
      'notices': instance.notices,
      'live_streams': instance.liveStreams,
      'vehicles': instance.vehicles,
      'orbiters': instance.orbiters,
    };
