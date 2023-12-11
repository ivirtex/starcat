part of 'news_bloc.dart';

sealed class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

final class NewsExploreFetchRequested extends NewsEvent {
  const NewsExploreFetchRequested();
}

final class NewsFetchRequested extends NewsEvent {
  const NewsFetchRequested({this.query});

  final String? query;

  @override
  List<Object?> get props => [query];
}

final class NewsSelectionChanged extends NewsEvent {
  const NewsSelectionChanged(this.selection);

  final SelectedNews selection;

  @override
  List<Object> get props => [selection];
}

final class NewsArticleSaveRequested extends NewsEvent {
  const NewsArticleSaveRequested(this.article);

  final Article article;

  @override
  List<Object> get props => [article];
}

final class NewsArticleUnsaveRequested extends NewsEvent {
  const NewsArticleUnsaveRequested(this.article);

  final Article article;

  @override
  List<Object> get props => [article];
}

final class NewsNewPageRequested extends NewsEvent {
  const NewsNewPageRequested();
}
