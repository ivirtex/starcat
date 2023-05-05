// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/theme/theme.dart';

class ThemeModeSelector extends StatefulWidget {
  const ThemeModeSelector({super.key});

  @override
  State<ThemeModeSelector> createState() => _ThemeModeSelectorState();
}

class _ThemeModeSelectorState extends State<ThemeModeSelector> {
  late ThemeMode selected;

  @override
  void initState() {
    super.initState();

    selected = context.read<ThemeCubit>().state.themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 5,
      ),
      child: SegmentedButton<ThemeMode>(
        segments: const [
          ButtonSegment<ThemeMode>(
            value: ThemeMode.system,
            icon: Icon(Icons.brightness_auto_rounded),
            label: Text('System'),
          ),
          ButtonSegment<ThemeMode>(
            value: ThemeMode.light,
            icon: Icon(Icons.light_mode_rounded),
            label: Text('Light'),
          ),
          ButtonSegment<ThemeMode>(
            value: ThemeMode.dark,
            icon: Icon(Icons.dark_mode_outlined),
            label: Text('Dark'),
          ),
        ],
        selected: {selected},
        onSelectionChanged: (selection) {
          setState(() {
            selected = selection.first;

            context.read<ThemeCubit>().setThemeMode(selected);
          });
        },
      ),
    );
  }
}
