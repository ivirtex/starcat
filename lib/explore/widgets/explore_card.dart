// Flutter imports:
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.lightCardColor = Colors.black,
    this.darkCardColor = Colors.white,
    this.padding = const EdgeInsets.all(10),
    this.title,
    this.trailing,
    required this.child,
    super.key,
  });

  final Color lightCardColor;
  final Color darkCardColor;
  final EdgeInsets padding;
  final Widget? title;
  final Widget? trailing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                title!,
                if (trailing != null) ...[
                  const Spacer(),
                  trailing!,
                ],
              ],
            ),
          ),
        Card(
          color: isDark ? darkCardColor : lightCardColor,
          child: DefaultTextStyle(
            style: TextStyle(
              color: isDark ? Colors.black : Colors.white,
              fontFamily: 'D-DIN',
              fontSize: 16,
            ),
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
