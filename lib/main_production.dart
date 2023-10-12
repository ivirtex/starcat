// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:notifications_repository/notifications_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

// Project imports:
import 'package:starcat/app/app_wrapper.dart';
import 'package:starcat/bootstrap.dart';
import 'package:starcat/constants.dart';

void main() {
  bootstrap(
    () => AppWrapper(
      launchLibraryRepository: LaunchLibraryRepository(
        baseApiUrl: kApiLaunchLibraryUrl,
      ),
      spaceflightNewsRepository: SpaceflightNewsRepository(
        baseUrl: kApiSpaceflightNewsUrl,
      ),
      notificationsRepository: NotificationsRepository(
        baseApiUrl: kApiNotificationsUrl,
        appGroupId: kAppGroupId,
      ),
    ),
  );
}
