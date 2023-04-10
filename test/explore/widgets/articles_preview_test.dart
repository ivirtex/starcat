// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/news/news.dart';
import '../../sample_article.dart';
import '../../test_helpers/test_helpers.dart';

void main() {
  group('ArticlesPreview', () {
    testWidgets('returns SizedBox.shrink() when there are no articles',
        (tester) async {
      await tester.pumpWidget(const ArticlesPreview(articles: []));

      expect(find.byType(SizedBox), findsOneWidget);
    });

    testWidgets('returns a list of articles', (tester) async {
      await tester.pumpApp(
        ArticlesPreview(
          articles: [sampleArticle, sampleArticle],
        ),
      );

      expect(find.byType(ArticleCard), findsNWidgets(2));
    });

    testWidgets('View more button works', (tester) async {
      await tester.pumpAppWithRouter(
        ArticlesPreview(
          articles: [sampleArticle, sampleArticle],
        ),
      );

      await tester.tap(find.byType(FilledButton));
      await tester.pumpAndSettle();

      expect(find.byType(NewsPage), findsOneWidget);
    });
  });
}
