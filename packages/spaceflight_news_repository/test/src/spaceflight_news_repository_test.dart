// ignore_for_file: prefer_const_constructors

// Package imports:
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

import 'package:spaceflight_news_api/spaceflight_news_api.dart'
    as spaceflight_api;

class MockSpaceflightNewsApiClient extends Mock
    implements spaceflight_api.SpaceflightNewsApiClient {}

class MockArticles extends Mock implements spaceflight_api.Articles {}

final exampleArticle = Article(
  id: 51231241,
  title: 'SpaceX to launch 60 Starlink satellites on Falcon 9',
  url:
      'https://spaceflightnow.com/2020/10/30/spacex-to-launch-60-starlink-satellites-on-falcon-9/',
  imageUrl:
      'https://spaceflightnow.com/wp-content/uploads/2019/12/starlink-1-1024x576.jpg',
  newsSite: 'Spaceflight Now',
  summary:
      'SpaceX is targeting 10:30 p.m. EDT Tuesday, Oct. 27, for liftoff of a Falcon 9 rocket from Cape Canaveral Air Force Station in Florida with 60 Starlink broadband satellites.',
  publishedAt: DateTime(2023),
  updatedAt: DateTime(2023),
  featured: false,
  launchesRef: const [],
  eventsRef: const [],
);

void main() {
  group('SpaceflightNewsRepository', () {
    late spaceflight_api.SpaceflightNewsApiClient spaceflightNewsApiClient;
    late SpaceflightNewsRepository spaceflightNewsRepository;

    setUp(() {
      spaceflightNewsApiClient = MockSpaceflightNewsApiClient();
      spaceflightNewsRepository =
          SpaceflightNewsRepository(newsApi: spaceflightNewsApiClient);
    });

    group('constructor', () {
      test('instantiates internal SpaceflightNewsRepository when not injected',
          () {
        expect(SpaceflightNewsRepository(), isNotNull);
      });
    });

    group('getNews', () {
      test('calls getArticles', () async {
        try {
          await spaceflightNewsRepository.getNews();
        } catch (_) {}

        verify(() => spaceflightNewsApiClient.getArticles()).called(1);
      });

      test('returns correct News', () async {
        final articles = MockArticles();

        when(() => articles.count).thenReturn(1);
        when(() => articles.results).thenReturn([
          spaceflight_api.Article(
            id: exampleArticle.id,
            title: exampleArticle.title,
            url: exampleArticle.url,
            imageUrl: exampleArticle.imageUrl,
            newsSite: exampleArticle.newsSite,
            summary: exampleArticle.summary,
            publishedAt: exampleArticle.publishedAt.toIso8601String(),
            updatedAt: exampleArticle.updatedAt.toIso8601String(),
            featured: exampleArticle.featured,
            launchesInfo: const [],
            events: const [],
          )
        ]);

        when(() => spaceflightNewsApiClient.getArticles())
            .thenAnswer((_) async => articles);

        expect(
          await spaceflightNewsRepository.getNews(),
          News(articles: [exampleArticle]),
        );
      });

      test('throws when getArticles fails', () async {
        when(() => spaceflightNewsApiClient.getArticles())
            .thenThrow(spaceflight_api.ArticlesRequestFailure());

        expect(
          () => spaceflightNewsRepository.getNews(),
          throwsA(isA<spaceflight_api.ArticlesRequestFailure>()),
        );
      });
    });
  });
}
