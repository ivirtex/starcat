part of 'launches_bloc.dart';

sealed class LaunchesEvent extends Equatable {
  const LaunchesEvent();

  @override
  List<Object?> get props => [];
}

final class LaunchesRequested extends LaunchesEvent {
  const LaunchesRequested();
}

final class LaunchesNextPageRequested extends LaunchesEvent {
  const LaunchesNextPageRequested({
    required this.type,
  });

  final SelectedLaunches type;

  @override
  List<Object?> get props => [type];
}

final class LaunchesSelectionChanged extends LaunchesEvent {
  const LaunchesSelectionChanged({required this.selectedLaunches});

  final SelectedLaunches selectedLaunches;

  @override
  List<Object> get props => [selectedLaunches];
}
