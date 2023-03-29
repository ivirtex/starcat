import 'package:spaceflight_news_api/spaceflight_news_api.dart' hide Article;
import 'package:spaceflight_news_repository/src/models/models.dart';

class SpaceflightNewsRepository {
  SpaceflightNewsRepository({SpaceflightNewsApiClient? newsApi})
      : _newsApiClient = newsApi ?? SpaceflightNewsApiClient();

  final SpaceflightNewsApiClient _newsApiClient;

  Future<News> getNews() async {
    final articles = await _newsApiClient.getArticles();

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

    return News(articles: processedArticles);
  }
}
