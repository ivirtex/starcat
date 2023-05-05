// ignore_for_file: lines_longer_than_80_chars

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const kImageErrorText = 'Whoops! Image failed to load';

const kLaunchesUpdateErrorText =
    'Something went wrong while fetching new launches, current data may be stale.';

const kNewsUpdateErrorText =
    'Something went wrong while fetching news, current data may be stale.';

const kNoLatestArticlesText = 'No articles found';

const kNoFeaturedArticlesText = 'No featured articles today';

const kNoSavedArticlesText = 'No saved articles';

const kStateChangeAnimationDuration = Duration(milliseconds: 500);

const kListAnimationIntervalDuration = Duration(milliseconds: 100);

const kListAnimationFadeDuration = Duration(milliseconds: 350);

const kListSpacing = 10.0;

const kBorderRadius = 12.0;

const kBodyPadding = EdgeInsets.symmetric(horizontal: 10);

const kSourceCodeUrl = 'https://github.com/ivirtex/starcat';

const kUpcomingLaunchUrl = kDebugMode
    ? 'https://lldev.thespacedevs.com/2.2.0/launch/upcoming/?hide_recent_previous=true&limit=1'
    : 'https://ll.thespacedevs.com/2.2.0/launch/upcoming/?hide_recent_previous=true&limit=1';

// Notifications
const kLaunchNotificationsSchedule = [
  Duration(hours: 24),
  Duration(hours: 6),
  Duration(hours: 1),
  Duration(minutes: 5),
];

const kAndroidNotificationChannelId = '0';
const kAndroidNotificationChannelName = 'dev.ivirtex.starcat.notifications';
const kAndroidNotificationChannelDescription =
    'Notifications about upcoming launches';

const kNotificationDetails = NotificationDetails(
  android: AndroidNotificationDetails(
    kAndroidNotificationChannelId,
    kAndroidNotificationChannelName,
    channelDescription: kAndroidNotificationChannelDescription,
    visibility: NotificationVisibility.public,
  ),
  iOS: DarwinNotificationDetails(),
);
