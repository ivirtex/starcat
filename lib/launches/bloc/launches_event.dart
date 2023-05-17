part of 'launches_bloc.dart';

abstract class LaunchesEvent extends Equatable {
  const LaunchesEvent();
}

class LaunchesRequested extends LaunchesEvent {
  const LaunchesRequested();

  @override
  List<Object> get props => [];
}

class LaunchesDetailsRequested extends LaunchesEvent {
  const LaunchesDetailsRequested({required this.launchId});

  final String launchId;

  @override
  List<Object> get props => [launchId];
}

class LaunchesSelectionChanged extends LaunchesEvent {
  const LaunchesSelectionChanged({required this.selectedLaunches});

  final SelectedLaunches selectedLaunches;

  @override
  List<Object> get props => [selectedLaunches];
}
