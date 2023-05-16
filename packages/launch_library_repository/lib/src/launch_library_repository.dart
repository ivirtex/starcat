// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:launch_library_api/api.dart';

// Project imports:
import 'package:launch_library_repository/launch_library_repository.dart';

/// Repository for fetching data from the Launch Library 2 API.
class LaunchLibraryRepository {
  LaunchLibraryRepository({LaunchApi? launchApiClient})
      : _launchApiClient = launchApiClient ?? LaunchApi();

  final LaunchApi _launchApiClient;

  Future<List<Launch>> getLaunches() async {
    PaginatedLaunchSerializerCommonList? apiResponse;

    try {
      apiResponse = await _launchApiClient.launchUpcomingList();
    } catch (e) {
      log('LaunchLibraryRepository.getLaunches: $e');

      rethrow;
    }

    final apiLaunches = apiResponse!.results;

    return apiLaunches.map(Launch.fromApi).toList();
  }
}
