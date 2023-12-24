part of 'launches_bloc.dart';

enum LaunchesStatus { initial, loading, success, failure, noMoreResults }

enum SelectedLaunches {
  upcoming,
  past,
}

@JsonSerializable()
class LaunchesState extends Equatable {
  const LaunchesState({
    this.upcomingLaunchesStatus = LaunchesStatus.initial,
    this.pastLaunchesStatus = LaunchesStatus.initial,
    this.allUpcomingLaunches = const <Launch>[],
    this.upcomingLaunches = const <Launch>[],
    this.pastLaunches = const <Launch>[],
    this.selectedLaunches = SelectedLaunches.upcoming,
    this.filter = const LaunchesFilter(),
    this.currentOffsetOfUpcomingLaunches = 0,
    this.currentOffsetOfPastLaunches = 0,
  });

  factory LaunchesState.fromJson(Map<String, dynamic> json) =>
      _$LaunchesStateFromJson(json);

  final LaunchesStatus upcomingLaunchesStatus;
  final LaunchesStatus pastLaunchesStatus;

  /// Contains all the upcoming launches
  /// for the explore page, they are not
  /// updated when filters are applied.
  final List<Launch> allUpcomingLaunches;

  final List<Launch> upcomingLaunches;
  final List<Launch> pastLaunches;
  final SelectedLaunches selectedLaunches;
  final LaunchesFilter filter;

  final int currentOffsetOfUpcomingLaunches;
  final int currentOffsetOfPastLaunches;

  List<Launch> get allLaunches =>
      pastLaunches + upcomingLaunches + allUpcomingLaunches;

  Map<String, dynamic> toJson() => _$LaunchesStateToJson(this);

  LaunchesState copyWith({
    LaunchesStatus? upcomingLaunchesStatus,
    LaunchesStatus? pastLaunchesStatus,
    List<Launch>? allUpcomingLaunches,
    List<Launch>? upcomingLaunches,
    List<Launch>? pastLaunches,
    SelectedLaunches? selectedLaunches,
    LaunchesFilter? filter,
    int? currentOffsetOfUpcomingLaunches,
    int? currentOffsetOfPastLaunches,
  }) {
    return LaunchesState(
      upcomingLaunchesStatus:
          upcomingLaunchesStatus ?? this.upcomingLaunchesStatus,
      pastLaunchesStatus: pastLaunchesStatus ?? this.pastLaunchesStatus,
      allUpcomingLaunches: allUpcomingLaunches ?? this.allUpcomingLaunches,
      upcomingLaunches: upcomingLaunches ?? this.upcomingLaunches,
      pastLaunches: pastLaunches ?? this.pastLaunches,
      selectedLaunches: selectedLaunches ?? this.selectedLaunches,
      filter: filter ?? this.filter,
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
        upcomingLaunchesStatus,
        pastLaunchesStatus,
        allUpcomingLaunches,
        upcomingLaunches,
        pastLaunches,
        selectedLaunches,
        filter,
        currentOffsetOfUpcomingLaunches,
        currentOffsetOfPastLaunches,
      ];
}
