// Dart imports:
import 'dart:async';

// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:live_activities/live_activities.dart';
import 'package:live_activities/models/activity_update.dart';
import 'package:notifications_api/notifications_api.dart';

/// Repository for handling FCM
/// and Live Activities.
class NotificationsRepository {
  NotificationsRepository({
    required String appGroupId,
    String baseApiUrl = 'localhost:8000',
    FirebaseMessaging? firebaseMessagingInstance,
    LiveActivities? liveActivitiesPlugin,
    NotificationsApi? notificationsApi,
  })  : _firebaseMessagingInstance =
            firebaseMessagingInstance ?? FirebaseMessaging.instance,
        _liveActivitiesPlugin = liveActivitiesPlugin ?? LiveActivities(),
        _notificationsApi =
            notificationsApi ?? NotificationsApi(baseUrl: baseApiUrl) {
    _liveActivitiesPlugin.init(appGroupId: appGroupId);
  }

  final FirebaseMessaging _firebaseMessagingInstance;
  final LiveActivities _liveActivitiesPlugin;
  final NotificationsApi _notificationsApi;

  StreamSubscription<ActivityUpdate>? activityUpdateStream;

  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessagingInstance.requestPermission();
    await _firebaseMessagingInstance.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessagingInstance.unsubscribeFromTopic(topic);
  }

  /// Tracks the given [launch] with Live Activity.
  Future<String> trackLaunchUsingLiveActivity(Launch launch) async {
    final activityData = {
      'status': launch.status!.abbrev!.name,
      'launchTZeroDate': launch.net!.toUtc().toIso8601String(),
      'launchName': launch.mission!.name,
      'launchVehicle': launch.rocket!.configuration!.name,
    };

    final id = await _liveActivitiesPlugin.createActivity(activityData);

    if (id == null) {
      throw Exception('Failed to create live activity');
    }

    activityUpdateStream = _liveActivitiesPlugin.activityUpdateStream.listen(
      (event) => event.mapOrNull(
        active: (state) {
          return _notificationsApi
              .sendLiveActivityPushToken(state.activityToken);
        },
      ),
    );

    return id;
  }

  /// Cancels the Live Activity tracking by given activityId.
  Future<void> cancelLiveActivityTracking(String id) async {
    await _liveActivitiesPlugin.endActivity(id);
    await _notificationsApi.invalidateLiveActivityPushToken(id);
    await activityUpdateStream?.cancel();
  }
}
