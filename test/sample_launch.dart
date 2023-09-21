// Package imports:
import 'package:launch_library_repository/launch_library_repository.dart';

const sampleLaunch = Launch(
  id: '1',
  url: '',
  slug: '',
  name: 'Falcon 9 Block 5 | CRS-21',
  image: '',
  netPrecision: NetPrecision(),
  status: Status(),
  launchServiceProvider: LaunchServiceProvider(url: '', name: ''),
  rocket: Rocket(
    configuration: Configuration(
      url: 'https://ll.thespacedevs.com/2.2.0/config/launcher/164/',
      name: 'Falcon 9',
      family: 'Falcon',
      fullName: 'Falcon 9 Block 5',
      variant: 'Block 5',
    ),
  ),
  mission: Mission(
    name: 'Long Mission Name',
    description: 'Mission Description.',
    type: 'Resupply',
    orbit: Orbit(),
  ),
  pad: Pad(
    name: 'Pad 39A',
    latitude: '0',
    longitude: '0',
    location: Location(),
  ),
  webcastLive: false,
  infographic: '',
  program: [],
);
