enum LaunchProviders {
  spaceX('SpaceX', '121'),
  ula('ULA', '124'),
  esa('ESA', '27'),
  arianespace('Arianespace', '115'),
  blueOrigin('Blue Origin', '141'),
  rocketLab('Rocket Lab', '147'),
  roscomos('Roscosmos', '63'),
  casc('CASC', '88');

  const LaunchProviders(this.name, this.id);

  final String name;
  final String id;
}
