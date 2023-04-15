part of 'launches_bloc.dart';

enum LaunchesStatus { initial, loading, success, failure }

@JsonSerializable()
class LaunchesState extends Equatable {
  const LaunchesState({
    this.status = LaunchesStatus.initial,
    this.launches = const <Launch>[],
    this.lastSuccessfulUpdate,
  });

  factory LaunchesState.fromJson(Map<String, dynamic> json) =>
      _$LaunchesStateFromJson(json);

  final LaunchesStatus status;
  final List<Launch> launches;
  final DateTime? lastSuccessfulUpdate;

  Map<String, dynamic> toJson() => _$LaunchesStateToJson(this);

  LaunchesState copyWith({
    LaunchesStatus? status,
    List<Launch>? launches,
    DateTime? lastSuccessfulUpdate,
  }) {
    return LaunchesState(
      status: status ?? this.status,
      launches: launches ?? this.launches,
      lastSuccessfulUpdate: lastSuccessfulUpdate ?? this.lastSuccessfulUpdate,
    );
  }

  @override
  List<Object?> get props => [
        lastSuccessfulUpdate,
        status,
        launches,
      ];
}
