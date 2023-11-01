// Dart imports:
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

class FailedRequestException implements Exception {
  FailedRequestException(this.message);

  final String message;

  @override
  String toString() => 'FailedRequestException: $message';
}

class TokenAlreadyInvalidatedException extends FailedRequestException {
  TokenAlreadyInvalidatedException()
      : super('Token has already been invalidated');
}

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
    final request = Uri.https(baseUrl, '/starcat/v1/push_token/$token');

    log('sendLiveActivityPushToken: $request');

    final response = await _httpClient.post(request);

    if (response.statusCode != HttpStatus.created &&
        response.statusCode != HttpStatus.ok) {
      throw FailedRequestException(response.statusCode.toString());
    }
  }

  Future<void> invalidateLiveActivityPushToken(String token) async {
    final request = Uri.https(baseUrl, '/starcat/v1/push_token/$token');

    log('invalidateLiveActivityPushToken: $request');

    final response = await _httpClient.delete(request);

    if (response.statusCode == HttpStatus.notFound) {
      throw TokenAlreadyInvalidatedException();
    } else if (response.statusCode != HttpStatus.ok) {
      throw FailedRequestException(response.statusCode.toString());
    }
  }
}
