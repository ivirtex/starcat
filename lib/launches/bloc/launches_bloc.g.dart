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
      detailedLaunchesCached: (json['detailedLaunchesCached'] as List<dynamic>?)
              ?.map((e) => LaunchCached.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const <LaunchCached>{},
      selectedLaunches: $enumDecodeNullable(
              _$SelectedLaunchesEnumMap, json['selectedLaunches']) ??
          SelectedLaunches.upcoming,
      currentOffsetOfUpcomingLaunches:
          json['currentOffsetOfUpcomingLaunches'] as int? ?? 10,
      currentOffsetOfPastLaunches:
          json['currentOffsetOfPastLaunches'] as int? ?? 10,
    );

Map<String, dynamic> _$LaunchesStateToJson(LaunchesState instance) =>
    <String, dynamic>{
      'status': _$LaunchesStatusEnumMap[instance.status]!,
      'upcomingLaunches': instance.upcomingLaunches,
      'pastLaunches': instance.pastLaunches,
      'detailedLaunchesCached': instance.detailedLaunchesCached.toList(),
      'selectedLaunches': _$SelectedLaunchesEnumMap[instance.selectedLaunches]!,
      'currentOffsetOfUpcomingLaunches':
          instance.currentOffsetOfUpcomingLaunches,
      'currentOffsetOfPastLaunches': instance.currentOffsetOfPastLaunches,
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
