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
  LaunchLibraryApiClient({
    this.baseUrl = 'localhost:8000',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client _httpClient;

  Future<Launches> getLaunches(LaunchTime launchTime, {int offset = 0}) async {
    late final Uri launchRequest;

    switch (launchTime) {
      case LaunchTime.previous:
        launchRequest = Uri.https(
          baseUrl,
          '/2.2.0/launch/previous/',
          <String, String>{
            'offset': offset.toString(),
            'mode': 'detailed',
          },
        );
        break;
      case LaunchTime.upcoming:
        launchRequest = Uri.https(
          baseUrl,
          '/2.2.0/launch/upcoming/',
          <String, String>{
            'hide_recent_previous': 'true',
            'offset': offset.toString(),
            'mode': 'detailed',
          },
        );
        break;
    }

    log('launchRequest: $launchRequest');
    final response = await _httpClient.get(launchRequest);

    // TODO(ivirtex): handle rate limit (429)
    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw LaunchesRequestFailure();
    } else if (response.statusCode == HttpStatus.tooManyRequests) {
      log('Rate limit hit for request: $launchRequest.');

      throw LaunchesRateLimitHit();
    }

    final launchesJson =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    if (!launchesJson.containsKey('results')) {
      log('Results not found in response.');

      throw LaunchesResultsNotFoundFailure();
    }

    return Launches.fromJson(launchesJson);
  }

  Future<StarshipDashboard> getStarshipDashboard() async {
    final starshipDashboardRequest = Uri.https(
      baseUrl,
      '/2.2.0/dashboard/starship/',
      <String, String>{
        'mode': 'detailed',
      },
    );

    log('starshipDashboardRequest: $starshipDashboardRequest');
    final response = await _httpClient.get(starshipDashboardRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw LaunchesRequestFailure();
    } else if (response.statusCode == HttpStatus.tooManyRequests) {
      log('Rate limit hit for request: $starshipDashboardRequest.');

      throw LaunchesRateLimitHit();
    }

    final starshipDashboardJson =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    return StarshipDashboard.fromJson(starshipDashboardJson);
  }
}
