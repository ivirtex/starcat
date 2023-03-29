// Package imports:
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:spaceflight_news_api/spaceflight_news_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

const String sampleResponse = '''
{
  "count": 16128,
  "next": "https://api.spaceflightnewsapi.net/v4/articles/?limit=10&offset=10",
  "previous": null,
  "results": [
    {
      "id": 18798,
      "title": "NASA Receives Top Honor of Best Place to Work in Federal Government",
      "url": "http://www.nasa.gov/press-release/nasa-receives-top-honor-of-best-place-to-work-in-federal-government",
      "image_url": "https://www.nasa.gov/sites/default/files/thumbnails/image/52692932279_6606876271_o.png?itok=7S34zJEt",
      "news_site": "NASA",
      "summary": "NASA is taking home the honor of the Best Place to Work in the Federal Government among large agencies for 11 years in a row, as ranked by the Partnership for Public Service.",
      "published_at": "2023-03-29T15:45:00+02:00",
      "updated_at": "2023-03-29T15:45:55.618000+02:00",
      "featured": false,
      "launches": [],
      "events": []
    },
    {
      "id": 18799,
      "title": "Space infrastructure company Redwire trims quarterly losses, builds order backlog",
      "url": "https://www.cnbc.com/2023/03/29/redwire-rdw-q4-earnings.html",
      "image_url": "https://image.cnbcfm.com/api/v1/image/106938671-1631116931701Redwire-OB-Photo-20210908-DN-345-PRESS-4.jpg",
      "news_site": "CNBC",
      "summary": "Space infrastructure company Redwire reported fourth-quarter results on Wednesday, saying it further trimmed its losses and built its order backlog.",
      "published_at": "2023-03-29T15:42:40+02:00",
      "updated_at": "2023-03-29T15:46:16.588000+02:00",
      "featured": false,
      "launches": [],
      "events": []
    },
    {
      "id": 18796,
      "title": "H3 failure could delay Japanese science missions",
      "url": "https://spacenews.com/h3-failure-could-delay-japanese-science-missions/",
      "image_url": "https://i0.wp.com/spacenews.com/wp-content/uploads/2023/03/h3-firstlaunch-1.jpg",
      "news_site": "SpaceNews",
      "summary": "The failure of Japan’s H3 rocket on its inaugural flight in March could delay several science missions, including two scheduled to launch on another rocket.",
      "published_at": "2023-03-29T11:53:19+02:00",
      "updated_at": "2023-03-29T14:10:50.035000+02:00",
      "featured": false,
      "launches": [
        {
          "launch_id": "13439df6-e99b-42b3-ab82-c0a8a2afe4d1",
          "provider": "Launch Library 2"
        }
      ],
      "events": []
    },
    {
      "id": 18794,
      "title": "Ovzon gets deadline extension for debut satellite",
      "url": "https://spacenews.com/ovzon-gets-deadline-extension-for-debut-satellite/",
      "image_url": "https://i0.wp.com/spacenews.com/wp-content/uploads/2020/10/Ovzon-3-reduced2.jpg",
      "news_site": "SpaceNews",
      "summary": "Mobile satcom services provider Ovzon said March 28 it has secured a deadline extension enabling it to keep priority spectrum rights for its first broadband satellite, as long as it launches early enough in a July-September window SpaceX has set for the mission.",
      "published_at": "2023-03-29T01:43:31+02:00",
      "updated_at": "2023-03-29T01:45:16.659000+02:00",
      "featured": false,
      "launches": [],
      "events": []
    }
  ]
}
''';

const String emptyResponse = '''
{
  "count": 0,
  "next": null,
  "previous": null,
  "results": []
}
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
        when(() => response.body).thenReturn(sampleResponse);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        await spaceflightNewsApi.getArticles();

        verify(
          () => httpClient.get(
            Uri.https(
              SpaceflightNewsApiClient.baseUrl,
              '/v4/articles',
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
          throwsA(isA<ArticlesRequestFailure>()),
        );
      });

      test('throws NewsResultsNotFoundFailure on empty response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(emptyResponse);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        expect(
          spaceflightNewsApi.getArticles(),
          throwsA(isA<ArticlesResultsNotFoundFailure>()),
        );
      });

      test('returns list of articles on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(sampleResponse);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final news = await spaceflightNewsApi.getArticles();

        expect(news, isA<Articles>());
      });
    });
  });
}
