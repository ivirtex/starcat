part of 'launches_bloc.dart';

enum LaunchesStatus { initial, loading, success, failure }

class LaunchesState extends Equatable {
  const LaunchesState({
    this.status = LaunchesStatus.initial,
    this.launches = const <Launch>[],
  });

  final LaunchesStatus status;
  final List<Launch> launches;

  LaunchesState copyWith({
    LaunchesStatus? status,
    List<Launch>? launches,
  }) {
    return LaunchesState(
      status: status ?? this.status,
      launches: launches ?? this.launches,
    );
  }

  @override
  List<Object> get props => [
        status,
        launches,
      ];
}
