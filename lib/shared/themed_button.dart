// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

class ThemedButton extends StatelessWidget {
  const ThemedButton({
    this.shouldCupertinoButtonBeFilled = false,
    this.onPressed,
    required this.child,
    super.key,
  });

  final bool shouldCupertinoButtonBeFilled;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return PlatformWidget(
      cupertino: (_) => shouldCupertinoButtonBeFilled
          ? CupertinoButton.filled(
              onPressed: onPressed,
              child: child,
            )
          : CupertinoButton(
              onPressed: onPressed,
              child: child,
            ),
      material: (_) => OutlinedButton(
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
      ),
    );
  }
}
