part of 'starship_dashboard_bloc.dart';

sealed class StarshipDashboardEvent extends Equatable {
  const StarshipDashboardEvent();

  @override
  List<Object> get props => [];
}

class StarshipDashboardRequested extends StarshipDashboardEvent {
  const StarshipDashboardRequested();
}
