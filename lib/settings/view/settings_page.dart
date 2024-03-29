// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wiredash/wiredash.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/notifications/cubit/notifications_cubit.dart';
import 'package:starcat/settings/settings.dart';
import 'package:starcat/theme/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late bool _isMaterial3Enabled;
  late bool _areNotificationsSentContinuously;
  // late bool _areStarbaseNotificationsEnabled;

  final _textPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  @override
  void initState() {
    super.initState();

    _isMaterial3Enabled =
        context.read<ThemeCubit>().state.isDynamicThemeEnabled == true;
    _areNotificationsSentContinuously =
        context.read<NotificationsCubit>().state.areNotificationsContinuous;
    // _areStarbaseNotificationsEnabled = context
    //     .read<NotificationsCubit>()
    //     .state
    //     .areStarbaseNotificationsEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: _textPadding,
          child: Text(
            'Theme',
            style: _getSectionTextStyle(context),
          ),
        ),
        const ThemeModeSelector(),
        if (Theme.of(context).platform != TargetPlatform.iOS)
          SwitchListTile(
            secondary: const Icon(Icons.color_lens_rounded),
            title: const Text('Material You'),
            value: _isMaterial3Enabled,
            onChanged: (isEnabled) {
              setState(() {
                _isMaterial3Enabled = isEnabled;

                context.read<ThemeCubit>().setMaterial3(isEnabled: isEnabled);
              });
            },
          ),
        const SizedBox(height: kListSpacing),
        Padding(
          padding: _textPadding,
          child: Text(
            'Notifications',
            style: _getSectionTextStyle(context),
          ),
        ),
        SwitchListTile(
          secondary: const Icon(Icons.notifications_active_rounded),
          title: const Text('Notifications before every launch'),
          value: _areNotificationsSentContinuously,
          onChanged: (isEnabled) {
            setState(() {
              _areNotificationsSentContinuously = isEnabled;

              context
                  .read<NotificationsCubit>()
                  .setIfNotificationsAreSentContinuously(isTrue: isEnabled);
            });
          },
        ),
        // TODO(ivirtex): broken on API side
        // SwitchListTile(
        //   secondary: const Icon(Icons.star_rounded),
        //   title: const Text('Notices and closures at Starbase (Beta)'),
        //   value: _areStarbaseNotificationsEnabled,
        //   onChanged: (isEnabled) {
        //     setState(() {
        //       _areStarbaseNotificationsEnabled = isEnabled;

        //       context
        //           .read<NotificationsCubit>()
        //           .setIfStarbaseNotificationsAreEnabled(isTrue: isEnabled);
        //     });
        //   },
        // ),
        const SizedBox(height: kListSpacing),
        Padding(
          padding: _textPadding,
          child: Text(
            'About',
            style: _getSectionTextStyle(context),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.code_rounded),
          title: const Text('Source Code'),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: _launchSourceCodeUrl,
        ),
        ListTile(
          leading: const Icon(Icons.bug_report_rounded),
          title: const Text('Submit Feedback'),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () {
            Wiredash.of(context).show(
              inheritMaterialTheme: true,
            );
          },
        ),
        Padding(
          padding: _textPadding,
          child: Text(
            'Made with ❤️ by ivirtex',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ]
          .animate(interval: kListAnimationIntervalDuration)
          .fadeIn(duration: kListAnimationFadeDuration),
    );
  }

  TextStyle? _getSectionTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        );
  }

  void _launchSourceCodeUrl() {
    launchUrl(
      Uri.parse(kSourceCodeUrl),
      mode: LaunchMode.externalApplication,
    );
  }
}
