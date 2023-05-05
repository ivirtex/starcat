part of 'notifications_cubit.dart';

@JsonSerializable()
class NotificationsState extends Equatable {
  const NotificationsState({
    this.trackedLaunches = const <Launch>[],
    this.areNotificationsContinuous = false,
    this.hasNotificationsPreferenceModalBeenShown = false,
  });

  factory NotificationsState.fromJson(Map<String, dynamic> json) =>
      _$NotificationsStateFromJson(json);

  final List<Launch> trackedLaunches;
  final bool areNotificationsContinuous;
  final bool hasNotificationsPreferenceModalBeenShown;

  Map<String, dynamic> toJson() => _$NotificationsStateToJson(this);

  NotificationsState copyWith({
    List<Launch>? trackedLaunches,
    bool? areNotificationsContinuous,
    bool? hasNotificationsPreferenceModalBeenShown,
  }) {
    return NotificationsState(
      trackedLaunches: trackedLaunches ?? this.trackedLaunches,
      areNotificationsContinuous:
          areNotificationsContinuous ?? this.areNotificationsContinuous,
      hasNotificationsPreferenceModalBeenShown:
          hasNotificationsPreferenceModalBeenShown ??
              this.hasNotificationsPreferenceModalBeenShown,
    );
  }

  @override
  List<Object> get props => [
        trackedLaunches,
        areNotificationsContinuous,
        hasNotificationsPreferenceModalBeenShown,
      ];
}
