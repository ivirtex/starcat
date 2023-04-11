// Flutter imports:
import 'package:flutter/material.dart';

class FilledCard extends StatelessWidget {
  const FilledCard({
    required this.child,
    this.shape,
    this.margin,
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
