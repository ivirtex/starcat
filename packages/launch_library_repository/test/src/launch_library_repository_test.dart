// ignore_for_file: lines_longer_than_80_chars

// Package imports:
import 'package:launch_library_api/api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

class MockLaunchApi extends Mock implements LaunchApi {}

void main() {
  group('LaunchLibraryRepository', () {
    late MockLaunchApi launchApiClient;
    late LaunchLibraryRepository launchLibraryRepository;

    setUp(() {
      launchApiClient = MockLaunchApi();
      launchLibraryRepository = LaunchLibraryRepository(
        launchApiClient: launchApiClient,
      );
    });

    group('constructor', () {
      test('instantiates internal LaunchLibraryRepository when not injected',
          () {
        expect(LaunchLibraryRepository(), isNotNull);
      });
    });

    group('getLaunches', () {
      test('calls getLaunches with correct time option', () async {
        try {
          await launchLibraryRepository.getLaunches();
        } catch (_) {}

        verify(() => launchApiClient.launchUpcomingList()).called(1);
      });

      test('returns correct Launches', () async {
        final launches = PaginatedLaunchSerializerCommonList(results: []);

        when(() => launchApiClient.launchUpcomingList())
            .thenAnswer((_) async => launches);

        expect(
          await launchLibraryRepository.getLaunches(),
          <LaunchSerializerCommon>[],
        );
      });

      test('throws when getLaunches fails', () async {
        when(() => launchApiClient.launchUpcomingList())
            .thenThrow(ApiException(404, ''));

        expect(
          () => launchLibraryRepository.getLaunches(),
          throwsA(isA<ApiException>()),
        );
      });
    });
  });
}
