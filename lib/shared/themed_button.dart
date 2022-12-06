// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/helpers/helpers.dart';
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
    final isDark = isDarkMode(context);

    return PlatformWidget(
      cupertino: (_) => shouldCupertinoButtonBeFilled
          ? CupertinoButton(
              onPressed: onPressed,
              color: Colors.white,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                ),
                child: child,
              ),
            )
          : CupertinoButton(
              onPressed: onPressed,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              minSize: 30,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.white,
                ),
                child: child,
              ),
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
