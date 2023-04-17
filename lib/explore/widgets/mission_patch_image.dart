// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

class MissonPatchImage extends StatelessWidget {
  const MissonPatchImage({
    required this.programs,
    super.key,
  });

  final List<Program> programs;

  @override
  Widget build(BuildContext context) {
    if (programs.isEmpty || programs.first.imageUrl == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 40,
      child: Image.network(
        programs.first.imageUrl!,
        fit: BoxFit.cover,
      ),
    );
  }
}
