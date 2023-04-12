part of 'news_bloc.dart';

enum NewsStatus { initial, loading, success, failure }

enum SelectedNews { latest, popular, saved }

@JsonSerializable()
class NewsState extends Equatable {
  const NewsState({
    this.status = NewsStatus.initial,
    this.selection = SelectedNews.latest,
    News? news,
  }) : news = news ?? const News();

  factory NewsState.fromJson(Map<String, dynamic> json) =>
      _$NewsStateFromJson(json);

  final NewsStatus status;
  final SelectedNews selection;
  final News news;

  Map<String, dynamic> toJson() => _$NewsStateToJson(this);

  NewsState copyWith({
    NewsStatus? status,
    SelectedNews? selection,
    News? news,
  }) {
    return NewsState(
      status: status ?? this.status,
      selection: selection ?? this.selection,
      news: news ?? this.news,
    );
  }

  @override
  List<Object> get props => [
        status,
        selection,
        news,
      ];
}
