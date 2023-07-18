// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/news/news.dart';
import '../../sample_article.dart';
import '../../test_helpers/pump_app.dart';

class MockNewsBloc extends MockBloc<NewsEvent, NewsState> implements NewsBloc {}

void main() {
  group('NewsPage', () {
    late NewsBloc newsBloc;

    setUp(() {
      newsBloc = MockNewsBloc();
      when(() => newsBloc.state).thenReturn(const NewsState());
    });

    testWidgets('renders correctly on Android', (WidgetTester tester) async {
      await tester.pumpApp(const NewsPage());

      await tester.pumpAndSettle();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets(
        'renders latest articles when state.selection is SelectedNews.latest',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        NewsState(news: News(latestArticles: [sampleArticle])),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      final articleList = tester.widget<ArticleList>(
        find.byType(ArticleList),
      );
      expect(articleList.articles, [sampleArticle]);
    });

    testWidgets(
        'renders popular articles when state.selection is SelectedNews.popular',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        NewsState(
          news: News(popularArticles: [sampleArticle]),
          selection: SelectedNews.featured,
        ),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      final articleList = tester.widget<ArticleList>(
        find.byType(ArticleList),
      );
      expect(articleList.articles, [sampleArticle]);
    });

    testWidgets(
        'renders saved articles when state.selection is SelectedNews.saved',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        NewsState(
          news: News(savedArticles: [sampleArticle]),
          selection: SelectedNews.saved,
        ),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      final articleList = tester.widget<ArticleList>(
        find.byType(ArticleList),
      );
      expect(articleList.articles, [sampleArticle]);
    });

    testWidgets('renders no articles message when no articles are found',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        const NewsState(),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.text(kNoLatestArticlesText), findsOneWidget);
    });

    testWidgets(
        'renders no popular articles message when no popular articles are found',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        const NewsState(
          selection: SelectedNews.featured,
        ),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.text(kNoFeaturedArticlesText), findsOneWidget);
    });

    testWidgets(
        'renders no saved articles message when no saved articles are found',
        (WidgetTester tester) async {
      when(() => newsBloc.state).thenReturn(
        const NewsState(
          selection: SelectedNews.saved,
        ),
      );

      await tester.pumpApp(
        const NewsPage(),
        newsBloc: newsBloc,
      );

      await tester.pump(const Duration(seconds: 1));

      expect(find.text(kNoSavedArticlesText), findsOneWidget);
    });
  });
}
