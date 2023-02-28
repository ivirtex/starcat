// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:falcon/shared/shared.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.title,
    this.trailing,
    this.padding = const EdgeInsets.all(10),
    this.expandVertically = false,
    this.onTap,
    required this.child,
    super.key,
  });

  final Widget? title;
  final Widget? trailing;
  final EdgeInsets padding;
  final bool expandVertically;
  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                title!,
                if (trailing != null) ...[
                  const Spacer(),
                  trailing!,
                ],
              ],
            ),
          ),
        if (expandVertically)
          Expanded(
            child: buildContent(context: context),
          )
        else
          buildContent(context: context)
      ],
    );
  }

  Widget buildContent({required BuildContext context}) {
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
      material: (_) => Card(
        color: Theme.of(context).colorScheme.surface,
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
