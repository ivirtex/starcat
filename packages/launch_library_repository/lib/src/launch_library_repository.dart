// Package imports:
import 'package:launch_library_api/launch_library_api.dart';

/// Repository for fetching data from the Launch Library 2 API.
// TODO(ivirtex): decouple launches model from API layer
class LaunchLibraryRepository {
  LaunchLibraryRepository({LaunchLibraryApiClient? spacexApiClient})
      : _spacexApiClient = spacexApiClient ?? LaunchLibraryApiClient();

  final LaunchLibraryApiClient _spacexApiClient;

  Future<Launches> getLaunches(LaunchTime launchTime) {
    return _spacexApiClient.getLaunches(launchTime);
  }
}
