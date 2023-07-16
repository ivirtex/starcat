// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/helpers/helpers.dart';

class Section extends StatelessWidget {
  const Section({
    required this.child,
    this.icon,
    super.key,
  });

  final Icon? icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
      child: IconTheme(
        data: IconThemeData(
          color: isCupertino(context)
              ? CupertinoTheme.of(context).primaryColor
              : Theme.of(context).colorScheme.onSurface,
          size: 20,
        ),
        child: DefaultTextStyle(
          style: isCupertino(context)
              ? CupertinoTheme.of(context).textTheme.navTitleTextStyle.copyWith(
                    fontSize: 18,
                  )
              : Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 18) ??
                  const TextStyle(),
          child: icon != null
              ? Row(
                  children: [
                    icon!,
                    const SizedBox(width: 5),
                    Expanded(child: child),
                  ],
                )
              : child,
        ),
      ),
    );
  }
}
