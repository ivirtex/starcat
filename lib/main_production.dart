// Package imports:
import 'package:spacex_info_repository/spacex_info_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/bootstrap.dart';

void main() {
  bootstrap(
    () => App(
      spaceXInfoRepository: SpaceXInfoRepository(),
    ),
  );
}
