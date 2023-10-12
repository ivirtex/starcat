// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:launch_library_api/launch_library_api.dart';

/// Repository for fetching data from the Launch Library 2 API.
class LaunchLibraryRepository {
  LaunchLibraryRepository({
    LaunchLibraryApiClient? launchLibraryApiClient,
    String baseApiUrl = 'localhost:8080',
  }) : _launchLibraryApiClient = launchLibraryApiClient ??
            LaunchLibraryApiClient(baseUrl: baseApiUrl);

  final LaunchLibraryApiClient _launchLibraryApiClient;

  Future<List<Launch>> getUpcomingLaunches() async {
    Launches apiResponse;

    try {
      apiResponse =
          await _launchLibraryApiClient.getLaunches(LaunchTime.upcoming);
    } catch (e) {
      log('LaunchLibraryRepository.getUpcomingLaunches: $e');

      rethrow;
    }

    return apiResponse.results;
  }

  Future<List<Launch>> getNextPageUpcomingLaunches({int offset = 0}) async {
    Launches apiResponse;

    try {
      apiResponse = await _launchLibraryApiClient
          .getLaunches(LaunchTime.upcoming, offset: offset);
    } catch (e) {
      log('LaunchLibraryRepository.getUpcomingLaunches: $e');

      rethrow;
    }

    return apiResponse.results;
  }

  Future<List<Launch>> getPastLaunches() async {
    Launches apiResponse;

    try {
      apiResponse =
          await _launchLibraryApiClient.getLaunches(LaunchTime.previous);
    } catch (e) {
      log('LaunchLibraryRepository.getPreviousLaunches: $e');

      rethrow;
    }

    return apiResponse.results;
  }

  Future<List<Launch>> getNextPagePastLaunches({int offset = 0}) async {
    Launches apiResponse;

    try {
      apiResponse = await _launchLibraryApiClient
          .getLaunches(LaunchTime.previous, offset: offset);
    } catch (e) {
      log('LaunchLibraryRepository.getPreviousLaunches: $e');

      rethrow;
    }

    return apiResponse.results;
  }

  Future<StarshipDashboard> getStarshipDashboard() async {
    StarshipDashboard apiResponse;

    try {
      apiResponse = await _launchLibraryApiClient.getStarshipDashboard();
    } catch (e) {
      log('LaunchLibraryRepository.getStarshipDashboard: $e');

      rethrow;
    }

    return apiResponse;
  }
}
