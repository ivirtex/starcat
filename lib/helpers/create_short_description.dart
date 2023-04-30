String? createShortDescription(String? description) {
  final shortDescription = description?.split('.').first;

  return shortDescription != null ? '$shortDescription.' : null;
}
