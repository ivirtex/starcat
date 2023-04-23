// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/news/bloc/bloc.dart';

class MockArticle extends Mock implements Article {}

void main() {
  group('NewsEvent', () {
    group('NewsFetchRequested', () {
      test('supports value comparisons', () {
        expect(
          const NewsFetchRequested(),
          const NewsFetchRequested(),
        );
      });

      test('props should return an empty list', () {
        expect(const NewsFetchRequested().props, <Object>[]);
      });
    });

    group('NewsSelectionChanged', () {
      test('supports value comparisons', () {
        expect(
          const NewsSelectionChanged(SelectedNews.latest),
          isNot(const NewsSelectionChanged(SelectedNews.featured)),
        );
      });
    });

    group('NewsArticleSaveRequested', () {
      test('supports value comparisons', () {
        final article1 = MockArticle();
        when(() => article1.id).thenReturn(0);

        final article2 = MockArticle();
        when(() => article2.id).thenReturn(1);

        expect(
          NewsArticleSaveRequested(article1),
          isNot(NewsArticleSaveRequested(article2)),
        );
      });
    });

    group('NewsArticleUnsaveRequested', () {
      test('supports value comparisons', () {
        final article1 = MockArticle();
        when(() => article1.id).thenReturn(0);

        final article2 = MockArticle();
        when(() => article2.id).thenReturn(1);

        expect(
          NewsArticleUnsaveRequested(article1),
          isNot(NewsArticleUnsaveRequested(article2)),
        );
      });
    });
  });
}
