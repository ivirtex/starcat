// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'starship_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarshipDashboard _$StarshipDashboardFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StarshipDashboard',
      json,
      ($checkedConvert) {
        final val = StarshipDashboard(
          updates: $checkedConvert(
              'updates',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          upcoming: $checkedConvert(
              'upcoming',
              (v) => v == null
                  ? null
                  : StarshipLaunchesAndEvents.fromJson(
                      v as Map<String, dynamic>)),
          previous: $checkedConvert(
              'previous',
              (v) => v == null
                  ? null
                  : StarshipLaunchesAndEvents.fromJson(
                      v as Map<String, dynamic>)),
          roadClosures: $checkedConvert(
              'road_closures',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          RoadClosure.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          notices: $checkedConvert(
              'notices',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map(
                          (e) => NoticeType.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          liveStreams: $checkedConvert(
              'live_streams',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map(
                          (e) => LiveStream.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          vehicles: $checkedConvert(
              'vehicles',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Launcher.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          orbiters: $checkedConvert(
              'orbiters',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Orbiter.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
      fieldKeyMap: const {
        'roadClosures': 'road_closures',
        'liveStreams': 'live_streams'
      },
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
