// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:launch_library_api/api.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

/// Repository for fetching data from the Launch Library 2 API.
class LaunchLibraryRepository {
  LaunchLibraryRepository({
    LaunchApi? launchApiClient,
    String baseUrlForApi = 'localhost:8000',
  }) : _launchApiClient =
            launchApiClient ?? LaunchApi(ApiClient(basePath: baseUrlForApi));

  final LaunchApi _launchApiClient;

  Future<List<Launch>> getUpcomingLaunches() async {
    PaginatedLaunchSerializerCommonList? apiResponse;

    try {
      apiResponse =
          await _launchApiClient.launchUpcomingList(hideRecentPrevious: true);
    } catch (e) {
      log('LaunchLibraryRepository.getLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse!.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }

  Future<List<Launch>> getPastLaunches() async {
    PaginatedLaunchSerializerCommonList? apiResponse;

    try {
      apiResponse = await _launchApiClient.launchPreviousList();
    } catch (e) {
      log('LaunchLibraryRepository.getLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse!.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }

  Future<Launch> getLaunchDetails(String id) async {
    LaunchDetailed? apiResponse;

    try {
      apiResponse = await _launchApiClient.launchRetrieve(id);
    } catch (e) {
      log('LaunchLibraryRepository.getLaunchDetails: $e');

      rethrow;
    }

    return Launch.fromApiDetailed(apiResponse!);
  }
}
