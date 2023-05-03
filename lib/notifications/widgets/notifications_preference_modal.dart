// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/notifications/notifications.dart';

class NotificationsPreferenceModal extends StatefulWidget {
  const NotificationsPreferenceModal({super.key});

  @override
  State<NotificationsPreferenceModal> createState() =>
      _NotificationsPreferenceModalState();
}

class _NotificationsPreferenceModalState
    extends State<NotificationsPreferenceModal> {
  bool areNotificationsContinuous = true;

  @override
  void initState() {
    super.initState();

    areNotificationsContinuous =
        context.read<NotificationsCubit>().state.areNotificationsContinuous;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      'Receive notifications for every launch',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Switch(
                    value: areNotificationsContinuous,
                    onChanged: (value) {
                      setState(() {
                        areNotificationsContinuous = value;
                      });
                    },
                  ),
                ],
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () {
                  context
                      .read<NotificationsCubit>()
                      .setIfNotificationsPreferenceModalHasBeenShown(
                        isTrue: true,
                      );

                  context
                      .read<NotificationsCubit>()
                      .setIfNotificationsAreSentContinuously(
                        isTrue: areNotificationsContinuous,
                      );

                  Navigator.of(context).pop();
                },
                child: const Text('Save'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
