import 'package:flutter/material.dart';

class OutlinedCard extends StatelessWidget {
  const OutlinedCard({
    this.margin,
    this.shape,
    this.borderRadius,
    required this.child,
    super.key,
  });

  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final double? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: margin,
      shape: shape ??
          RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 12)),
          ),
      child: child,
    );
  }
}
