part of 'launches_bloc.dart';

sealed class LaunchesEvent extends Equatable {
  const LaunchesEvent();

  @override
  List<Object?> get props => [];
}

final class ExploreLaunchesRequested extends LaunchesEvent {
  const ExploreLaunchesRequested();
}

final class LaunchesRefreshRequested extends LaunchesEvent {
  const LaunchesRefreshRequested();
}

final class LaunchesSelectionChanged extends LaunchesEvent {
  const LaunchesSelectionChanged({required this.selectedLaunches});

  final SelectedLaunches selectedLaunches;

  @override
  List<Object> get props => [selectedLaunches];
}

final class LaunchesFilterChanged extends LaunchesEvent {
  const LaunchesFilterChanged({required this.newFilter});

  final LaunchesFilter newFilter;

  @override
  List<Object> get props => [newFilter];
}

final class LaunchesNextPageRequested extends LaunchesEvent {
  const LaunchesNextPageRequested({
    required this.type,
  });

  final SelectedLaunches type;

  @override
  List<Object?> get props => [type];
}

final class LaunchesOffsetReset extends LaunchesEvent {
  const LaunchesOffsetReset();
}
