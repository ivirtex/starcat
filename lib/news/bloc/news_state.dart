part of 'news_bloc.dart';

enum NewsStatus { initial, loading, success, failure }

enum SelectedNews { latest, featured, saved }

@JsonSerializable()
class NewsState extends Equatable {
  const NewsState({
    this.status = NewsStatus.initial,
    this.selection = SelectedNews.latest,
    this.news = const News(),
    this.currentOffsetOfArticles = 0,
  });

  factory NewsState.fromJson(Map<String, dynamic> json) =>
      _$NewsStateFromJson(json);

  final NewsStatus status;
  final SelectedNews selection;
  final News news;
  final int currentOffsetOfArticles;

  Map<String, dynamic> toJson() => _$NewsStateToJson(this);

  NewsState copyWith({
    NewsStatus? status,
    SelectedNews? selection,
    News? news,
    int? currentOffsetOfArticles,
  }) {
    return NewsState(
      status: status ?? this.status,
      selection: selection ?? this.selection,
      news: news ?? this.news,
      currentOffsetOfArticles:
          currentOffsetOfArticles ?? this.currentOffsetOfArticles,
    );
  }

  @override
  bool? get stringify => false;

  @override
  List<Object> get props => [
        status,
        selection,
        news,
        currentOffsetOfArticles,
      ];
}
