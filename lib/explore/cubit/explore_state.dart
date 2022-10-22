part of 'explore_cubit.dart';

enum ExploreStatus { initial, loading, success, failure }

class ExploreState extends Equatable {
  const ExploreState({
    this.status = ExploreStatus.initial,
    this.launches,
  });

  final ExploreStatus status;
  final Launches? launches;

  @override
  List<Object?> get props => [status, launches];

  ExploreState copyWith({
    ExploreStatus? status,
    Launches? launches,
  }) {
    return ExploreState(
      status: status ?? this.status,
      launches: launches ?? this.launches,
    );
  }
}
