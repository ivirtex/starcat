// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app_wrapper.dart';
import 'package:starcat/bootstrap.dart';

void main() async {
  await SentryFlutter.init(
    (options) {
      options
        ..dsn =
            'https://953aee3b5113f1257e85bd6222267a96@o923305.ingest.sentry.io/4505726120820736'
        ..tracesSampleRate = 0.5;
    },
    appRunner: () => bootstrap(
      () => AppWrapper(
        launchLibraryRepository: LaunchLibraryRepository(
          baseUrlForApi: 'https://ll.thespacedevs.com',
        ),
        spaceflightNewsRepository: SpaceflightNewsRepository(),
      ),
    ),
  );
}
