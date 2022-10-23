// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

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
