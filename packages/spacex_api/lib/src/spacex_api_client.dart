import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:spacex_api/src/models/models.dart';

class LaunchesRequestFailure implements Exception {}

class LaunchesResultsNotFoundFailure implements Exception {}

class LaunchesRateLimitHit implements Exception {}

enum LaunchTime {
  previous,
  upcoming,
}

/// Class that handles HTTP requests to the thespacedevs API
class SpaceXApiClient {
  SpaceXApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  // TODO(ivirtex): change url when production ready
  static const _baseUrl = 'lldev.thespacedevs.com';

  final http.Client _httpClient;

  Future<Launches> getLaunches(LaunchTime launchTime) async {
    final launchRequest = Uri.https(
      _baseUrl,
      launchTime == LaunchTime.previous
          ? '/2.2.0/launch/previous/'
          : '/2.2.0/launch/upcoming/',
    );

    final response = await _httpClient.get(launchRequest);

    if (response.statusCode != HttpStatus.ok) {
      throw LaunchesRequestFailure();
    }

    final launchesJson = jsonDecode(response.body) as Map<String, dynamic>;

    if (!launchesJson.containsKey('results')) {
      throw LaunchesResultsNotFoundFailure();
    }

    return Launches.fromJson(launchesJson);
  }
}
