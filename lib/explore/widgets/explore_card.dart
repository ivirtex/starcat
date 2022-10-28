// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:falcon/theme/cubit/cubit.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    this.lightCardColor = Colors.black,
    this.darkCardColor = Colors.white,
    this.title,
    this.trailing,
    required this.child,
    super.key,
  });

  final Color lightCardColor;
  final Color darkCardColor;
  final Widget? title;
  final Widget? trailing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = context.read<ThemeCubit>().state.themeMode == ThemeMode.dark;

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
        Card(
          color: isDark ? darkCardColor : lightCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.backgroundColor,
            ),
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
