part of 'starship_dashboard_bloc.dart';

enum StarshipDashboardStatus { initial, loading, success, failure }

@JsonSerializable()
final class StarshipDashboardState extends Equatable {
  const StarshipDashboardState({
    this.status = StarshipDashboardStatus.initial,
    this.dashboard,
  });

  factory StarshipDashboardState.fromJson(Map<String, dynamic> json) =>
      _$StarshipDashboardStateFromJson(json);

  final StarshipDashboardStatus status;
  final StarshipDashboard? dashboard;

  List<Launch> get allLaunches => [
        ...dashboard?.upcoming?.launches ?? [],
        ...dashboard?.previous?.launches ?? [],
      ];

  Map<String, dynamic> toJson() => _$StarshipDashboardStateToJson(this);

  StarshipDashboardState copyWith({
    StarshipDashboardStatus? status,
    StarshipDashboard? dashboard,
  }) {
    return StarshipDashboardState(
      status: status ?? this.status,
      dashboard: dashboard ?? this.dashboard,
    );
  }

  @override
  List<Object?> get props => [
        status,
        dashboard,
      ];
}
