// Flutter imports:
import 'package:flutter/material.dart';

class ThemedOutlinedButton extends StatelessWidget {
  const ThemedOutlinedButton({
    this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return OutlinedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.grey.shade800),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: MaterialStateProperty.all(
          const BorderSide(color: Colors.white70),
        ),
      ),
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
        ),
        child: IconTheme(
          data: IconThemeData(
            color: isDark ? Colors.white : Colors.black,
          ),
          child: child,
        ),
      ),
    );
  }
}
