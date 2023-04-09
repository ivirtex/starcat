part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();
}

class NewsFetchRequested extends NewsEvent {
  const NewsFetchRequested();

  @override
  List<Object> get props => [];
}

class NewsSelectionChanged extends NewsEvent {
  const NewsSelectionChanged(this.selection);

  final SelectedNews selection;

  @override
  List<Object> get props => [selection];
}

class NewsArticleSaveRequested extends NewsEvent {
  const NewsArticleSaveRequested(this.article);

  final Article article;

  @override
  List<Object> get props => [article];
}

class NewsArticleUnsaveRequested extends NewsEvent {
  const NewsArticleUnsaveRequested(this.article);

  final Article article;

  @override
  List<Object> get props => [article];
}
