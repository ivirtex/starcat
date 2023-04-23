// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/news/news.dart';
import '../../test_helpers/test_helpers.dart';

class MockSpaceflightRepository extends Mock
    implements SpaceflightNewsRepository {}

class MockArticle extends Mock implements Article {}

void main() {
  group('NewsBloc', () {
    late SpaceflightNewsRepository spaceflightNewsRepository;
    late NewsBloc newsBloc;
    late Article article;

    setUp(() {
      initHydratedStorage();

      spaceflightNewsRepository = MockSpaceflightRepository();
      article = MockArticle();

      when(() => article.featured).thenReturn(false);
      when(() => article.toJson()).thenReturn({});

      when(() => spaceflightNewsRepository.getNews()).thenAnswer(
        (_) async => [article],
      );

      newsBloc = NewsBloc(spaceflightNewsRepository);
    });

    test('initial state is correct', () {
      expect(newsBloc.state, const NewsState());
    });

    blocTest<NewsBloc, NewsState>(
      'calls getNews',
      build: () => newsBloc,
      act: (bloc) => bloc.add(const NewsFetchRequested()),
      verify: (_) {
        verify(() => spaceflightNewsRepository.getNews()).called(1);
      },
    );

    blocTest<NewsBloc, NewsState>(
      'emits [loading, success] when NewsFetchRequested is added',
      build: () => newsBloc,
      act: (bloc) => bloc.add(const NewsFetchRequested()),
      expect: () => [
        const NewsState(status: NewsStatus.loading),
        NewsState(
          status: NewsStatus.success,
          news: News(latestArticles: [article]),
        ),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [loading, failure] when NewsFetchRequested is added and getNews throws',
      build: () {
        when(() => spaceflightNewsRepository.getNews()).thenThrow(Exception());

        return newsBloc;
      },
      act: (bloc) => bloc.add(const NewsFetchRequested()),
      expect: () => [
        const NewsState(status: NewsStatus.loading),
        const NewsState(status: NewsStatus.failure),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [loading, success] when NewsFetchRequested is added and getNews returns articles with featured set to true',
      build: () {
        when(() => article.featured).thenReturn(true);

        return newsBloc;
      },
      act: (bloc) => bloc.add(const NewsFetchRequested()),
      expect: () => [
        const NewsState(status: NewsStatus.loading),
        NewsState(
          status: NewsStatus.success,
          news: News(
            latestArticles: [article],
            popularArticles: [article],
          ),
        ),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [selection] when NewsSelectionChanged is added',
      build: () => newsBloc,
      act: (bloc) =>
          bloc.add(const NewsSelectionChanged(SelectedNews.featured)),
      expect: () => [
        const NewsState(selection: SelectedNews.featured),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [selection] when NewsSelectionChanged is added',
      build: () => newsBloc,
      act: (bloc) => bloc.add(const NewsSelectionChanged(SelectedNews.saved)),
      expect: () => [
        const NewsState(selection: SelectedNews.saved),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [savedArticles] when NewsArticleSaveRequested is added and article is already saved',
      build: () => newsBloc,
      act: (bloc) {
        bloc
          ..add(NewsArticleSaveRequested(article))
          ..add(NewsArticleSaveRequested(article));
      },
      expect: () => [
        NewsState(
          news: News(savedArticles: [article]),
        ),
      ],
    );

    blocTest<NewsBloc, NewsState>(
      'emits [savedArticles] when NewsArticleUnsaveRequested is added',
      build: () {
        when(() => article.id).thenReturn(1);

        return newsBloc;
      },
      act: (bloc) {
        bloc
          ..add(NewsArticleSaveRequested(article))
          ..add(NewsArticleUnsaveRequested(article));
      },
      expect: () => [
        NewsState(
          news: News(savedArticles: [article]),
        ),
        const NewsState(
          news: News(),
        ),
      ],
    );
  });
}
