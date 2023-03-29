import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:spaceflight_news_api/src/models/models.dart';

class ArticlesRequestFailure implements Exception {}

class ArticlesResultsNotFoundFailure implements Exception {}

class SpaceflightNewsApiClient {
  SpaceflightNewsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const baseUrl = 'api.spaceflightnewsapi.net';

  final http.Client _httpClient;

  Future<Articles> getArticles() async {
    final articlesRequest = Uri.https(baseUrl, '/v4/articles');

    final response = await _httpClient.get(articlesRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw ArticlesRequestFailure();
    }

    final articlesJson = jsonDecode(response.body) as Map<String, dynamic>;

    final articles = Articles.fromJson(articlesJson);

    if (articles.results.isEmpty) {
      throw ArticlesResultsNotFoundFailure();
    }

    return articles;
  }
}
