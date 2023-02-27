// Package imports:
import 'package:space_devs_api/space_devs_api.dart';

/// Repository for fetching data from the SpaceDevs API.
class SpaceDevsRepository {
  SpaceDevsRepository({SpaceDevsApiClient? spacexApiClient})
      : _spacexApiClient = spacexApiClient ?? SpaceDevsApiClient();

  final SpaceDevsApiClient _spacexApiClient;

  Future<Launches> getLaunches(LaunchTime launchTime) {
    return _spacexApiClient.getLaunches(launchTime);
  }
}
