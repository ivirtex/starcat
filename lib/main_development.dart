// Package imports:
import 'package:space_devs_repository/space_devs_repository.dart';

// Project imports:
import 'package:falcon/app/app.dart';
import 'package:falcon/bootstrap.dart';

void main() {
  bootstrap(
    () => App(
      spaceDevsRepository: SpaceDevsRepository(),
    ),
  );
}
