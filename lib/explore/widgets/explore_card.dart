import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.cardColor = Colors.black,
    this.textColor = Colors.white,
    this.title,
    required this.child,
    super.key,
  });

  final Color cardColor;
  final Color textColor;
  final Widget? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: title,
          ),
        Card(
          color: cardColor,
          child: DefaultTextStyle(
            style: TextStyle(color: textColor),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
