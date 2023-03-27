// ignore_for_file: prefer_const_constructors
import 'dart:typed_data';

import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:spaceflight_news_api/spaceflight_news_api.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

const String sampleResponse = '''
[
  {
    "id": 18397,
    "title": "Industry group to examine potential security threats in cislunar space",
    "url": "https://spacenews.com/industry-group-to-examine-potential-security-threats-in-cislunar-space/",
    "imageUrl": "https://i0.wp.com/spacenews.com/wp-content/uploads/2023/02/Win17_15021_00_N14b.jpg",
    "newsSite": "SpaceNews",
    "summary": "The Space Information Sharing and Analysis Center, or Space ISAC, is forming a group to focus on the security threats the United States could face in cislunar space outside Earth orbit.",
    "publishedAt": "2023-02-28T18:42:56.000Z",
    "updatedAt": "2023-02-28T18:45:17.309Z",
    "featured": false,
    "launches": [
      
    ],
    "events": [
      
    ]
  },
  {
    "id": 18398,
    "title": "iSpace On Track For First Lunar Landing, Preparing For Next Missions",
    "url": "https://tlpnetwork.com/news/2023/02/ispace-on-track-for-first-lunar-landing-preparing-for-next-missions",
    "imageUrl": "https://cdn.tlpnetwork.com/articles/2023/1677607284754.jpg",
    "newsSite": "The Launch Pad",
    "summary": "Japanese lunar lander company ispace confirms its first mission is on track to attempt a lunar landing in two months as work continues on next two missions.",
    "publishedAt": "2023-02-28T18:37:00.000Z",
    "updatedAt": "2023-02-28T19:10:19.793Z",
    "featured": false,
    "launches": [
      {
        "id": "2306e0bc-e1a3-4a4a-9285-e1a94073655e",
        "provider": "Launch Library 2"
      }
    ],
    "events": [
      {
        "id": 730,
        "provider": "Launch Library 2"
      }
    ]
  }
]
''';

void main() {
  group('SpaceflightNewsApiClient', () {
    late http.Client httpClient;
    late SpaceflightNewsApiClient spaceflightNewsApi;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      spaceflightNewsApi = SpaceflightNewsApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('creates own httpClient instance', () {
        expect(SpaceflightNewsApiClient(), isNotNull);
      });
    });

    group('getNews', () {
      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.bodyBytes)
            .thenReturn(Uint8List.fromList('[]'.codeUnits));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await spaceflightNewsApi.getArticles();
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              SpaceflightNewsApiClient.baseUrl,
              '/v3/articles',
            ),
          ),
        ).called(1);
      });

      test('throws NewsRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        expect(
          spaceflightNewsApi.getArticles(),
          throwsA(isA<NewsRequestFailure>()),
        );
      });

      test('throws NewsResultsNotFoundFailure on empty response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.bodyBytes)
            .thenReturn(Uint8List.fromList('[]'.codeUnits));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        expect(
          spaceflightNewsApi.getArticles(),
          throwsA(isA<NewsResultsNotFoundFailure>()),
        );
      });

      test('returns list of articles on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.bodyBytes)
            .thenReturn(Uint8List.fromList(sampleResponse.codeUnits));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final news = await spaceflightNewsApi.getArticles();

        expect(news, isA<List<Article>>());
      });
    });
  });
}
