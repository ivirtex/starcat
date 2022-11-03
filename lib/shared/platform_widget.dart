// Flutter imports:
import 'package:flutter/material.dart';

class PlatformWidget extends StatelessWidget {
  const PlatformWidget({
    this.cupertino,
    this.material,
    super.key,
  });

  final Widget? Function(BuildContext context)? cupertino;

  final Widget? Function(BuildContext context)? material;

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;

    switch (platform) {
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return cupertino?.call(context) ?? const SizedBox.shrink();
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return material?.call(context) ?? const SizedBox.shrink();
    }
  }
}
