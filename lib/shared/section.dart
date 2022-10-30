// Flutter imports:
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(name),
    );
  }
}
