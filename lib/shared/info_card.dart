// Flutter imports:
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    this.icon,
    this.padding = const EdgeInsets.all(5),
    required this.child,
    super.key,
  });

  final Icon? icon;
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 2),
          ],
          Flexible(
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.labelSmall!,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
