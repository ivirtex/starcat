import 'package:spaceflight_news_api/spaceflight_news_api.dart';

class SpaceflightNewsRepository {
  SpaceflightNewsRepository({SpaceflightNewsApiClient? newsApi})
      : _newsApiClient = newsApi ?? SpaceflightNewsApiClient();

  final SpaceflightNewsApiClient _newsApiClient;
}
