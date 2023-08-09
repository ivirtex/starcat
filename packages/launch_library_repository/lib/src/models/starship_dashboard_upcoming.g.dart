// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'starship_dashboard_upcoming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarshipDashboardUpcoming _$StarshipDashboardUpcomingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'StarshipDashboardUpcoming',
      json,
      ($checkedConvert) {
        final val = StarshipDashboardUpcoming(
          launches: $checkedConvert(
              'launches',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          events: $checkedConvert(
              'events',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$StarshipDashboardUpcomingToJson(
        StarshipDashboardUpcoming instance) =>
    <String, dynamic>{
      'launches': instance.launches,
      'events': instance.events,
    };
