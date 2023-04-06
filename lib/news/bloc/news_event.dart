part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

class NewsFetchRequested extends NewsEvent {
  const NewsFetchRequested();
}

class NewsSelectionChanged extends NewsEvent {
  const NewsSelectionChanged(this.selectedNews);

  final SelectedNews selectedNews;

  @override
  List<Object> get props => [selectedNews];
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
