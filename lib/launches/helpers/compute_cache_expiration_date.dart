// Dart imports:
import 'dart:developer';

// Project imports:
import 'package:starcat/helpers/format_duration.dart';

/// Computes the cache expiration date for the launch data.
/// Used for preventing rate limiting.
DateTime computeCacheExpirationDate(
  DateTime now,
  DateTime launchNet,
) {
  final hasLaunched = now.isAfter(launchNet);
  final timeDiffInHours = now.difference(launchNet).inHours.abs();

  DateTime expirationDate;

  if (hasLaunched) {
    if (timeDiffInHours < 1) {
      expirationDate = now.add(const Duration(minutes: 5));
    } else if (timeDiffInHours < 6) {
      expirationDate = now.add(const Duration(minutes: 15));
    } else {
      // At this point, launch should have been updated with
      // new information, so we can cache it for longer
      expirationDate = now.add(const Duration(days: 3));
    }
  } else {
    if (timeDiffInHours < 1) {
      expirationDate = now.add(const Duration(minutes: 5));
    } else if (timeDiffInHours < 3) {
      expirationDate = now.add(const Duration(minutes: 15));
    } else {
      expirationDate = now.add(const Duration(minutes: 30));
    }
  }

  // ignore: lines_longer_than_80_chars
  log('Computed cache expiration date: ${formatDuration(expirationDate.difference(now))}');

  return expirationDate;
}
