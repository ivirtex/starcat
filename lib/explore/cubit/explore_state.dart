part of 'explore_cubit.dart';

enum ExploreStatus { initial, loading, success, failure }

// TODO(ivirtex): decouple news and use this cubit for launches only
class ExploreState extends Equatable {
  const ExploreState({
    this.status = ExploreStatus.initial,
    this.launches,
    this.news,
  });

  final ExploreStatus status;
  final List<Launch>? launches;
  final News? news;

  @override
  List<Object?> get props => [status, launches, news];

  ExploreState copyWith({
    ExploreStatus? status,
    List<Launch>? launches,
    News? news,
  }) {
    return ExploreState(
      status: status ?? this.status,
      launches: launches ?? this.launches,
      news: news ?? this.news,
    );
  }
}
