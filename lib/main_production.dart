// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app_wrapper.dart';
import 'package:starcat/bootstrap.dart';

void main() {
  bootstrap(
    () => AppWrapper(
      launchLibraryRepository: LaunchLibraryRepository(
        baseUrlForApi: 'll.thespacedevs.com',
      ),
      spaceflightNewsRepository: SpaceflightNewsRepository(),
    ),
  );
}
