// Flutter imports:
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    required this.text,
    this.style,
    super.key,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        text,
        style: style ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
