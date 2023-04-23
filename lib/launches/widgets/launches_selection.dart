// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

class LaunchesSelection extends StatefulWidget {
  const LaunchesSelection({super.key});

  @override
  State<LaunchesSelection> createState() => _LaunchesSelectionState();
}

class _LaunchesSelectionState extends State<LaunchesSelection> {
  late SelectedLaunches selected;

  @override
  void initState() {
    super.initState();

    selected = context.read<LaunchesBloc>().state.selectedLaunches;
  }

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      selected: {selected},
      onSelectionChanged: (newSelection) {
        setState(() {
          selected = newSelection.first;

          context.read<LaunchesBloc>().add(
                LaunchesSelectionChanged(selectedLaunches: selected),
              );
        });
      },
      segments: const [
        ButtonSegment(
          value: SelectedLaunches.upcoming,
          label: Text('Upcoming'),
          icon: Icon(Icons.new_releases_rounded),
        ),
        ButtonSegment(
          value: SelectedLaunches.past,
          label: Text('Past'),
          icon: Icon(Icons.history_rounded),
        ),
      ],
    );
  }
}
