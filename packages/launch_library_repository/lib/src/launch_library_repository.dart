// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:launch_library_api/launch_library_api.dart' as api;

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

/// Repository for fetching data from the Launch Library 2 API.
class LaunchLibraryRepository {
  LaunchLibraryRepository({api.LaunchLibraryApiClient? launchLibraryApiClient})
      : _launchLibraryApiClient =
            launchLibraryApiClient ?? api.LaunchLibraryApiClient();

  final api.LaunchLibraryApiClient _launchLibraryApiClient;

  Future<List<Launch>> getLaunches(api.LaunchTime launchTime) async {
    api.Launches apiResponse;

    try {
      apiResponse = await _launchLibraryApiClient.getLaunches(launchTime);
    } catch (e) {
      log('LaunchLibraryRepository.getLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }
}
