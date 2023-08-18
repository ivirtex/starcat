// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/starship/starship.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({
    required this.updates,
    super.key,
  });

  final List<Update> updates;

  @override
  Widget build(BuildContext context) {
    return UpdatesView(updates: updates);
  }
}

class UpdatesView extends StatelessWidget {
  const UpdatesView({
    required this.updates,
    super.key,
  });

  final List<Update> updates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Updates'),
          ),
          SliverPadding(
            padding: kBodyPadding,
            sliver: SliverMainAxisGroup(
              slivers: [
                const SizedBox(height: kListSpacing),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: updates.length,
                    (context, index) {
                      final update = updates[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: kListSpacing),
                        child: UpdateCard(update: update),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
