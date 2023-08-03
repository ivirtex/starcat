// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';
import 'package:starcat/shared/shared.dart';

class NotifyAboutLaunchButton extends StatelessWidget {
  const NotifyAboutLaunchButton({
    required this.launch,
    required this.isUpcoming,
    super.key,
  });

  final Launch launch;
  final bool isUpcoming;

  @override
  Widget build(BuildContext context) {
    final notificationsCubit = context.watch<NotificationsCubit>();

    final isLaunchTracked = notificationsCubit.state.trackedLaunches
        .any((trackedLaunch) => trackedLaunch.launchData.id == launch.id);
    final areNotificationsContinuous =
        notificationsCubit.state.areNotificationsContinuous;

    return IconToggleButton(
      isEnabled: isUpcoming && !areNotificationsContinuous,
      getDefaultStyle: isUpcoming && !areNotificationsContinuous
          ? enabledFilledTonalButtonStyle
          : disabledFilledTonalButtonStyle,
      icon: const Icon(Icons.notification_add_rounded),
      selectedIcon: const Icon(Icons.notifications_active_rounded),
      selected: isLaunchTracked || areNotificationsContinuous,
      onToggle: (selected) {
        if (selected) {
          context
              .read<NotificationsCubit>()
              .trackLaunch(launch, mode: TrackingMethod.notifications);
        } else {
          context.read<NotificationsCubit>().cancelTrackingLaunch(launch);
        }
      },
    );
  }
}
