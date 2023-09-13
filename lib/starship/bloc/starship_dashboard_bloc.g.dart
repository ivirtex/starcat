// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship_dashboard_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StarshipDashboardState _$StarshipDashboardStateFromJson(
        Map<String, dynamic> json) =>
    StarshipDashboardState(
      status: $enumDecodeNullable(
              _$StarshipDashboardStatusEnumMap, json['status']) ??
          StarshipDashboardStatus.initial,
      dashboard: json['dashboard'] == null
          ? null
          : StarshipDashboard.fromJson(
              json['dashboard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StarshipDashboardStateToJson(
        StarshipDashboardState instance) =>
    <String, dynamic>{
      'status': _$StarshipDashboardStatusEnumMap[instance.status]!,
      'dashboard': instance.dashboard,
    };

const _$StarshipDashboardStatusEnumMap = {
  StarshipDashboardStatus.initial: 'initial',
  StarshipDashboardStatus.loading: 'loading',
  StarshipDashboardStatus.success: 'success',
  StarshipDashboardStatus.failure: 'failure',
};
