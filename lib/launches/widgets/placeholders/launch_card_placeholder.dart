// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/explore/explore.dart';
import 'package:starcat/shared/shared.dart';

class LaunchCardPlaceholder extends StatelessWidget {
  const LaunchCardPlaceholder({
    this.padding = const EdgeInsets.only(bottom: kListSpacing),
    super.key,
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: const ExploreCard(
        title: LoadingPlaceholder(),
        trailing: LoadingPlaceholder(width: 150),
        padding: EdgeInsets.zero,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LoadingPlaceholder.expandedHeight(),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(kListSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoadingPlaceholder.expandedWidth(),
                      SizedBox(height: 5),
                      LoadingPlaceholder(),
                      SizedBox(height: 10),
                      LoadingPlaceholder.expandedWidth(),
                      SizedBox(height: 5),
                      LoadingPlaceholder(width: 150),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
