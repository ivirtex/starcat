// Flutter imports:
import 'package:flutter/material.dart';

class MonospaceNumberCard extends StatelessWidget {
  const MonospaceNumberCard({
    required this.numberString,
    required this.numberTextStyle,
    super.key,
  });

  final String numberString;
  final TextStyle numberTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final number in numberString.characters)
          Card(
            color: Theme.of(context).colorScheme.surface,
            margin: const EdgeInsets.only(right: 2),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                number,
                style: numberTextStyle,
              ),
            ),
          ),
      ],
    );
  }
}
