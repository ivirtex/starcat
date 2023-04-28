part of 'notifications_cubit.dart';

@JsonSerializable()
class NotificationsState extends Equatable {
  const NotificationsState({
    this.trackedLaunches = const <Launch>[],
  });

  factory NotificationsState.fromJson(Map<String, dynamic> json) =>
      _$NotificationsStateFromJson(json);

  final List<Launch> trackedLaunches;

  Map<String, dynamic> toJson() => _$NotificationsStateToJson(this);

  NotificationsState copyWith({
    List<Launch>? trackedLaunches,
  }) {
    return NotificationsState(
      trackedLaunches: trackedLaunches ?? this.trackedLaunches,
    );
  }

  @override
  List<Object> get props => [trackedLaunches];
}
