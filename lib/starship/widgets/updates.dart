// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/shared/shared.dart';
import 'package:starcat/starship/starship.dart';

class Updates extends StatelessWidget {
  const Updates({
    required this.updates,
    super.key,
  });

  final List<Update> updates;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Section(
          icon: const Icon(Icons.update_rounded),
          trailing: SectionButton(
            onPressed: () => context.go('/starship/updates'),
          ),
          child: const Text('Updates'),
        ),
        UpdateCard(update: updates.first),
      ],
    );
  }
}
