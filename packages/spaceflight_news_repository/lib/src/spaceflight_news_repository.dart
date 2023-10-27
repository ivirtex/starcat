import 'package:spaceflight_news_api/spaceflight_news_api.dart' hide Article;

// Project imports:
import 'package:spaceflight_news_repository/src/models/models.dart';

class SpaceflightNewsRepository {
  SpaceflightNewsRepository({
    SpaceflightNewsApiClient? newsApi,
    String baseUrl = 'localhost:8000',
  }) : _newsApiClient = newsApi ?? SpaceflightNewsApiClient(baseUrl: baseUrl);

  final SpaceflightNewsApiClient _newsApiClient;

  Future<List<Article>> getNews({int offset = 0}) async {
    final articles = await _newsApiClient.getArticles(offset: offset);

    final processedArticles = articles.results
        .map(
          (article) => Article(
            id: article.id,
            title: article.title,
            url: article.url,
            imageUrl: article.imageUrl,
            newsSite: article.newsSite,
            summary: article.summary,
            publishedAt: DateTime.parse(article.publishedAt),
            updatedAt: DateTime.parse(article.updatedAt),
            featured: article.featured,
            launchesRef: article.launchesInfo.map((e) => e.launchId).toList(),
            eventsRef: article.events.map((e) => e.eventId).toList(),
          ),
        )
        .toList();

    return processedArticles;
  }
}
