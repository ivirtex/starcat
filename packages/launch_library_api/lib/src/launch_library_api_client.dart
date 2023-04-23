// Dart imports:
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

class LaunchesRequestFailure implements Exception {}

class LaunchesResultsNotFoundFailure implements Exception {}

class LaunchesRateLimitHit implements Exception {}

enum LaunchTime {
  previous,
  upcoming,
}

/// Class that handles HTTP requests to the Launch Library 2 API.
class LaunchLibraryApiClient {
  LaunchLibraryApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  // TODO(ivirtex): change url when production ready
  static const _baseUrl = 'lldev.thespacedevs.com';

  final http.Client _httpClient;

  Future<Launches> getLaunches(LaunchTime launchTime) async {
    late final Uri launchRequest;

    switch (launchTime) {
      case LaunchTime.previous:
        launchRequest = Uri.https(
          _baseUrl,
          '/2.2.0/launch/previous/',
        );
        break;
      case LaunchTime.upcoming:
        launchRequest = Uri.https(
          _baseUrl,
          '/2.2.0/launch/upcoming/',
          <String, String>{
            'hide_recent_previous': 'true',
          },
        );
        break;
    }

    log('launchRequest: $launchRequest');
    final response = await _httpClient.get(launchRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw LaunchesRequestFailure();
    }

    final launchesJson =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    if (!launchesJson.containsKey('results')) {
      log('Results not found in response.');

      throw LaunchesResultsNotFoundFailure();
    }

    return Launches.fromJson(launchesJson);
  }
}
