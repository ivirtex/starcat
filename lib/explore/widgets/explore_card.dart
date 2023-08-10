// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/constants.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    required this.child,
    this.title,
    this.trailing,
    this.slideOut,
    this.slideOutPadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 8,
    ),
    this.slideOutColor,
    this.padding = const EdgeInsets.all(10),
    this.shape,
    this.color,
    this.backgroundDecorationImage,
    this.expandVertically = false,
    this.onTap,
    super.key,
  });

  final Widget? title;
  final Widget? trailing;
  final Widget? slideOut;
  final EdgeInsets slideOutPadding;
  final Color? slideOutColor;
  final EdgeInsets padding;
  final ShapeBorder? shape;
  final Color? color;
  final DecorationImage? backgroundDecorationImage;
  final bool expandVertically;
  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.titleSmall!,
            child: Row(
              children: [
                if (title != null) title!,
                const Spacer(),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ),
        if (expandVertically)
          Expanded(
            child: buildBody(context: context),
          )
        else
          buildBody(context: context)
      ],
    );
  }

  Widget buildBody({required BuildContext context}) {
    return slideOut != null
        ? Padding(
            // Compensate for margin of a card
            padding: const EdgeInsets.only(top: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: slideOutColor ??
                    Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: slideOutPadding,
                      child: slideOut,
                    ),
                    Expanded(
                      flex: expandVertically ? 1 : 0,
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: color ?? Theme.of(context).colorScheme.surface,
                        shape: shape ??
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(kBorderRadius),
                              ),
                            ),
                        child: InkWell(
                          onTap: onTap,
                          child: Padding(
                            padding: padding,
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                image: backgroundDecorationImage,
              ),
              child: Card(
                color: color,
                shape: shape,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding: padding,
                    child: child,
                  ),
                ),
              ),
            ),
          );
  }
}
