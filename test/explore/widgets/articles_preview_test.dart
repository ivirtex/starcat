// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/news/news.dart';
import '../../sample_article.dart';
import '../../test_helpers/test_helpers.dart';

void main() {
  group('ArticlesPreview', () {
    testWidgets('returns card with message when there are no articles',
        (tester) async {
      await tester.pumpApp(const ArticlesPreview(articles: []));

      expect(find.byType(ExploreCard), findsOneWidget);
      expect(find.text('No articles'), findsOneWidget);
    });

    testWidgets('returns a list of articles', (tester) async {
      await tester.pumpApp(
        ArticlesPreview(
          articles: [sampleArticle, sampleArticle],
        ),
      );

      expect(find.byType(ArticleCard), findsNWidgets(2));
    });
  });
}
