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
      material: (_) => FilledButton.tonal(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
