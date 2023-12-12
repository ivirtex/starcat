// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';
import 'package:launch_library_repository/launch_library_repository.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/starship/starship.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({
    required this.launchers,
    super.key,
  });

  final List<Launcher> launchers;

  @override
  Widget build(BuildContext context) {
    return VehiclesView(launchers: launchers);
  }
}

class VehiclesView extends StatelessWidget {
  const VehiclesView({
    required this.launchers,
    super.key,
  });

  final List<Launcher> launchers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Vehicles'),
          ),
          SliverPadding(
            padding: kBodyPadding,
            sliver: SliverPadding(
              padding: const EdgeInsets.only(top: kListSpacing),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: launchers.length,
                  (context, index) {
                    final vehicle = launchers[index];

                    // Capitalize status
                    final status = toBeginningOfSentenceCase(
                      vehicle.status ?? 'Unknown',
                    );

                    return VehicleCard(
                      title: Text(vehicle.serialNumber ?? 'N/A SN'),
                      subtitle: Text(vehicle.details ?? 'N/A Details'),
                      leading: MissionImage(
                        imageUrl: vehicle.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      status: Text(status ?? 'Unknown'),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
