// Flutter imports:
import 'package:flutter/material.dart';

enum InfoCardType {
  colored,
  primary,
  secondary,
  tertiary,
  bordered,
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.child,
    required this.bgColor,
    required this.contentColor,
    this.icon,
    this.padding = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    super.key,
  }) : _type = InfoCardType.colored;

  const InfoCard.primary({
    required this.child,
    this.icon,
    this.bgColor,
    this.contentColor,
    this.padding = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    super.key,
  }) : _type = InfoCardType.primary;

  const InfoCard.secondary({
    required this.child,
    this.icon,
    this.bgColor,
    this.contentColor,
    this.padding = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    super.key,
  }) : _type = InfoCardType.secondary;

  const InfoCard.tertiary({
    required this.child,
    this.icon,
    this.bgColor,
    this.contentColor,
    this.padding = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    super.key,
  }) : _type = InfoCardType.tertiary;

  const InfoCard.bordered({
    required this.child,
    this.icon,
    this.bgColor,
    this.contentColor,
    this.padding = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(Radius.circular(5)),
    super.key,
  }) : _type = InfoCardType.bordered;

  final InfoCardType _type;
  final Icon? icon;
  final Color? bgColor;
  final Color? contentColor;
  final EdgeInsets padding;
  final BorderRadius? borderRadius;
  final Widget child;

  Color getBgColorForType(BuildContext context) {
    switch (_type) {
      case InfoCardType.colored:
        return bgColor!;
      case InfoCardType.primary:
        return Theme.of(context).colorScheme.primaryContainer;
      case InfoCardType.secondary:
        return Theme.of(context).colorScheme.secondaryContainer;
      case InfoCardType.tertiary:
        return Theme.of(context).colorScheme.tertiaryContainer;
      case InfoCardType.bordered:
        return Colors.transparent;
    }
  }

  Color getContentColorForType(BuildContext context) {
    switch (_type) {
      case InfoCardType.colored:
        return contentColor!;
      case InfoCardType.primary:
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case InfoCardType.secondary:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case InfoCardType.tertiary:
        return Theme.of(context).colorScheme.onTertiaryContainer;
      case InfoCardType.bordered:
        return Theme.of(context).colorScheme.onSurface;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: _type == InfoCardType.bordered
            ? Border.all(
                color: Theme.of(context).colorScheme.secondary,
                width: 1.5,
              )
            : null,
        color: bgColor ?? getBgColorForType(context),
      ),
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            IconTheme(
              data: IconThemeData(
                color: getContentColorForType(context),
                size: 14,
              ),
              child: icon!,
            ),
            const SizedBox(width: 2),
          ],
          Flexible(
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: contentColor ?? getContentColorForType(context),
                  ),
              child: child,
            ),
          ),
          if (icon != null) const SizedBox(width: 2),
        ],
      ),
    );
  }
}
