import 'package:flutter/material.dart';
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/section.dart';

class StarshipPage extends StatelessWidget {
  const StarshipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StarshipView();
  }
}

class StarshipView extends StatelessWidget {
  const StarshipView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Starship'),
          ),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: kBodyPadding,
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed(
          [
            SizedBox(height: kListSpacing),
            Section(
              icon: Icon(Icons.remove_road_rounded),
              child: Text('Closures'),
            ),
            ExploreCard(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
