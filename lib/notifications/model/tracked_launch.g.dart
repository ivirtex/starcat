// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracked_launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackedLaunch _$TrackedLaunchFromJson(Map<String, dynamic> json) =>
    TrackedLaunch(
      launchData: Launch.fromJson(json['launchData'] as Map<String, dynamic>),
      trackingMethod:
          $enumDecode(_$TrackingMethodEnumMap, json['trackingMethod']),
      activityId: json['activityId'] as String?,
    );

Map<String, dynamic> _$TrackedLaunchToJson(TrackedLaunch instance) =>
    <String, dynamic>{
      'launchData': instance.launchData,
      'trackingMethod': _$TrackingMethodEnumMap[instance.trackingMethod]!,
      'activityId': instance.activityId,
    };

const _$TrackingMethodEnumMap = {
  TrackingMethod.notifications: 'notifications',
  TrackingMethod.liveActivity: 'liveActivity',
};
