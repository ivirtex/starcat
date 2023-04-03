// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.title,
    this.trailing,
    this.slideOut,
    this.slideOutPadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 8,
    ),
    this.padding = const EdgeInsets.all(10),
    this.shape,
    this.expandVertically = false,
    this.onTap,
    required this.child,
    super.key,
  });

  final Widget? title;
  final Widget? trailing;
  final Widget? slideOut;
  final EdgeInsets slideOutPadding;
  final EdgeInsets padding;
  final ShapeBorder? shape;
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
    return PlatformWidget(
      cupertino: (_) => Padding(
        padding: const EdgeInsets.all(5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: CupertinoInkWell(
            onPressed: onTap,
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
      material: (_) => slideOut != null
          ? Padding(
              // Compensate for margin of a card
              padding: const EdgeInsets.only(top: 4),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  // TODO(ivirtex): move borderRadius to constants
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // TODO(ivirtex): add slide out animation on scroll
                    Padding(
                      padding: slideOutPadding,
                      child: slideOut,
                    ),
                    Card(
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
                  ],
                ),
              ),
            )
          : Card(
              shape: shape,
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
