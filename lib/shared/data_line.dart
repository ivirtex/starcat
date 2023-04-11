// Flutter imports:
import 'package:flutter/material.dart';

class DataLine extends StatelessWidget {
  const DataLine({
    required this.leftSide,
    required this.rightSide,
    this.icon,
    super.key,
  });

  final Widget? icon;
  final Widget leftSide;
  final Widget rightSide;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).scaffoldBackgroundColor,
        size: 16,
      ),
      child: Wrap(
        children: [
          if (icon != null) icon!,
          const SizedBox(width: 5),
          leftSide,
          rightSide,
        ],
      ),
    );
  }
}
