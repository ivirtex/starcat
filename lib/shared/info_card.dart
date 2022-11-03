// Flutter imports:
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    this.icon,
    required this.color,
    this.padding = const EdgeInsets.all(5),
    required this.child,
    super.key,
  });

  final Icon? icon;
  final Color color;
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: padding,
      child: DefaultTextStyle(
        style: TextStyle(
          color: Theme.of(context).textTheme.caption!.color,
          fontSize: 11,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 2),
            ],
            child,
          ],
        ),
      ),
    );
  }
}
