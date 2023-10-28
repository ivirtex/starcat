// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship_dashboard_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarshipDashboardState _$StarshipDashboardStateFromJson(
        Map<String, dynamic> json) =>
    StarshipDashboardState(
      dashboardStatus:
          $enumDecodeNullable(_$FetchStatusEnumMap, json['dashboardStatus']) ??
              FetchStatus.initial,
      newsStatus:
          $enumDecodeNullable(_$FetchStatusEnumMap, json['newsStatus']) ??
              FetchStatus.initial,
      dashboard: json['dashboard'] == null
          ? null
          : StarshipDashboard.fromJson(
              json['dashboard'] as Map<String, dynamic>),
      news: (json['news'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StarshipDashboardStateToJson(
        StarshipDashboardState instance) =>
    <String, dynamic>{
      'dashboardStatus': _$FetchStatusEnumMap[instance.dashboardStatus]!,
      'newsStatus': _$FetchStatusEnumMap[instance.newsStatus]!,
      'dashboard': instance.dashboard,
      'news': instance.news,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.initial: 'initial',
  FetchStatus.loading: 'loading',
  FetchStatus.success: 'success',
  FetchStatus.failure: 'failure',
};
