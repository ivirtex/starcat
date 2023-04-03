// Flutter imports:
import 'package:flutter/material.dart';

class FilledTonalIconButton extends StatelessWidget {
  const FilledTonalIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: onPressed,
      icon: icon,
      style: IconButton.styleFrom(
        foregroundColor: colors.onSecondaryContainer,
        backgroundColor: colors.secondaryContainer,
        disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
        hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
        focusColor: colors.onSecondaryContainer.withOpacity(0.12),
        highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
      ),
    );
  }
}
