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

class LaunchesSelectionChanged extends LaunchesEvent {
  const LaunchesSelectionChanged({required this.selectedLaunches});

  final SelectedLaunches selectedLaunches;

  @override
  List<Object> get props => [selectedLaunches];
}

class LaunchesToTrackAdded extends LaunchesEvent {
  const LaunchesToTrackAdded({required this.launch});

  final Launch launch;

  @override
  List<Object> get props => [launch];
}
