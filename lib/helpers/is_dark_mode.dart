import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark ||
      CupertinoTheme.brightnessOf(context) == Brightness.dark;
}
