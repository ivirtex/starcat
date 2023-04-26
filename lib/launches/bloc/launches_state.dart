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
    this.selectedLaunches = SelectedLaunches.upcoming,
    this.launchesToTrack = const <Launch>[],
    this.lastSuccessfulUpdate,
  });

  factory LaunchesState.fromJson(Map<String, dynamic> json) =>
      _$LaunchesStateFromJson(json);

  final LaunchesStatus status;
  final List<Launch> upcomingLaunches;
  final List<Launch> pastLaunches;
  final SelectedLaunches selectedLaunches;
  final List<Launch> launchesToTrack;
  final DateTime? lastSuccessfulUpdate;

  Map<String, dynamic> toJson() => _$LaunchesStateToJson(this);

  LaunchesState copyWith({
    LaunchesStatus? status,
    List<Launch>? upcomingLaunches,
    List<Launch>? pastLaunches,
    SelectedLaunches? selectedLaunches,
    List<Launch>? launchesToTrack,
    DateTime? lastSuccessfulUpdate,
  }) {
    return LaunchesState(
      status: status ?? this.status,
      upcomingLaunches: upcomingLaunches ?? this.upcomingLaunches,
      pastLaunches: pastLaunches ?? this.pastLaunches,
      selectedLaunches: selectedLaunches ?? this.selectedLaunches,
      launchesToTrack: launchesToTrack ?? this.launchesToTrack,
      lastSuccessfulUpdate: lastSuccessfulUpdate ?? this.lastSuccessfulUpdate,
    );
  }

  @override
  List<Object?> get props => [
        status,
        upcomingLaunches,
        pastLaunches,
        selectedLaunches,
        launchesToTrack,
        lastSuccessfulUpdate,
      ];
}
