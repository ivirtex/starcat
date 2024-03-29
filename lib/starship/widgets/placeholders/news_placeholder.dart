// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animate/flutter_animate.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class NewsPlaceholder extends StatelessWidget {
  const NewsPlaceholder({
    this.delay = Duration.zero,
    super.key,
  });

  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section(
          icon: Icon(Icons.newspaper_rounded),
          child: Text('Starship News'),
        ),
        SizedBox(
          height: 330,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const RepaintBoundary(
                child: SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 10),
                    child: ExploreCard(
                      expandVertically: true,
                      title: LoadingPlaceholder(),
                      trailing: LoadingPlaceholder(width: 70),
                      slideOut: SizedBox(
                        height: 150,
                      ),
                      slideOutPadding: EdgeInsets.zero,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                LoadingPlaceholder.expandedWidth(),
                                SizedBox(height: 5),
                                LoadingPlaceholder.expandedWidth(
                                  padding: EdgeInsets.only(right: 100),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                LoadingPlaceholder.expandedWidth(height: 15),
                                SizedBox(height: 5),
                                LoadingPlaceholder.expandedWidth(height: 15),
                                SizedBox(height: 5),
                                LoadingPlaceholder.expandedWidth(height: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
            .animate(
              delay: delay,
              onPlay: (controller) => controller.repeat(reverse: true),
            )
            .fade(
              begin: 0.3,
              curve: Curves.easeInOut,
              duration: 1.seconds,
            ),
      ],
    );
  }
}
