// Dart imports:
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:space_devs_api/src/models/models.dart';

class LaunchesRequestFailure implements Exception {}

class LaunchesResultsNotFoundFailure implements Exception {}

class LaunchesRateLimitHit implements Exception {}

enum LaunchTime {
  previous,
  upcoming,
}

/// Class that handles HTTP requests to the thespacedevs API
class SpaceDevsApiClient {
  SpaceDevsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  // TODO(ivirtex): change url when production ready
  static const _baseUrl = 'lldev.thespacedevs.com';

  final http.Client _httpClient;

  Future<Launches> getLaunches(LaunchTime launchTime) async {
    final query = <String, String>{
      'ordering': 'net',
    };

    final launchRequest = Uri.https(
      _baseUrl,
      launchTime == LaunchTime.previous
          ? '/2.2.0/launch/previous/'
          : '/2.2.0/launch/upcoming/',
      query,
    );

    log('launchRequest: $launchRequest');
    final response = await _httpClient.get(launchRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw LaunchesRequestFailure();
    }

    final launchesJson = jsonDecode(response.body) as Map<String, dynamic>;

    if (!launchesJson.containsKey('results')) {
      log('Results not found in response.');

      throw LaunchesResultsNotFoundFailure();
    }

    return Launches.fromJson(launchesJson);
  }
}
