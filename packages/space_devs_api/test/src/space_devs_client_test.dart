// ignore_for_file: lines_longer_than_80_chars, prefer_const_literals_to_create_immutables

import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:space_devs_api/space_devs_api.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('SpaceDevsApiClient', () {
    late http.Client httpClient;
    late SpaceDevsApiClient apiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      apiClient = SpaceDevsApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(SpaceDevsApiClient(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{"results": []}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await apiClient.getLaunches(LaunchTime.previous);
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              'lldev.thespacedevs.com',
              '/2.2.0/launch/previous/',
              <String, String>{
                'ordering': 'net',
              },
            ),
          ),
        ).called(1);

        try {
          await apiClient.getLaunches(LaunchTime.upcoming);
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              'lldev.thespacedevs.com',
              '/2.2.0/launch/upcoming/',
              <String, String>{
                'ordering': 'net',
              },
            ),
          ),
        ).called(1);
      });

      test('throws LaunchesRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        await expectLater(
          apiClient.getLaunches(LaunchTime.previous),
          throwsA(isA<LaunchesRequestFailure>()),
        );
      });

      test('throws LaunchesResultFailure when results key is missing',
          () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        await expectLater(
          apiClient.getLaunches(LaunchTime.previous),
          throwsA(isA<LaunchesResultsNotFoundFailure>()),
        );
      });

      test('returns Launches on 200 response with results key', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(
          '''
{
  "count": 80,
  "next":
      "https://ll.thespacedevs.com/2.2.0/launch/upcoming/?limit=10&offset=10&search=spacex",
  "previous": null,
  "results": [
    {
      "id": "adcb0090-6f97-40c2-821f-104b5ed3e9c7",
      "url":
          "https://ll.thespacedevs.com/2.2.0/launch/adcb0090-6f97-40c2-821f-104b5ed3e9c7/",
      "slug": "falcon-9-block-5-starlink-group-4-36",
      "name": "Falcon 9 Block 5 | Starlink Group 4-36",
      "status": {
        "id": 8,
        "name": "To Be Confirmed",
        "abbrev": "TBC",
        "description":
            "Awaiting official confirmation - current date is known with some certainty."
      },
      "last_updated": "2022-10-19T02:39:03Z",
      "net": "2022-10-20T14:50:00Z",
      "window_end": "2022-10-20T14:50:00Z",
      "window_start": "2022-10-20T14:50:00Z",
      "probability": 90,
      "holdreason": "",
      "failreason": "",
      "hashtag": null,
      "launch_service_provider": {
        "id": 121,
        "url": "https://ll.thespacedevs.com/2.2.0/agencies/121/",
        "name": "SpaceX",
        "type": "Commercial"
      },
      "rocket": {
        "id": 7631,
        "configuration": {
          "id": 164,
          "url":
              "https://ll.thespacedevs.com/2.2.0/config/launcher/164/",
          "name": "Falcon 9",
          "family": "Falcon",
          "full_name": "Falcon 9 Block 5",
          "variant": "Block 5"
        }
      },
      "mission": {
        "id": 6129,
        "name": "Starlink Group 4-36",
        "description":
            "A batch of 52 satellites for Starlink mega-constellation - SpaceX's project for space-based Internet communication system.",
        "launch_designator": null,
        "type": "Communications",
        "orbit": {"id": 8, "name": "Low Earth Orbit", "abbrev": "LEO"}
      },
      "pad": {
        "id": 80,
        "url": "https://ll.thespacedevs.com/2.2.0/pad/80/",
        "agency_id": 121,
        "name": "Space Launch Complex 40",
        "info_url": null,
        "wiki_url":
            "https://en.wikipedia.org/wiki/Cape_Canaveral_Air_Force_Station_Space_Launch_Complex_40",
        "map_url":
            "http://maps.google.com/maps?q=28.56194122,-80.57735736",
        "latitude": "28.56194122",
        "longitude": "-80.57735736",
        "location": {
          "id": 12,
          "url": "https://ll.thespacedevs.com/2.2.0/location/12/",
          "name": "Cape Canaveral, FL, USA",
          "country_code": "USA",
          "map_image":
              "https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/location_12_20200803142519.jpg",
          "total_launch_count": 861,
          "total_landing_count": 24
        },
        "map_image":
            "https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/pad_80_20200803143323.jpg",
        "total_launch_count": 156,
        "orbital_launch_attempt_count": 155
      },
      "webcast_live": false,
      "image":
          "https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/falcon2520925_image_20220821074548.png",
      "infographic": null,
      "program": [],
      "orbital_launch_attempt_count": 6312,
      "location_launch_attempt_count": 862,
      "pad_launch_attempt_count": 157,
      "agency_launch_attempt_count": 200,
      "orbital_launch_attempt_count_year": 142,
      "location_launch_attempt_count_year": 32,
      "pad_launch_attempt_count_year": 24,
      "agency_launch_attempt_count_year": 48
    }
  ]
}''',
        );
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final launches = await apiClient.getLaunches(LaunchTime.previous);

        expect(
          launches,
          isA<Launches>()
              .having((w) => w.count, 'count', 80)
              .having(
                (w) => w.next,
                'next',
                'https://ll.thespacedevs.com/2.2.0/launch/upcoming/?limit=10&offset=10&search=spacex',
              )
              .having((w) => w.previous, 'previous', null)
              .having(
            (w) => w.results,
            'results',
            [
              Launch(
                id: 'adcb0090-6f97-40c2-821f-104b5ed3e9c7',
                url:
                    'https://ll.thespacedevs.com/2.2.0/launch/adcb0090-6f97-40c2-821f-104b5ed3e9c7/',
                slug: 'falcon-9-block-5-starlink-group-4-36',
                name: 'Falcon 9 Block 5 | Starlink Group 4-36',
                status: const Status(
                  id: 8,
                  name: 'To Be Confirmed',
                  abbrev: 'TBC',
                  description:
                      'Awaiting official confirmation - current date is known with some certainty.',
                ),
                lastUpdated: DateTime.parse('2022-10-19T02:39:03Z'),
                net: DateTime.parse('2022-10-20T14:50:00Z'),
                windowEnd: DateTime.parse('2022-10-20T14:50:00Z'),
                windowStart: DateTime.parse('2022-10-20T14:50:00Z'),
                probability: 90,
                holdreason: '',
                failreason: '',
                launchServiceProvider: const LaunchServiceProvider(
                  id: 121,
                  url: 'https://ll.thespacedevs.com/2.2.0/agencies/121/',
                  name: 'SpaceX',
                  type: 'Commercial',
                ),
                rocket: const Rocket(
                  id: 7631,
                  configuration: Configuration(
                    id: 164,
                    url:
                        'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
                    name: 'Falcon 9',
                    family: 'Falcon',
                    fullName: 'Falcon 9 Block 5',
                    variant: 'Block 5',
                  ),
                ),
                mission: const Mission(
                  id: 6129,
                  name: 'Starlink Group 4-36',
                  description:
                      "A batch of 52 satellites for Starlink mega-constellation - SpaceX's project for space-based Internet communication system.",
                  type: 'Communications',
                  orbit: Status(
                    id: 8,
                    name: 'Low Earth Orbit',
                    abbrev: 'LEO',
                  ),
                ),
                pad: const Pad(
                  id: 80,
                  url: 'https://ll.thespacedevs.com/2.2.0/pad/80/',
                  agencyId: 121,
                  name: 'Space Launch Complex 40',
                  wikiUrl:
                      'https://en.wikipedia.org/wiki/Cape_Canaveral_Air_Force_Station_Space_Launch_Complex_40',
                  mapUrl:
                      'http://maps.google.com/maps?q=28.56194122,-80.57735736',
                  latitude: '28.56194122',
                  longitude: '-80.57735736',
                  location: Location(
                    id: 12,
                    url: 'https://ll.thespacedevs.com/2.2.0/location/12/',
                    name: 'Cape Canaveral, FL, USA',
                    countryCode: 'USA',
                    mapImage:
                        'https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/location_12_20200803142519.jpg',
                    totalLaunchCount: 861,
                    totalLandingCount: 24,
                  ),
                  mapImage:
                      'https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/pad_80_20200803143323.jpg',
                  totalLaunchCount: 156,
                  orbitalLaunchAttemptCount: 155,
                ),
                webcastLive: false,
                image:
                    'https://spacelaunchnow-prod-east.nyc3.digitaloceanspaces.com/media/launch_images/falcon2520925_image_20220821074548.png',
                program: [],
                orbitalLaunchAttemptCount: 6312,
                locationLaunchAttemptCount: 862,
                padLaunchAttemptCount: 157,
                agencyLaunchAttemptCount: 200,
                orbitalLaunchAttemptCountYear: 142,
                locationLaunchAttemptCountYear: 32,
                padLaunchAttemptCountYear: 24,
                agencyLaunchAttemptCountYear: 48,
              ),
            ],
          ),
        );
      });
    });
  });
}
