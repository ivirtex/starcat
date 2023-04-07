part of 'launches_bloc.dart';

abstract class LaunchesEvent extends Equatable {
  const LaunchesEvent();
}

class LaunchesRequested extends LaunchesEvent {
  const LaunchesRequested({required this.launchTime});

  final LaunchTime launchTime;

  @override
  List<Object> get props => [launchTime];
}
