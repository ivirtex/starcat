// Flutter imports:
import 'package:flutter/material.dart';

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
        data: const IconThemeData(size: 20),
        child: DefaultTextStyle(
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 18) ??
                  const TextStyle(),
          child: icon != null
              ? Row(
                  children: [
                    icon!,
                    const SizedBox(width: 5),
                    child,
                  ],
                )
              : child,
        ),
      ),
    );
  }
}
