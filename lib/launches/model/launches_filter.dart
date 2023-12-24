// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:starcat/launches/launches.dart';

part 'launches_filter.g.dart';

@JsonSerializable()
class LaunchesFilter extends Equatable {
  const LaunchesFilter({
    this.searchQuery = '',
    this.selectedLaunchProviders = const {},
  });

  factory LaunchesFilter.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFilterFromJson(json);

  final String searchQuery;
  final Set<LaunchProviders> selectedLaunchProviders;

  bool get isFilterActive =>
      searchQuery.isNotEmpty || selectedLaunchProviders.isNotEmpty;

  Map<String, dynamic> toJson() => _$LaunchesFilterToJson(this);

  LaunchesFilter copyWith({
    String? searchQuery,
    Set<LaunchProviders>? selectedLaunchProviders,
  }) {
    return LaunchesFilter(
      searchQuery: searchQuery ?? this.searchQuery,
      selectedLaunchProviders:
          selectedLaunchProviders ?? this.selectedLaunchProviders,
    );
  }

  @override
  List<Object?> get props => [searchQuery, selectedLaunchProviders];
}
