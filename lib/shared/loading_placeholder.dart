// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/constants.dart';

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({
    this.width = 100,
    this.height = 20,
    this.color,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  const LoadingPlaceholder.expandedWidth({
    this.height = 20,
    this.color,
    this.padding = EdgeInsets.zero,
    super.key,
  }) : width = double.infinity;

  const LoadingPlaceholder.expandedHeight({
    this.width = 100,
    this.color,
    this.padding = EdgeInsets.zero,
    super.key,
  }) : height = double.infinity;

  final double width;
  final double height;
  final Color? color;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ??
              Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
      ),
    );
  }
}
