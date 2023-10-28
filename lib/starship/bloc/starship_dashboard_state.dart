part of 'starship_dashboard_bloc.dart';

enum FetchStatus { initial, loading, success, failure }

@JsonSerializable()
final class StarshipDashboardState extends Equatable {
  const StarshipDashboardState({
    this.dashboardStatus = FetchStatus.initial,
    this.newsStatus = FetchStatus.initial,
    this.dashboard,
    this.news = const [],
  });

  factory StarshipDashboardState.fromJson(Map<String, dynamic> json) =>
      _$StarshipDashboardStateFromJson(json);

  final FetchStatus dashboardStatus;
  final FetchStatus newsStatus;
  final StarshipDashboard? dashboard;
  final List<Article> news;

  List<Launch> get allLaunches => [
        ...dashboard?.upcoming?.launches ?? [],
        ...dashboard?.previous?.launches ?? [],
      ];

  Map<String, dynamic> toJson() => _$StarshipDashboardStateToJson(this);

  StarshipDashboardState copyWith({
    FetchStatus? dashboardStatus,
    FetchStatus? newsStatus,
    StarshipDashboard? dashboard,
    List<Article>? news,
  }) {
    return StarshipDashboardState(
      dashboardStatus: dashboardStatus ?? this.dashboardStatus,
      newsStatus: newsStatus ?? this.newsStatus,
      dashboard: dashboard ?? this.dashboard,
      news: news ?? this.news,
    );
  }

  @override
  List<Object?> get props => [
        dashboardStatus,
        newsStatus,
        dashboard,
        news,
      ];

  @override
  bool? get stringify => false;
}
