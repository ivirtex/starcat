part of 'news_bloc.dart';

sealed class NewsEvent extends Equatable {
  const NewsEvent();
}

final class NewsFetchRequested extends NewsEvent {
  const NewsFetchRequested();

  @override
  List<Object> get props => [];
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
