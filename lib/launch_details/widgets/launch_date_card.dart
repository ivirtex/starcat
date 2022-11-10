// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:falcon/explore/explore.dart';
import 'package:falcon/shared/shared.dart';

class LaunchDateCard extends StatelessWidget {
  const LaunchDateCard({
    super.key,
    required this.date,
  });

  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    String? localMMMd;
    String? localEEEE;
    String? localHm;

    String? utcTime;

    if (date != null) {
      localMMMd = DateFormat.MMMd().format(date!.toLocal());
      localEEEE = DateFormat.EEEE().format(date!.toLocal());
      localHm = DateFormat.Hm().format(date!.toLocal());

      utcTime = DateFormat.Hm().format(date!.toUtc());
    }

    return ExploreCard(
      title: Row(
        children: const [
          Icon(Icons.calendar_month_rounded, size: 14),
          SizedBox(width: 5),
          Text('Launch Date'),
        ],
      ),
      child: Row(
        children: [
          Text(
            localMMMd ?? 'N/A',
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(localEEEE ?? 'N/A'),
              Text(
                '$localHm ($utcTime UTC)',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
          const Spacer(),
          ThemedOutlinedButton(
            child: const Text('Notify me'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
