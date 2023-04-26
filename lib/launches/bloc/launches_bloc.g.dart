// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesState _$LaunchesStateFromJson(Map<String, dynamic> json) =>
    LaunchesState(
      status: $enumDecodeNullable(_$LaunchesStatusEnumMap, json['status']) ??
          LaunchesStatus.initial,
      upcomingLaunches: (json['upcomingLaunches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
      pastLaunches: (json['pastLaunches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
      selectedLaunches: $enumDecodeNullable(
              _$SelectedLaunchesEnumMap, json['selectedLaunches']) ??
          SelectedLaunches.upcoming,
      launchesToTrack: (json['launchesToTrack'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
      lastSuccessfulUpdate: json['lastSuccessfulUpdate'] == null
          ? null
          : DateTime.parse(json['lastSuccessfulUpdate'] as String),
    );

Map<String, dynamic> _$LaunchesStateToJson(LaunchesState instance) =>
    <String, dynamic>{
      'status': _$LaunchesStatusEnumMap[instance.status]!,
      'upcomingLaunches': instance.upcomingLaunches,
      'pastLaunches': instance.pastLaunches,
      'selectedLaunches': _$SelectedLaunchesEnumMap[instance.selectedLaunches]!,
      'launchesToTrack': instance.launchesToTrack,
      'lastSuccessfulUpdate': instance.lastSuccessfulUpdate?.toIso8601String(),
    };

const _$LaunchesStatusEnumMap = {
  LaunchesStatus.initial: 'initial',
  LaunchesStatus.loading: 'loading',
  LaunchesStatus.success: 'success',
  LaunchesStatus.failure: 'failure',
};

const _$SelectedLaunchesEnumMap = {
  SelectedLaunches.upcoming: 'upcoming',
  SelectedLaunches.past: 'past',
};
