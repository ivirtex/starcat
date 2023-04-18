// Flutter imports:
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.child,
    this.icon,
    this.padding = const EdgeInsets.all(5),
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
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 1.5,
        ),
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
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
