// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
import 'package:starcat/theme/theme.dart';
import 'package:wiredash/wiredash.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      cupertino: (_) => const CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              stretch: true,
              border: null,
              largeTitle: Text('Settings'),
            ),
            Body(),
          ],
        ),
      ),
      material: (_) => const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text('Settings'),
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late bool _isMaterial3Enabled;
  late bool _isDarkModeEnabled;

  final _textPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  @override
  void initState() {
    super.initState();

    _isMaterial3Enabled = context.read<ThemeCubit>().state.material3 == true;
    _isDarkModeEnabled =
        context.read<ThemeCubit>().state.themeMode == ThemeMode.dark;
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed(
        [
          Padding(
            padding: _textPadding,
            child: Text(
              'Theme',
              style: _getSectionTextStyle(context),
            ),
          ),
          SwitchListTile.adaptive(
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
          SwitchListTile.adaptive(
            secondary: const Icon(Icons.dark_mode_rounded),
            title: const Text('Force Dark Mode'),
            value: _isDarkModeEnabled,
            onChanged: (isEnabled) {
              setState(() {
                _isDarkModeEnabled = isEnabled;

                context.read<ThemeCubit>().setThemeMode(
                      isEnabled ? ThemeMode.dark : ThemeMode.system,
                    );
              });
            },
          ),
          const SizedBox(height: 10),
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
            onTap: () {},
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
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }

  TextStyle? _getSectionTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        );
  }
}
