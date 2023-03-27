import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:spaceflight_news_api/src/models/models.dart';

class NewsRequestFailure implements Exception {}

class NewsResultsNotFoundFailure implements Exception {}

class SpaceflightNewsApiClient {
  SpaceflightNewsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const baseUrl = 'api.spaceflightnewsapi.net';

  final http.Client _httpClient;

  Future<List<Article>> getArticles() async {
    final articlesRequest = Uri.https(baseUrl, '/v3/articles');

    final response = await _httpClient.get(articlesRequest);

    if (response.statusCode != HttpStatus.ok) {
      log('Request failed with status: ${response.statusCode}.');

      throw NewsRequestFailure();
    }

    final articlesJson = jsonDecode(utf8.decode(response.bodyBytes)) as List;

    if (articlesJson.isEmpty) {
      throw NewsResultsNotFoundFailure();
    }

    final articles = articlesJson
        .map(
          (articleJson) =>
              Article.fromJson(articleJson as Map<String, dynamic>),
        )
        .toList();

    return articles;
  }
}
