// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';

class TrackUsingDynamicIslandButton extends StatelessWidget {
  const TrackUsingDynamicIslandButton({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationsCubit, NotificationsState>(
      listener: (context, state) {
        if (state.liveActivityCreationStatus ==
            LiveActivityCreationStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(kLiveActivityCreationErrorText),
            ),
          );
        }
      },
      builder: (context, state) {
        final notificationsCubit = context.read<NotificationsCubit>();
        final isTracked = state.trackedLaunches.any(
          (trackedLaunch) =>
              trackedLaunch.launchData.id == launch.id &&
              trackedLaunch.trackingMethod == TrackingMethod.liveActivity,
        );

        return OutlinedButton(
          onPressed: isTracked
              ? () => notificationsCubit.cancelTrackingLaunch(launch)
              : () => notificationsCubit.trackLaunch(
                    launch,
                    mode: TrackingMethod.liveActivity,
                  ),
          child: Text(
            isTracked ? 'Cancel Tracking' : 'Track with Live Activity',
          ),
        );
      },
    );
  }
}
