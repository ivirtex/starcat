part of 'launches_bloc.dart';

sealed class LaunchesEvent extends Equatable {
  const LaunchesEvent();
}

final class LaunchesRequested extends LaunchesEvent {
  const LaunchesRequested();

  @override
  List<Object?> get props => [];
}

final class LaunchesDetailsRequested extends LaunchesEvent {
  const LaunchesDetailsRequested({required this.launchId});

  final String launchId;

  @override
  List<Object> get props => [launchId];
}

final class LaunchesSelectionChanged extends LaunchesEvent {
  const LaunchesSelectionChanged({required this.selectedLaunches});

  final SelectedLaunches selectedLaunches;

  @override
  List<Object> get props => [selectedLaunches];
}
