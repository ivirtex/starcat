// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/notifications.dart';

class TrackUsingLiveActivityButton extends StatelessWidget {
  const TrackUsingLiveActivityButton({
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
        final isCreating = state.liveActivityCreationStatus ==
            LiveActivityCreationStatus.creating;
        final isTracked = state.trackedLaunch?.launchData.id == launch.id;

        return OutlinedButton(
          onPressed: isCreating
              ? null
              : () => onTrackPressed(
                    notificationsCubit,
                    isTracked: isTracked,
                  ),
          child: Text(
            isTracked ? 'Cancel Tracking' : 'Track with Live Activity',
          ),
        );
      },
    );
  }

  void onTrackPressed(
    NotificationsCubit notificationsCubit, {
    required bool isTracked,
  }) {
    if (isTracked) {
      notificationsCubit.cancelTrackingLaunch();
    } else {
      notificationsCubit.trackLaunch(launch);
    }
  }
}
