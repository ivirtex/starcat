// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesState _$LaunchesStateFromJson(Map<String, dynamic> json) =>
    LaunchesState(
      status: $enumDecodeNullable(_$LaunchesStatusEnumMap, json['status']) ??
          LaunchesStatus.initial,
      launches: (json['launches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
    );

Map<String, dynamic> _$LaunchesStateToJson(LaunchesState instance) =>
    <String, dynamic>{
      'status': _$LaunchesStatusEnumMap[instance.status]!,
      'launches': instance.launches,
    };

const _$LaunchesStatusEnumMap = {
  LaunchesStatus.initial: 'initial',
  LaunchesStatus.loading: 'loading',
  LaunchesStatus.success: 'success',
  LaunchesStatus.failure: 'failure',
};
