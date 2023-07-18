// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

class ThemedButton extends StatelessWidget {
  const ThemedButton({
    required this.child,
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: child,
    );
  }
}
