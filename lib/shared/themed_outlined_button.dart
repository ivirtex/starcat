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
        overlayColor: MaterialStateProperty.all(
          isDark ? Colors.grey.shade200 : Colors.grey.shade800,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: IconTheme(
        data: IconThemeData(
          color: isDark ? Colors.black : Colors.white,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: child,
        ),
      ),
    );
  }
}
