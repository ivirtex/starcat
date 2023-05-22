part of 'launches_bloc.dart';

enum LaunchesStatus { initial, loading, success, failure }

enum SelectedLaunches {
  upcoming,
  past,
}

@JsonSerializable()
class LaunchesState extends Equatable {
  const LaunchesState({
    this.status = LaunchesStatus.initial,
    this.upcomingLaunches = const <Launch>[],
    this.pastLaunches = const <Launch>[],
    this.detailedLaunchesCached = const <LaunchCached>{},
    this.selectedLaunches = SelectedLaunches.upcoming,
  });

  factory LaunchesState.fromJson(Map<String, dynamic> json) =>
      _$LaunchesStateFromJson(json);

  final LaunchesStatus status;
  final List<Launch> upcomingLaunches;
  final List<Launch> pastLaunches;
  final Set<LaunchCached> detailedLaunchesCached;
  final SelectedLaunches selectedLaunches;

  Map<String, dynamic> toJson() => _$LaunchesStateToJson(this);

  LaunchesState copyWith({
    LaunchesStatus? status,
    List<Launch>? upcomingLaunches,
    List<Launch>? pastLaunches,
    Set<LaunchCached>? detailedLaunchesCached,
    SelectedLaunches? selectedLaunches,
  }) {
    return LaunchesState(
      status: status ?? this.status,
      upcomingLaunches: upcomingLaunches ?? this.upcomingLaunches,
      pastLaunches: pastLaunches ?? this.pastLaunches,
      detailedLaunchesCached:
          detailedLaunchesCached ?? this.detailedLaunchesCached,
      selectedLaunches: selectedLaunches ?? this.selectedLaunches,
    );
  }

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        status,
        upcomingLaunches,
        pastLaunches,
        detailedLaunchesCached,
        selectedLaunches,
      ];
}
