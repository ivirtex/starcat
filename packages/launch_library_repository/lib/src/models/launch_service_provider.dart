// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;

part 'launch_service_provider.g.dart';

@JsonSerializable()
class LaunchServiceProvider extends Equatable {
  const LaunchServiceProvider({
    required this.id,
    required this.url,
    required this.name,
    this.featured,
    this.type,
    this.countryCode,
    this.abbrev,
    this.description,
    this.administrator,
    this.foundingYear,
    this.launchers,
    this.spacecraft,
    this.totalLaunchCount,
    this.consecutiveSuccessfulLaunches,
    this.successfulLaunches,
    this.failedLaunches,
    this.pendingLaunches,
    this.consecutiveSuccessfulLandings,
    this.successfulLandings,
    this.failedLandings,
    this.attemptedLandings,
    this.infoUrl,
    this.wikiUrl,
    this.logoUrl,
    this.imageUrl,
    this.nationUrl,
  });

  factory LaunchServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$LaunchServiceProviderFromJson(json);

  factory LaunchServiceProvider.fromApiMini(
    api.AgencySerializerMini apiLaunchServiceProviderMini,
  ) {
    return LaunchServiceProvider(
      id: apiLaunchServiceProviderMini.id,
      url: apiLaunchServiceProviderMini.url,
      name: apiLaunchServiceProviderMini.name,
    );
  }

  final int id;
  final String url;
  final String name;
  final bool? featured;
  final String? type;
  final String? countryCode;
  final String? abbrev;
  final String? description;
  final String? administrator;
  final String? foundingYear;
  final String? launchers;
  final String? spacecraft;
  final int? totalLaunchCount;
  final int? consecutiveSuccessfulLaunches;
  final int? successfulLaunches;
  final int? failedLaunches;
  final int? pendingLaunches;
  final int? consecutiveSuccessfulLandings;
  final int? successfulLandings;
  final int? failedLandings;
  final int? attemptedLandings;
  final String? infoUrl;
  final String? wikiUrl;
  final String? logoUrl;
  final String? imageUrl;
  final String? nationUrl;

  Map<String, dynamic> toJson() => _$LaunchServiceProviderToJson(this);

  @override
  List<Object?> get props => [
        url,
        name,
        featured,
        type,
        countryCode,
        abbrev,
        description,
        administrator,
        foundingYear,
        launchers,
        spacecraft,
        totalLaunchCount,
        consecutiveSuccessfulLaunches,
        successfulLaunches,
        failedLaunches,
        pendingLaunches,
        consecutiveSuccessfulLandings,
        successfulLandings,
        failedLandings,
        attemptedLandings,
        infoUrl,
        wikiUrl,
        logoUrl,
        imageUrl,
        nationUrl,
      ];
}
