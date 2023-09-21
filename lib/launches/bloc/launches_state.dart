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
    this.currentOffsetOfUpcomingLaunches = 10,
    this.currentOffsetOfPastLaunches = 10,
  });

  factory LaunchesState.fromJson(Map<String, dynamic> json) =>
      _$LaunchesStateFromJson(json);

  final LaunchesStatus status;
  final List<Launch> upcomingLaunches;
  final List<Launch> pastLaunches;
  final SelectedLaunches selectedLaunches;

  final int currentOffsetOfUpcomingLaunches;
  final int currentOffsetOfPastLaunches;

  List<Launch> get allLaunches => pastLaunches + upcomingLaunches;

  Map<String, dynamic> toJson() => _$LaunchesStateToJson(this);

  LaunchesState copyWith({
    LaunchesStatus? status,
    List<Launch>? upcomingLaunches,
    List<Launch>? pastLaunches,
    Set<LaunchCached>? detailedLaunchesCached,
    SelectedLaunches? selectedLaunches,
    int? currentOffsetOfUpcomingLaunches,
    int? currentOffsetOfPastLaunches,
  }) {
    return LaunchesState(
      status: status ?? this.status,
      upcomingLaunches: upcomingLaunches ?? this.upcomingLaunches,
      pastLaunches: pastLaunches ?? this.pastLaunches,
      selectedLaunches: selectedLaunches ?? this.selectedLaunches,
      currentOffsetOfUpcomingLaunches: currentOffsetOfUpcomingLaunches ??
          this.currentOffsetOfUpcomingLaunches,
      currentOffsetOfPastLaunches:
          currentOffsetOfPastLaunches ?? this.currentOffsetOfPastLaunches,
    );
  }

  @override
  bool? get stringify => false;

  @override
  List<Object?> get props => [
        status,
        upcomingLaunches,
        pastLaunches,
        selectedLaunches,
        currentOffsetOfUpcomingLaunches,
        currentOffsetOfPastLaunches,
      ];
}
