import 'package:spacex_api/spacex_api.dart';

/// Repository for fetching SpaceX info data.
class SpacexInfoRepository {
  SpacexInfoRepository({SpaceXApiClient? spacexApiClient})
      : _spacexApiClient = spacexApiClient ?? SpaceXApiClient();

  final SpaceXApiClient _spacexApiClient;

  Future<Launches> getLaunches(LaunchTime launchTime) {
    return _spacexApiClient.getLaunches(launchTime);
  }
}
