// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/bootstrap.dart';

void main() {
  bootstrap(
    () => App(
      launchLibraryRepository: LaunchLibraryRepository(),
      spaceflightNewsRepository: SpaceflightNewsRepository(),
    ),
  );
}
