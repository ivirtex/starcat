// Dart imports:
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

/// Class to handle communication with the notifications API.
class NotificationsApi {
  NotificationsApi({
    this.baseUrl = 'localhost:8000',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final http.Client _httpClient;

  /// Sends the given [token] to the API.
  Future<void> sendLiveActivityPushToken(String token) async {
    final response = await _httpClient.post(
      Uri.https(baseUrl, '/starcat/v1/push_token'),
      body: <String, String>{
        'token': token,
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception('Failed to send push token.');
    }
  }

  Future<void> invalidateLiveActivityPushToken(String token) async {
    final response = await _httpClient.delete(
      Uri.https(baseUrl, '/starcat/v1/push_token'),
      body: <String, String>{
        'token': token,
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception('Failed to invalidate push token.');
    }
  }
}
