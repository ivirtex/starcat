// Flutter imports:
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.lightCardColor = Colors.black,
    this.darkCardColor = Colors.white10,
    this.padding = const EdgeInsets.all(10),
    this.expandVertically = false,
    this.title,
    this.trailing,
    this.onTap,
    required this.child,
    super.key,
  });

  final Color lightCardColor;
  final Color darkCardColor;
  final EdgeInsets padding;
  final bool expandVertically;
  final Widget? title;
  final Widget? trailing;
  final VoidCallback? onTap;
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
        if (expandVertically)
          Expanded(
            child: buildContent(isDark: isDark),
          )
        else
          buildContent(isDark: isDark)
      ],
    );
  }

  Card buildContent({required bool isDark}) {
    return Card(
      color: isDark ? darkCardColor : lightCardColor,
      child: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.grey.shade800),
        onTap: onTap,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontFamily: 'D-DIN',
            fontSize: 16,
          ),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
