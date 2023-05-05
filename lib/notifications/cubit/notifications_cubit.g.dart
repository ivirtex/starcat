// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsState _$NotificationsStateFromJson(Map<String, dynamic> json) =>
    NotificationsState(
      trackedLaunches: (json['trackedLaunches'] as List<dynamic>?)
              ?.map((e) => Launch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Launch>[],
      areNotificationsContinuous:
          json['areNotificationsContinuous'] as bool? ?? false,
      hasNotificationsPreferenceModalBeenShown:
          json['hasNotificationsPreferenceModalBeenShown'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationsStateToJson(NotificationsState instance) =>
    <String, dynamic>{
      'trackedLaunches': instance.trackedLaunches,
      'areNotificationsContinuous': instance.areNotificationsContinuous,
      'hasNotificationsPreferenceModalBeenShown':
          instance.hasNotificationsPreferenceModalBeenShown,
    };
