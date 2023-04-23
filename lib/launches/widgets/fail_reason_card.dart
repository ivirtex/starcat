// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';

class FailReasonCard extends StatelessWidget {
  const FailReasonCard({
    required this.failReason,
    super.key,
  });

  final String failReason;

  @override
  Widget build(BuildContext context) {
    return ExploreCard(
      title: Row(
        children: const [
          Icon(Icons.error_outline_rounded, size: 14),
          SizedBox(width: 5),
          Text('Fail Reason'),
        ],
      ),
      child: Text(failReason),
    );
  }
}
