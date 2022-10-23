// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/explore/widgets/explore_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExploreCard(
              title: const Text('Next Launch'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text('Starlink 4-36'),
                      Spacer(),
                      Text('2021-07-20 12:00:00'),
                    ],
                  ),
                  const Text('Falcon 9'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
