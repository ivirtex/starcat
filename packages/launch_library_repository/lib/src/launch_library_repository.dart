// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:launch_library_api/api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

/// Repository for fetching data from the Launch Library 2 API.
class LaunchLibraryRepository {
  LaunchLibraryRepository({
    api.LaunchApi? launchApiClient,
    api.DashboardApi? dashboardApiClient,
    String baseUrlForApi = 'localhost:8000',
  })  : _launchApiClient = launchApiClient ??
            api.LaunchApi(api.ApiClient(basePath: baseUrlForApi)),
        _dashboardApiClient = dashboardApiClient ??
            api.DashboardApi(api.ApiClient(basePath: baseUrlForApi));

  final api.LaunchApi _launchApiClient;
  final api.DashboardApi _dashboardApiClient;

  Future<List<Launch>> getUpcomingLaunches() async {
    api.PaginatedLaunchSerializerCommonList? apiResponse;

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
    api.PaginatedLaunchSerializerCommonList? apiResponse;

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
    api.LaunchDetailed? apiResponse;

    try {
      apiResponse = await _launchApiClient.launchRetrieve(id);
    } catch (e) {
      log('LaunchLibraryRepository.getLaunchDetails: $e');

      rethrow;
    }

    return Launch.fromApiDetailed(apiResponse!);
  }

  Future<List<Launch>> getNextPageUpcomingLaunches({
    required int offset,
  }) async {
    api.PaginatedLaunchSerializerCommonList? apiResponse;

    try {
      apiResponse =
          await _launchApiClient.launchUpcomingList(offset: offset, limit: 10);
    } catch (e) {
      log('LaunchLibraryRepository.getNextPageUpcomingLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse!.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }

  Future<List<Launch>> getNextPagePastLaunches({
    required int offset,
  }) async {
    api.PaginatedLaunchSerializerCommonList? apiResponse;

    try {
      apiResponse =
          await _launchApiClient.launchPreviousList(offset: offset, limit: 10);
    } catch (e) {
      log('LaunchLibraryRepository.getNextPagePastLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse!.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }

  Future<StarshipDashboard> getStarshipDashboard() async {
    api.StarshipDashboard? apiResponse;

    try {
      apiResponse = await _dashboardApiClient.dashboardStarshipRetrieve();
    } catch (e) {
      log('LaunchLibraryRepository.getStarshipDashboard: $e');

      rethrow;
    }

    return StarshipDashboard.fromApi(apiResponse!);
  }
}
