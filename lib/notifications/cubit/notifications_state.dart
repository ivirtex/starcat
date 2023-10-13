part of 'notifications_cubit.dart';

enum LiveActivityCreationStatus {
  success,
  creating,
  failure,
}

@JsonSerializable()
class NotificationsState extends Equatable {
  const NotificationsState({
    this.areNotificationsContinuous = false,
    this.areStarbaseNotificationsEnabled = false,
    this.hasNotificationsPreferenceModalBeenShown = false,
    this.liveActivityCreationStatus = LiveActivityCreationStatus.success,
    this.trackedLaunch,
  });

  factory NotificationsState.fromJson(Map<String, dynamic> json) =>
      _$NotificationsStateFromJson(json);

  final bool areNotificationsContinuous;
  final bool areStarbaseNotificationsEnabled;
  final bool hasNotificationsPreferenceModalBeenShown;
  final LiveActivityCreationStatus liveActivityCreationStatus;
  final TrackedLaunch? trackedLaunch;

  Map<String, dynamic> toJson() => _$NotificationsStateToJson(this);

  @override
  bool? get stringify => false;

  NotificationsState copyWith({
    bool? areNotificationsContinuous,
    bool? areStarbaseNotificationsEnabled,
    bool? hasNotificationsPreferenceModalBeenShown,
    LiveActivityCreationStatus? liveActivityCreationStatus,
    TrackedLaunch? trackedLaunch,
  }) {
    return NotificationsState(
      areNotificationsContinuous:
          areNotificationsContinuous ?? this.areNotificationsContinuous,
      areStarbaseNotificationsEnabled: areStarbaseNotificationsEnabled ??
          this.areStarbaseNotificationsEnabled,
      hasNotificationsPreferenceModalBeenShown:
          hasNotificationsPreferenceModalBeenShown ??
              this.hasNotificationsPreferenceModalBeenShown,
      liveActivityCreationStatus:
          liveActivityCreationStatus ?? this.liveActivityCreationStatus,
      trackedLaunch: trackedLaunch ?? this.trackedLaunch,
    );
  }

  NotificationsState copyWithNullable({
    bool? areNotificationsContinuous,
    bool? areStarbaseNotificationsEnabled,
    bool? hasNotificationsPreferenceModalBeenShown,
    LiveActivityCreationStatus? liveActivityCreationStatus,
    TrackedLaunch? Function()? trackedLaunch,
  }) {
    return NotificationsState(
      areNotificationsContinuous:
          areNotificationsContinuous ?? this.areNotificationsContinuous,
      areStarbaseNotificationsEnabled: areStarbaseNotificationsEnabled ??
          this.areStarbaseNotificationsEnabled,
      hasNotificationsPreferenceModalBeenShown:
          hasNotificationsPreferenceModalBeenShown ??
              this.hasNotificationsPreferenceModalBeenShown,
      liveActivityCreationStatus:
          liveActivityCreationStatus ?? this.liveActivityCreationStatus,
      trackedLaunch:
          trackedLaunch != null ? trackedLaunch() : this.trackedLaunch,
    );
  }

  @override
  List<Object?> get props => [
        areNotificationsContinuous,
        areStarbaseNotificationsEnabled,
        hasNotificationsPreferenceModalBeenShown,
        trackedLaunch,
        liveActivityCreationStatus,
      ];
}
