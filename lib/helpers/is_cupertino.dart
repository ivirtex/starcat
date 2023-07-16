// Flutter imports:
import 'package:flutter/material.dart';

bool isCupertino(BuildContext context) {
  return Theme.of(context).platform == TargetPlatform.iOS ||
      Theme.of(context).platform == TargetPlatform.macOS;
}
