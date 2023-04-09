// Flutter imports:
import 'package:flutter/material.dart';

class FilledCard extends StatelessWidget {
  const FilledCard({
    this.shape,
    this.margin,
    required this.child,
    super.key,
  });

  final ShapeBorder? shape;
  final EdgeInsetsGeometry? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: margin,
      shape: shape,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: child,
    );
  }
}
