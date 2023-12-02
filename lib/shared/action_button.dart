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
    super.key,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(right: kBodyPadding.right),
      child: IconButton.filledTonal(
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
              if (label != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    label!,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ),
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
