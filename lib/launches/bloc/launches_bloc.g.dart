// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesState _$LaunchesStateFromJson(Map<String, dynamic> json) =>
    LaunchesState(
      upcomingLaunchesStatus: $enumDecodeNullable(
              _$LaunchesStatusEnumMap, json['upcomingLaunchesStatus']) ??
          LaunchesStatus.initial,
      pastLaunchesStatus: $enumDecodeNullable(
              _$LaunchesStatusEnumMap, json['pastLaunchesStatus']) ??
          LaunchesStatus.initial,
      allUpcomingLaunches: (json['allUpcomingLaunches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
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
      filter: json['filter'] == null
          ? const LaunchesFilter()
          : LaunchesFilter.fromJson(json['filter'] as Map<String, dynamic>),
      currentOffsetOfUpcomingLaunches:
          json['currentOffsetOfUpcomingLaunches'] as int? ?? 0,
      currentOffsetOfPastLaunches:
          json['currentOffsetOfPastLaunches'] as int? ?? 0,
    );

Map<String, dynamic> _$LaunchesStateToJson(LaunchesState instance) =>
    <String, dynamic>{
      'upcomingLaunchesStatus':
          _$LaunchesStatusEnumMap[instance.upcomingLaunchesStatus]!,
      'pastLaunchesStatus':
          _$LaunchesStatusEnumMap[instance.pastLaunchesStatus]!,
      'allUpcomingLaunches': instance.allUpcomingLaunches,
      'upcomingLaunches': instance.upcomingLaunches,
      'pastLaunches': instance.pastLaunches,
      'selectedLaunches': _$SelectedLaunchesEnumMap[instance.selectedLaunches]!,
      'filter': instance.filter,
      'currentOffsetOfUpcomingLaunches':
          instance.currentOffsetOfUpcomingLaunches,
      'currentOffsetOfPastLaunches': instance.currentOffsetOfPastLaunches,
    };

const _$LaunchesStatusEnumMap = {
  LaunchesStatus.initial: 'initial',
  LaunchesStatus.loading: 'loading',
  LaunchesStatus.success: 'success',
  LaunchesStatus.failure: 'failure',
  LaunchesStatus.noMoreResults: 'noMoreResults',
};

const _$SelectedLaunchesEnumMap = {
  SelectedLaunches.upcoming: 'upcoming',
  SelectedLaunches.past: 'past',
};
