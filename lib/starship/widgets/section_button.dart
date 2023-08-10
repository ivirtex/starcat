// Flutter imports:
import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({
    required this.onPressed,
    this.child = const Icon(Icons.arrow_forward),
    super.key,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      constraints: const BoxConstraints(),
      padding: const EdgeInsets.all(3),
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      icon: child,
    );
  }
}
