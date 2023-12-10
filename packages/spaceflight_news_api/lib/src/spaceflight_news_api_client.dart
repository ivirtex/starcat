// Dart imports:
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:spaceflight_news_api/src/models/models.dart';

class ArticlesRequestFailure implements Exception {}

class ArticlesResultsNotFoundFailure implements Exception {}

class SpaceflightNewsApiClient {
  SpaceflightNewsApiClient({
    this.baseUrl = 'localhost:8000',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;
  final String baseUrl;

  Future<Articles> getArticles({int offset = 0, String? searchTopic}) async {
    log(
      'Requesting articles with offset: $offset and search topic: $searchTopic',
    );

    final articlesRequest = Uri.https(baseUrl, '/v4/articles', {
      if (offset != 0) 'offset': offset.toString(),
      if (searchTopic != null) 'search': searchTopic,
    });

    final response = await _httpClient.get(articlesRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw ArticlesRequestFailure();
    }

    final articlesJson =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final articles = Articles.fromJson(articlesJson);

    if (articles.results.isEmpty) {
      throw ArticlesResultsNotFoundFailure();
    }

    return articles;
  }
}
