part of 'news_bloc.dart';

enum NewsStatus { initial, loading, success, failure, noResults }

enum SelectedNews { latest, featured, saved }

@JsonSerializable()
class NewsState extends Equatable {
  const NewsState({
    this.status = NewsStatus.initial,
    this.selection = SelectedNews.latest,
    this.allLatestArticles = const [],
    this.news = const News(),
    this.currentOffsetOfArticles = 0,
    this.query = '',
  });

  factory NewsState.fromJson(Map<String, dynamic> json) =>
      _$NewsStateFromJson(json);

  final NewsStatus status;
  final SelectedNews selection;

  /// Contains all the latest articles
  /// fetched from the API for the explore page.
  final List<Article> allLatestArticles;

  final News news;
  final int currentOffsetOfArticles;
  final String query;

  Map<String, dynamic> toJson() => _$NewsStateToJson(this);

  NewsState copyWith({
    NewsStatus? status,
    SelectedNews? selection,
    List<Article>? allLatestArticles,
    News? news,
    int? currentOffsetOfArticles,
    String? query,
  }) {
    return NewsState(
      status: status ?? this.status,
      selection: selection ?? this.selection,
      allLatestArticles: allLatestArticles ?? this.allLatestArticles,
      news: news ?? this.news,
      currentOffsetOfArticles:
          currentOffsetOfArticles ?? this.currentOffsetOfArticles,
      query: query ?? this.query,
    );
  }

  @override
  bool? get stringify => false;

  @override
  List<Object?> get props => [
        status,
        selection,
        allLatestArticles,
        news,
        currentOffsetOfArticles,
        query,
      ];
}
