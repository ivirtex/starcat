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
    this.margin,
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
  final EdgeInsets? margin;
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
          padding: margin ??
              EdgeInsets.only(
                left: kBodyPadding.left,
                right: kBodyPadding.right,
                top: 2,
                bottom: 6,
              ),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.titleSmall!,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (title != null)
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: title,
                    ),
                  ),
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
          buildBody(context: context),
      ],
    );
  }

  Widget buildBody({required BuildContext context}) {
    return slideOut != null
        ? DecoratedBox(
            decoration: BoxDecoration(
              color:
                  slideOutColor ?? Theme.of(context).colorScheme.surfaceVariant,
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
                      shape: shape,
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
          )
        : DecoratedBox(
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
          );
  }
}
