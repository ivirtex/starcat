// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsState _$NotificationsStateFromJson(Map<String, dynamic> json) =>
    NotificationsState(
      areNotificationsContinuous:
          json['areNotificationsContinuous'] as bool? ?? false,
      areStarbaseNotificationsEnabled:
          json['areStarbaseNotificationsEnabled'] as bool? ?? false,
      hasNotificationsPreferenceModalBeenShown:
          json['hasNotificationsPreferenceModalBeenShown'] as bool? ?? false,
      liveActivityCreationStatus: $enumDecodeNullable(
              _$LiveActivityCreationStatusEnumMap,
              json['liveActivityCreationStatus']) ??
          LiveActivityCreationStatus.success,
      trackedLaunch: json['trackedLaunch'] == null
          ? null
          : TrackedLaunch.fromJson(
              json['trackedLaunch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationsStateToJson(NotificationsState instance) =>
    <String, dynamic>{
      'areNotificationsContinuous': instance.areNotificationsContinuous,
      'areStarbaseNotificationsEnabled':
          instance.areStarbaseNotificationsEnabled,
      'hasNotificationsPreferenceModalBeenShown':
          instance.hasNotificationsPreferenceModalBeenShown,
      'liveActivityCreationStatus': _$LiveActivityCreationStatusEnumMap[
          instance.liveActivityCreationStatus]!,
      'trackedLaunch': instance.trackedLaunch,
    };

const _$LiveActivityCreationStatusEnumMap = {
  LiveActivityCreationStatus.success: 'success',
  LiveActivityCreationStatus.creating: 'creating',
  LiveActivityCreationStatus.failure: 'failure',
};
