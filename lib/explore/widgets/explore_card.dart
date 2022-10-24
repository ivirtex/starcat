// Flutter imports:
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.lightCardColor = Colors.black,
    this.darkCardColor = Colors.white,
    this.title,
    required this.child,
    super.key,
  });

  final Color lightCardColor;
  final Color darkCardColor;
  final Widget? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: title,
          ),
        Card(
          color: isDark ? darkCardColor : lightCardColor,
          child: DefaultTextStyle(
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
