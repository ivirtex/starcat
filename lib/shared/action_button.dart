// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.icon,
    required this.onPressed,
    this.padding,
    this.label,
    this.isActive = false,
    super.key,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final String? label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: padding ?? EdgeInsets.only(right: kBodyPadding.right),
            child: IconButton.filledTonal(
              onPressed: onPressed,
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: IconTheme(
                data: IconThemeData(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                child: Row(
                  children: [
                    icon,
                    if (label != null) _buildLabel(context),
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: padding ?? EdgeInsets.only(right: kBodyPadding.right),
            child: IconButton.outlined(
              onPressed: onPressed,
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: IconTheme(
                data: IconThemeData(
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
                child: Row(
                  children: [
                    icon,
                    if (label != null) _buildLabel(context),
                  ],
                ),
              ),
            ),
          );
  }

  Padding _buildLabel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        label!,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
      ),
    );
  }
}
