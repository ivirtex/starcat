// Flutter imports:
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    this.icon,
    required this.color,
    required this.child,
    super.key,
  });

  final Icon? icon;
  final Color color;
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
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 2),
          ],
          child,
        ],
      ),
    );
  }
}
