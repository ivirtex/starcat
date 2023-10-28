part of 'starship_dashboard_bloc.dart';

sealed class StarshipDashboardEvent extends Equatable {
  const StarshipDashboardEvent();

  @override
  List<Object> get props => [];
}

final class StarshipDashboardRequested extends StarshipDashboardEvent {
  const StarshipDashboardRequested();
}

final class StarshipNewsRequested extends StarshipDashboardEvent {
  const StarshipNewsRequested();
}
