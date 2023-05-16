//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class LaunchApi {
  LaunchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<Response> launchListWithHttpInfo({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (agencyLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count', agencyLaunchAttemptCount));
    }
    if (agencyLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gt', agencyLaunchAttemptCountGt));
    }
    if (agencyLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gte', agencyLaunchAttemptCountGte));
    }
    if (agencyLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lt', agencyLaunchAttemptCountLt));
    }
    if (agencyLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lte', agencyLaunchAttemptCountLte));
    }
    if (agencyLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'agency_launch_attempt_count_year',
          agencyLaunchAttemptCountYear));
    }
    if (agencyLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gt',
          agencyLaunchAttemptCountYearGt));
    }
    if (agencyLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gte',
          agencyLaunchAttemptCountYearGte));
    }
    if (agencyLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lt',
          agencyLaunchAttemptCountYearLt));
    }
    if (agencyLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lte',
          agencyLaunchAttemptCountYearLte));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (includeSuborbital != null) {
      queryParams
          .addAll(_queryParams('', 'include_suborbital', includeSuborbital));
    }
    if (isCrewed != null) {
      queryParams.addAll(_queryParams('', 'is_crewed', isCrewed));
    }
    if (lastUpdatedGte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__gte', lastUpdatedGte));
    }
    if (lastUpdatedLte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__lte', lastUpdatedLte));
    }
    if (launcherConfigId != null) {
      queryParams
          .addAll(_queryParams('csv', 'launcher_config__id', launcherConfigId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (locationLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'location_launch_attempt_count', locationLaunchAttemptCount));
    }
    if (locationLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gt',
          locationLaunchAttemptCountGt));
    }
    if (locationLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gte',
          locationLaunchAttemptCountGte));
    }
    if (locationLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lt',
          locationLaunchAttemptCountLt));
    }
    if (locationLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lte',
          locationLaunchAttemptCountLte));
    }
    if (locationLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count_year',
          locationLaunchAttemptCountYear));
    }
    if (locationLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gt',
          locationLaunchAttemptCountYearGt));
    }
    if (locationLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gte',
          locationLaunchAttemptCountYearGte));
    }
    if (locationLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lt',
          locationLaunchAttemptCountYearLt));
    }
    if (locationLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lte',
          locationLaunchAttemptCountYearLte));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (missionOrbitName != null) {
      queryParams
          .addAll(_queryParams('', 'mission__orbit__name', missionOrbitName));
    }
    if (missionOrbitNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '', 'mission__orbit__name__icontains', missionOrbitNameIcontains));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (netGt != null) {
      queryParams.addAll(_queryParams('', 'net__gt', netGt));
    }
    if (netGte != null) {
      queryParams.addAll(_queryParams('', 'net__gte', netGte));
    }
    if (netLt != null) {
      queryParams.addAll(_queryParams('', 'net__lt', netLt));
    }
    if (netLte != null) {
      queryParams.addAll(_queryParams('', 'net__lte', netLte));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (orbitalLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count', orbitalLaunchAttemptCount));
    }
    if (orbitalLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__gt', orbitalLaunchAttemptCountGt));
    }
    if (orbitalLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__gte',
          orbitalLaunchAttemptCountGte));
    }
    if (orbitalLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__lt', orbitalLaunchAttemptCountLt));
    }
    if (orbitalLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__lte',
          orbitalLaunchAttemptCountLte));
    }
    if (orbitalLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count_year',
          orbitalLaunchAttemptCountYear));
    }
    if (orbitalLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gt',
          orbitalLaunchAttemptCountYearGt));
    }
    if (orbitalLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gte',
          orbitalLaunchAttemptCountYearGte));
    }
    if (orbitalLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lt',
          orbitalLaunchAttemptCountYearLt));
    }
    if (orbitalLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lte',
          orbitalLaunchAttemptCountYearLte));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (pad != null) {
      queryParams.addAll(_queryParams('', 'pad', pad));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (padLocation != null) {
      queryParams.addAll(_queryParams('', 'pad__location', padLocation));
    }
    if (padLaunchAttemptCount != null) {
      queryParams.addAll(
          _queryParams('', 'pad_launch_attempt_count', padLaunchAttemptCount));
    }
    if (padLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gt', padLaunchAttemptCountGt));
    }
    if (padLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gte', padLaunchAttemptCountGte));
    }
    if (padLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lt', padLaunchAttemptCountLt));
    }
    if (padLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lte', padLaunchAttemptCountLte));
    }
    if (padLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count_year', padLaunchAttemptCountYear));
    }
    if (padLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gt',
          padLaunchAttemptCountYearGt));
    }
    if (padLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gte',
          padLaunchAttemptCountYearGte));
    }
    if (padLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lt',
          padLaunchAttemptCountYearLt));
    }
    if (padLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lte',
          padLaunchAttemptCountYearLte));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (rSpacexApiId != null) {
      queryParams.addAll(_queryParams('', 'r_spacex_api_id', rSpacexApiId));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (rocketConfigurationFullName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__full_name', rocketConfigurationFullName));
    }
    if (rocketConfigurationFullNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__full_name__icontains',
          rocketConfigurationFullNameIcontains));
    }
    if (rocketConfigurationId != null) {
      queryParams.addAll(
          _queryParams('', 'rocket__configuration__id', rocketConfigurationId));
    }
    if (rocketConfigurationManufacturerName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name',
          rocketConfigurationManufacturerName));
    }
    if (rocketConfigurationManufacturerNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name__icontains',
          rocketConfigurationManufacturerNameIcontains));
    }
    if (rocketConfigurationName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__name', rocketConfigurationName));
    }
    if (rocketSpacecraftflightSpacecraftId != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__id',
          rocketSpacecraftflightSpacecraftId));
    }
    if (rocketSpacecraftflightSpacecraftName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name',
          rocketSpacecraftflightSpacecraftName));
    }
    if (rocketSpacecraftflightSpacecraftNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name__icontains',
          rocketSpacecraftflightSpacecraftNameIcontains));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('csv', 'serial_number', serialNumber));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (spacecraftConfigIds != null) {
      queryParams.addAll(
          _queryParams('csv', 'spacecraft_config__ids', spacecraftConfigIds));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statusIds != null) {
      queryParams.addAll(_queryParams('csv', 'status__ids', statusIds));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }
    if (windowEndGt != null) {
      queryParams.addAll(_queryParams('', 'window_end__gt', windowEndGt));
    }
    if (windowEndGte != null) {
      queryParams.addAll(_queryParams('', 'window_end__gte', windowEndGte));
    }
    if (windowEndLt != null) {
      queryParams.addAll(_queryParams('', 'window_end__lt', windowEndLt));
    }
    if (windowEndLte != null) {
      queryParams.addAll(_queryParams('', 'window_end__lte', windowEndLte));
    }
    if (windowStartGt != null) {
      queryParams.addAll(_queryParams('', 'window_start__gt', windowStartGt));
    }
    if (windowStartGte != null) {
      queryParams.addAll(_queryParams('', 'window_start__gte', windowStartGte));
    }
    if (windowStartLt != null) {
      queryParams.addAll(_queryParams('', 'window_start__lt', windowStartLt));
    }
    if (windowStartLte != null) {
      queryParams.addAll(_queryParams('', 'window_start__lte', windowStartLte));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<PaginatedLaunchSerializerCommonList?> launchList({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    final response = await launchListWithHttpInfo(
      agencyLaunchAttemptCount: agencyLaunchAttemptCount,
      agencyLaunchAttemptCountGt: agencyLaunchAttemptCountGt,
      agencyLaunchAttemptCountGte: agencyLaunchAttemptCountGte,
      agencyLaunchAttemptCountLt: agencyLaunchAttemptCountLt,
      agencyLaunchAttemptCountLte: agencyLaunchAttemptCountLte,
      agencyLaunchAttemptCountYear: agencyLaunchAttemptCountYear,
      agencyLaunchAttemptCountYearGt: agencyLaunchAttemptCountYearGt,
      agencyLaunchAttemptCountYearGte: agencyLaunchAttemptCountYearGte,
      agencyLaunchAttemptCountYearLt: agencyLaunchAttemptCountYearLt,
      agencyLaunchAttemptCountYearLte: agencyLaunchAttemptCountYearLte,
      id: id,
      includeSuborbital: includeSuborbital,
      isCrewed: isCrewed,
      lastUpdatedGte: lastUpdatedGte,
      lastUpdatedLte: lastUpdatedLte,
      launcherConfigId: launcherConfigId,
      limit: limit,
      locationIds: locationIds,
      locationLaunchAttemptCount: locationLaunchAttemptCount,
      locationLaunchAttemptCountGt: locationLaunchAttemptCountGt,
      locationLaunchAttemptCountGte: locationLaunchAttemptCountGte,
      locationLaunchAttemptCountLt: locationLaunchAttemptCountLt,
      locationLaunchAttemptCountLte: locationLaunchAttemptCountLte,
      locationLaunchAttemptCountYear: locationLaunchAttemptCountYear,
      locationLaunchAttemptCountYearGt: locationLaunchAttemptCountYearGt,
      locationLaunchAttemptCountYearGte: locationLaunchAttemptCountYearGte,
      locationLaunchAttemptCountYearLt: locationLaunchAttemptCountYearLt,
      locationLaunchAttemptCountYearLte: locationLaunchAttemptCountYearLte,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      missionOrbitName: missionOrbitName,
      missionOrbitNameIcontains: missionOrbitNameIcontains,
      name: name,
      netGt: netGt,
      netGte: netGte,
      netLt: netLt,
      netLte: netLte,
      offset: offset,
      orbitalLaunchAttemptCount: orbitalLaunchAttemptCount,
      orbitalLaunchAttemptCountGt: orbitalLaunchAttemptCountGt,
      orbitalLaunchAttemptCountGte: orbitalLaunchAttemptCountGte,
      orbitalLaunchAttemptCountLt: orbitalLaunchAttemptCountLt,
      orbitalLaunchAttemptCountLte: orbitalLaunchAttemptCountLte,
      orbitalLaunchAttemptCountYear: orbitalLaunchAttemptCountYear,
      orbitalLaunchAttemptCountYearGt: orbitalLaunchAttemptCountYearGt,
      orbitalLaunchAttemptCountYearGte: orbitalLaunchAttemptCountYearGte,
      orbitalLaunchAttemptCountYearLt: orbitalLaunchAttemptCountYearLt,
      orbitalLaunchAttemptCountYearLte: orbitalLaunchAttemptCountYearLte,
      ordering: ordering,
      pad: pad,
      padIds: padIds,
      padLocation: padLocation,
      padLaunchAttemptCount: padLaunchAttemptCount,
      padLaunchAttemptCountGt: padLaunchAttemptCountGt,
      padLaunchAttemptCountGte: padLaunchAttemptCountGte,
      padLaunchAttemptCountLt: padLaunchAttemptCountLt,
      padLaunchAttemptCountLte: padLaunchAttemptCountLte,
      padLaunchAttemptCountYear: padLaunchAttemptCountYear,
      padLaunchAttemptCountYearGt: padLaunchAttemptCountYearGt,
      padLaunchAttemptCountYearGte: padLaunchAttemptCountYearGte,
      padLaunchAttemptCountYearLt: padLaunchAttemptCountYearLt,
      padLaunchAttemptCountYearLte: padLaunchAttemptCountYearLte,
      program: program,
      rSpacexApiId: rSpacexApiId,
      related: related,
      rocketConfigurationFullName: rocketConfigurationFullName,
      rocketConfigurationFullNameIcontains:
          rocketConfigurationFullNameIcontains,
      rocketConfigurationId: rocketConfigurationId,
      rocketConfigurationManufacturerName: rocketConfigurationManufacturerName,
      rocketConfigurationManufacturerNameIcontains:
          rocketConfigurationManufacturerNameIcontains,
      rocketConfigurationName: rocketConfigurationName,
      rocketSpacecraftflightSpacecraftId: rocketSpacecraftflightSpacecraftId,
      rocketSpacecraftflightSpacecraftName:
          rocketSpacecraftflightSpacecraftName,
      rocketSpacecraftflightSpacecraftNameIcontains:
          rocketSpacecraftflightSpacecraftNameIcontains,
      search: search,
      serialNumber: serialNumber,
      slug: slug,
      spacecraftConfigIds: spacecraftConfigIds,
      status: status,
      statusIds: statusIds,
      strictFiltering: strictFiltering,
      windowEndGt: windowEndGt,
      windowEndGte: windowEndGte,
      windowEndLt: windowEndLt,
      windowEndLte: windowEndLte,
      windowStartGt: windowStartGt,
      windowStartGte: windowStartGte,
      windowStartLt: windowStartLt,
      windowStartLte: windowStartLte,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PaginatedLaunchSerializerCommonList',
      ) as PaginatedLaunchSerializerCommonList;
    }
    return null;
  }

  /// API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<Response> launchPreviousListWithHttpInfo({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/previous/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (agencyLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count', agencyLaunchAttemptCount));
    }
    if (agencyLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gt', agencyLaunchAttemptCountGt));
    }
    if (agencyLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gte', agencyLaunchAttemptCountGte));
    }
    if (agencyLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lt', agencyLaunchAttemptCountLt));
    }
    if (agencyLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lte', agencyLaunchAttemptCountLte));
    }
    if (agencyLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'agency_launch_attempt_count_year',
          agencyLaunchAttemptCountYear));
    }
    if (agencyLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gt',
          agencyLaunchAttemptCountYearGt));
    }
    if (agencyLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gte',
          agencyLaunchAttemptCountYearGte));
    }
    if (agencyLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lt',
          agencyLaunchAttemptCountYearLt));
    }
    if (agencyLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lte',
          agencyLaunchAttemptCountYearLte));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (includeSuborbital != null) {
      queryParams
          .addAll(_queryParams('', 'include_suborbital', includeSuborbital));
    }
    if (isCrewed != null) {
      queryParams.addAll(_queryParams('', 'is_crewed', isCrewed));
    }
    if (lastUpdatedGte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__gte', lastUpdatedGte));
    }
    if (lastUpdatedLte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__lte', lastUpdatedLte));
    }
    if (launcherConfigId != null) {
      queryParams
          .addAll(_queryParams('csv', 'launcher_config__id', launcherConfigId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (locationLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'location_launch_attempt_count', locationLaunchAttemptCount));
    }
    if (locationLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gt',
          locationLaunchAttemptCountGt));
    }
    if (locationLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gte',
          locationLaunchAttemptCountGte));
    }
    if (locationLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lt',
          locationLaunchAttemptCountLt));
    }
    if (locationLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lte',
          locationLaunchAttemptCountLte));
    }
    if (locationLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count_year',
          locationLaunchAttemptCountYear));
    }
    if (locationLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gt',
          locationLaunchAttemptCountYearGt));
    }
    if (locationLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gte',
          locationLaunchAttemptCountYearGte));
    }
    if (locationLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lt',
          locationLaunchAttemptCountYearLt));
    }
    if (locationLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lte',
          locationLaunchAttemptCountYearLte));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (missionOrbitName != null) {
      queryParams
          .addAll(_queryParams('', 'mission__orbit__name', missionOrbitName));
    }
    if (missionOrbitNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '', 'mission__orbit__name__icontains', missionOrbitNameIcontains));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (netGt != null) {
      queryParams.addAll(_queryParams('', 'net__gt', netGt));
    }
    if (netGte != null) {
      queryParams.addAll(_queryParams('', 'net__gte', netGte));
    }
    if (netLt != null) {
      queryParams.addAll(_queryParams('', 'net__lt', netLt));
    }
    if (netLte != null) {
      queryParams.addAll(_queryParams('', 'net__lte', netLte));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (orbitalLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count', orbitalLaunchAttemptCount));
    }
    if (orbitalLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__gt', orbitalLaunchAttemptCountGt));
    }
    if (orbitalLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__gte',
          orbitalLaunchAttemptCountGte));
    }
    if (orbitalLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__lt', orbitalLaunchAttemptCountLt));
    }
    if (orbitalLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__lte',
          orbitalLaunchAttemptCountLte));
    }
    if (orbitalLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count_year',
          orbitalLaunchAttemptCountYear));
    }
    if (orbitalLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gt',
          orbitalLaunchAttemptCountYearGt));
    }
    if (orbitalLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gte',
          orbitalLaunchAttemptCountYearGte));
    }
    if (orbitalLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lt',
          orbitalLaunchAttemptCountYearLt));
    }
    if (orbitalLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lte',
          orbitalLaunchAttemptCountYearLte));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (pad != null) {
      queryParams.addAll(_queryParams('', 'pad', pad));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (padLocation != null) {
      queryParams.addAll(_queryParams('', 'pad__location', padLocation));
    }
    if (padLaunchAttemptCount != null) {
      queryParams.addAll(
          _queryParams('', 'pad_launch_attempt_count', padLaunchAttemptCount));
    }
    if (padLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gt', padLaunchAttemptCountGt));
    }
    if (padLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gte', padLaunchAttemptCountGte));
    }
    if (padLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lt', padLaunchAttemptCountLt));
    }
    if (padLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lte', padLaunchAttemptCountLte));
    }
    if (padLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count_year', padLaunchAttemptCountYear));
    }
    if (padLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gt',
          padLaunchAttemptCountYearGt));
    }
    if (padLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gte',
          padLaunchAttemptCountYearGte));
    }
    if (padLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lt',
          padLaunchAttemptCountYearLt));
    }
    if (padLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lte',
          padLaunchAttemptCountYearLte));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (rSpacexApiId != null) {
      queryParams.addAll(_queryParams('', 'r_spacex_api_id', rSpacexApiId));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (rocketConfigurationFullName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__full_name', rocketConfigurationFullName));
    }
    if (rocketConfigurationFullNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__full_name__icontains',
          rocketConfigurationFullNameIcontains));
    }
    if (rocketConfigurationId != null) {
      queryParams.addAll(
          _queryParams('', 'rocket__configuration__id', rocketConfigurationId));
    }
    if (rocketConfigurationManufacturerName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name',
          rocketConfigurationManufacturerName));
    }
    if (rocketConfigurationManufacturerNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name__icontains',
          rocketConfigurationManufacturerNameIcontains));
    }
    if (rocketConfigurationName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__name', rocketConfigurationName));
    }
    if (rocketSpacecraftflightSpacecraftId != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__id',
          rocketSpacecraftflightSpacecraftId));
    }
    if (rocketSpacecraftflightSpacecraftName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name',
          rocketSpacecraftflightSpacecraftName));
    }
    if (rocketSpacecraftflightSpacecraftNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name__icontains',
          rocketSpacecraftflightSpacecraftNameIcontains));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('csv', 'serial_number', serialNumber));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (spacecraftConfigIds != null) {
      queryParams.addAll(
          _queryParams('csv', 'spacecraft_config__ids', spacecraftConfigIds));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statusIds != null) {
      queryParams.addAll(_queryParams('csv', 'status__ids', statusIds));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }
    if (windowEndGt != null) {
      queryParams.addAll(_queryParams('', 'window_end__gt', windowEndGt));
    }
    if (windowEndGte != null) {
      queryParams.addAll(_queryParams('', 'window_end__gte', windowEndGte));
    }
    if (windowEndLt != null) {
      queryParams.addAll(_queryParams('', 'window_end__lt', windowEndLt));
    }
    if (windowEndLte != null) {
      queryParams.addAll(_queryParams('', 'window_end__lte', windowEndLte));
    }
    if (windowStartGt != null) {
      queryParams.addAll(_queryParams('', 'window_start__gt', windowStartGt));
    }
    if (windowStartGte != null) {
      queryParams.addAll(_queryParams('', 'window_start__gte', windowStartGte));
    }
    if (windowStartLt != null) {
      queryParams.addAll(_queryParams('', 'window_start__lt', windowStartLt));
    }
    if (windowStartLte != null) {
      queryParams.addAll(_queryParams('', 'window_start__lte', windowStartLte));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<PaginatedLaunchSerializerCommonList?> launchPreviousList({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    final response = await launchPreviousListWithHttpInfo(
      agencyLaunchAttemptCount: agencyLaunchAttemptCount,
      agencyLaunchAttemptCountGt: agencyLaunchAttemptCountGt,
      agencyLaunchAttemptCountGte: agencyLaunchAttemptCountGte,
      agencyLaunchAttemptCountLt: agencyLaunchAttemptCountLt,
      agencyLaunchAttemptCountLte: agencyLaunchAttemptCountLte,
      agencyLaunchAttemptCountYear: agencyLaunchAttemptCountYear,
      agencyLaunchAttemptCountYearGt: agencyLaunchAttemptCountYearGt,
      agencyLaunchAttemptCountYearGte: agencyLaunchAttemptCountYearGte,
      agencyLaunchAttemptCountYearLt: agencyLaunchAttemptCountYearLt,
      agencyLaunchAttemptCountYearLte: agencyLaunchAttemptCountYearLte,
      id: id,
      includeSuborbital: includeSuborbital,
      isCrewed: isCrewed,
      lastUpdatedGte: lastUpdatedGte,
      lastUpdatedLte: lastUpdatedLte,
      launcherConfigId: launcherConfigId,
      limit: limit,
      locationIds: locationIds,
      locationLaunchAttemptCount: locationLaunchAttemptCount,
      locationLaunchAttemptCountGt: locationLaunchAttemptCountGt,
      locationLaunchAttemptCountGte: locationLaunchAttemptCountGte,
      locationLaunchAttemptCountLt: locationLaunchAttemptCountLt,
      locationLaunchAttemptCountLte: locationLaunchAttemptCountLte,
      locationLaunchAttemptCountYear: locationLaunchAttemptCountYear,
      locationLaunchAttemptCountYearGt: locationLaunchAttemptCountYearGt,
      locationLaunchAttemptCountYearGte: locationLaunchAttemptCountYearGte,
      locationLaunchAttemptCountYearLt: locationLaunchAttemptCountYearLt,
      locationLaunchAttemptCountYearLte: locationLaunchAttemptCountYearLte,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      missionOrbitName: missionOrbitName,
      missionOrbitNameIcontains: missionOrbitNameIcontains,
      name: name,
      netGt: netGt,
      netGte: netGte,
      netLt: netLt,
      netLte: netLte,
      offset: offset,
      orbitalLaunchAttemptCount: orbitalLaunchAttemptCount,
      orbitalLaunchAttemptCountGt: orbitalLaunchAttemptCountGt,
      orbitalLaunchAttemptCountGte: orbitalLaunchAttemptCountGte,
      orbitalLaunchAttemptCountLt: orbitalLaunchAttemptCountLt,
      orbitalLaunchAttemptCountLte: orbitalLaunchAttemptCountLte,
      orbitalLaunchAttemptCountYear: orbitalLaunchAttemptCountYear,
      orbitalLaunchAttemptCountYearGt: orbitalLaunchAttemptCountYearGt,
      orbitalLaunchAttemptCountYearGte: orbitalLaunchAttemptCountYearGte,
      orbitalLaunchAttemptCountYearLt: orbitalLaunchAttemptCountYearLt,
      orbitalLaunchAttemptCountYearLte: orbitalLaunchAttemptCountYearLte,
      ordering: ordering,
      pad: pad,
      padIds: padIds,
      padLocation: padLocation,
      padLaunchAttemptCount: padLaunchAttemptCount,
      padLaunchAttemptCountGt: padLaunchAttemptCountGt,
      padLaunchAttemptCountGte: padLaunchAttemptCountGte,
      padLaunchAttemptCountLt: padLaunchAttemptCountLt,
      padLaunchAttemptCountLte: padLaunchAttemptCountLte,
      padLaunchAttemptCountYear: padLaunchAttemptCountYear,
      padLaunchAttemptCountYearGt: padLaunchAttemptCountYearGt,
      padLaunchAttemptCountYearGte: padLaunchAttemptCountYearGte,
      padLaunchAttemptCountYearLt: padLaunchAttemptCountYearLt,
      padLaunchAttemptCountYearLte: padLaunchAttemptCountYearLte,
      program: program,
      rSpacexApiId: rSpacexApiId,
      related: related,
      rocketConfigurationFullName: rocketConfigurationFullName,
      rocketConfigurationFullNameIcontains:
          rocketConfigurationFullNameIcontains,
      rocketConfigurationId: rocketConfigurationId,
      rocketConfigurationManufacturerName: rocketConfigurationManufacturerName,
      rocketConfigurationManufacturerNameIcontains:
          rocketConfigurationManufacturerNameIcontains,
      rocketConfigurationName: rocketConfigurationName,
      rocketSpacecraftflightSpacecraftId: rocketSpacecraftflightSpacecraftId,
      rocketSpacecraftflightSpacecraftName:
          rocketSpacecraftflightSpacecraftName,
      rocketSpacecraftflightSpacecraftNameIcontains:
          rocketSpacecraftflightSpacecraftNameIcontains,
      search: search,
      serialNumber: serialNumber,
      slug: slug,
      spacecraftConfigIds: spacecraftConfigIds,
      status: status,
      statusIds: statusIds,
      strictFiltering: strictFiltering,
      windowEndGt: windowEndGt,
      windowEndGte: windowEndGte,
      windowEndLt: windowEndLt,
      windowEndLte: windowEndLte,
      windowStartGt: windowStartGt,
      windowStartGte: windowStartGte,
      windowStartLt: windowStartLt,
      windowStartLte: windowStartLte,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PaginatedLaunchSerializerCommonList',
      ) as PaginatedLaunchSerializerCommonList;
    }
    return null;
  }

  /// API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<Response> launchPreviousRetrieveWithHttpInfo(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/previous/{id}/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<LaunchDetailed?> launchPreviousRetrieve(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    final response = await launchPreviousRetrieveWithHttpInfo(
      id,
      locationIds: locationIds,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      padIds: padIds,
      related: related,
      strictFiltering: strictFiltering,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'LaunchDetailed',
      ) as LaunchDetailed;
    }
    return null;
  }

  /// API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<Response> launchRetrieveWithHttpInfo(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/{id}/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<LaunchDetailed?> launchRetrieve(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    final response = await launchRetrieveWithHttpInfo(
      id,
      locationIds: locationIds,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      padIds: padIds,
      related: related,
      strictFiltering: strictFiltering,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'LaunchDetailed',
      ) as LaunchDetailed;
    }
    return null;
  }

  /// API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [bool] hideRecentPrevious:
  ///   Hide launches from the past 24 hours, which are included by default for convenience.
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<Response> launchUpcomingListWithHttpInfo({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    bool? hideRecentPrevious,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/upcoming/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (agencyLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count', agencyLaunchAttemptCount));
    }
    if (agencyLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gt', agencyLaunchAttemptCountGt));
    }
    if (agencyLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__gte', agencyLaunchAttemptCountGte));
    }
    if (agencyLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lt', agencyLaunchAttemptCountLt));
    }
    if (agencyLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'agency_launch_attempt_count__lte', agencyLaunchAttemptCountLte));
    }
    if (agencyLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'agency_launch_attempt_count_year',
          agencyLaunchAttemptCountYear));
    }
    if (agencyLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gt',
          agencyLaunchAttemptCountYearGt));
    }
    if (agencyLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__gte',
          agencyLaunchAttemptCountYearGte));
    }
    if (agencyLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lt',
          agencyLaunchAttemptCountYearLt));
    }
    if (agencyLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'agency_launch_attempt_count_year__lte',
          agencyLaunchAttemptCountYearLte));
    }
    if (hideRecentPrevious != null) {
      queryParams
          .addAll(_queryParams('', 'hide_recent_previous', hideRecentPrevious));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (includeSuborbital != null) {
      queryParams
          .addAll(_queryParams('', 'include_suborbital', includeSuborbital));
    }
    if (isCrewed != null) {
      queryParams.addAll(_queryParams('', 'is_crewed', isCrewed));
    }
    if (lastUpdatedGte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__gte', lastUpdatedGte));
    }
    if (lastUpdatedLte != null) {
      queryParams.addAll(_queryParams('', 'last_updated__lte', lastUpdatedLte));
    }
    if (launcherConfigId != null) {
      queryParams
          .addAll(_queryParams('csv', 'launcher_config__id', launcherConfigId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (locationLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'location_launch_attempt_count', locationLaunchAttemptCount));
    }
    if (locationLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gt',
          locationLaunchAttemptCountGt));
    }
    if (locationLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__gte',
          locationLaunchAttemptCountGte));
    }
    if (locationLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lt',
          locationLaunchAttemptCountLt));
    }
    if (locationLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count__lte',
          locationLaunchAttemptCountLte));
    }
    if (locationLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'location_launch_attempt_count_year',
          locationLaunchAttemptCountYear));
    }
    if (locationLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gt',
          locationLaunchAttemptCountYearGt));
    }
    if (locationLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__gte',
          locationLaunchAttemptCountYearGte));
    }
    if (locationLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lt',
          locationLaunchAttemptCountYearLt));
    }
    if (locationLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'location_launch_attempt_count_year__lte',
          locationLaunchAttemptCountYearLte));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (missionOrbitName != null) {
      queryParams
          .addAll(_queryParams('', 'mission__orbit__name', missionOrbitName));
    }
    if (missionOrbitNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '', 'mission__orbit__name__icontains', missionOrbitNameIcontains));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (netGt != null) {
      queryParams.addAll(_queryParams('', 'net__gt', netGt));
    }
    if (netGte != null) {
      queryParams.addAll(_queryParams('', 'net__gte', netGte));
    }
    if (netLt != null) {
      queryParams.addAll(_queryParams('', 'net__lt', netLt));
    }
    if (netLte != null) {
      queryParams.addAll(_queryParams('', 'net__lte', netLte));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (orbitalLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count', orbitalLaunchAttemptCount));
    }
    if (orbitalLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__gt', orbitalLaunchAttemptCountGt));
    }
    if (orbitalLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__gte',
          orbitalLaunchAttemptCountGte));
    }
    if (orbitalLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'orbital_launch_attempt_count__lt', orbitalLaunchAttemptCountLt));
    }
    if (orbitalLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__lte',
          orbitalLaunchAttemptCountLte));
    }
    if (orbitalLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count_year',
          orbitalLaunchAttemptCountYear));
    }
    if (orbitalLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gt',
          orbitalLaunchAttemptCountYearGt));
    }
    if (orbitalLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__gte',
          orbitalLaunchAttemptCountYearGte));
    }
    if (orbitalLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lt',
          orbitalLaunchAttemptCountYearLt));
    }
    if (orbitalLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams(
          '',
          'orbital_launch_attempt_count_year__lte',
          orbitalLaunchAttemptCountYearLte));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (pad != null) {
      queryParams.addAll(_queryParams('', 'pad', pad));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (padLocation != null) {
      queryParams.addAll(_queryParams('', 'pad__location', padLocation));
    }
    if (padLaunchAttemptCount != null) {
      queryParams.addAll(
          _queryParams('', 'pad_launch_attempt_count', padLaunchAttemptCount));
    }
    if (padLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gt', padLaunchAttemptCountGt));
    }
    if (padLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__gte', padLaunchAttemptCountGte));
    }
    if (padLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lt', padLaunchAttemptCountLt));
    }
    if (padLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count__lte', padLaunchAttemptCountLte));
    }
    if (padLaunchAttemptCountYear != null) {
      queryParams.addAll(_queryParams(
          '', 'pad_launch_attempt_count_year', padLaunchAttemptCountYear));
    }
    if (padLaunchAttemptCountYearGt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gt',
          padLaunchAttemptCountYearGt));
    }
    if (padLaunchAttemptCountYearGte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__gte',
          padLaunchAttemptCountYearGte));
    }
    if (padLaunchAttemptCountYearLt != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lt',
          padLaunchAttemptCountYearLt));
    }
    if (padLaunchAttemptCountYearLte != null) {
      queryParams.addAll(_queryParams('', 'pad_launch_attempt_count_year__lte',
          padLaunchAttemptCountYearLte));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (rSpacexApiId != null) {
      queryParams.addAll(_queryParams('', 'r_spacex_api_id', rSpacexApiId));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (rocketConfigurationFullName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__full_name', rocketConfigurationFullName));
    }
    if (rocketConfigurationFullNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__full_name__icontains',
          rocketConfigurationFullNameIcontains));
    }
    if (rocketConfigurationId != null) {
      queryParams.addAll(
          _queryParams('', 'rocket__configuration__id', rocketConfigurationId));
    }
    if (rocketConfigurationManufacturerName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name',
          rocketConfigurationManufacturerName));
    }
    if (rocketConfigurationManufacturerNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__configuration__manufacturer__name__icontains',
          rocketConfigurationManufacturerNameIcontains));
    }
    if (rocketConfigurationName != null) {
      queryParams.addAll(_queryParams(
          '', 'rocket__configuration__name', rocketConfigurationName));
    }
    if (rocketSpacecraftflightSpacecraftId != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__id',
          rocketSpacecraftflightSpacecraftId));
    }
    if (rocketSpacecraftflightSpacecraftName != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name',
          rocketSpacecraftflightSpacecraftName));
    }
    if (rocketSpacecraftflightSpacecraftNameIcontains != null) {
      queryParams.addAll(_queryParams(
          '',
          'rocket__spacecraftflight__spacecraft__name__icontains',
          rocketSpacecraftflightSpacecraftNameIcontains));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('csv', 'serial_number', serialNumber));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (spacecraftConfigIds != null) {
      queryParams.addAll(
          _queryParams('csv', 'spacecraft_config__ids', spacecraftConfigIds));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statusIds != null) {
      queryParams.addAll(_queryParams('csv', 'status__ids', statusIds));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }
    if (windowEndGt != null) {
      queryParams.addAll(_queryParams('', 'window_end__gt', windowEndGt));
    }
    if (windowEndGte != null) {
      queryParams.addAll(_queryParams('', 'window_end__gte', windowEndGte));
    }
    if (windowEndLt != null) {
      queryParams.addAll(_queryParams('', 'window_end__lt', windowEndLt));
    }
    if (windowEndLte != null) {
      queryParams.addAll(_queryParams('', 'window_end__lte', windowEndLte));
    }
    if (windowStartGt != null) {
      queryParams.addAll(_queryParams('', 'window_start__gt', windowStartGt));
    }
    if (windowStartGte != null) {
      queryParams.addAll(_queryParams('', 'window_start__gte', windowStartGte));
    }
    if (windowStartLt != null) {
      queryParams.addAll(_queryParams('', 'window_start__lt', windowStartLt));
    }
    if (windowStartLte != null) {
      queryParams.addAll(_queryParams('', 'window_start__lte', windowStartLte));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [int] agencyLaunchAttemptCount:
  ///
  /// * [int] agencyLaunchAttemptCountGt:
  ///
  /// * [int] agencyLaunchAttemptCountGte:
  ///
  /// * [int] agencyLaunchAttemptCountLt:
  ///
  /// * [int] agencyLaunchAttemptCountLte:
  ///
  /// * [int] agencyLaunchAttemptCountYear:
  ///
  /// * [int] agencyLaunchAttemptCountYearGt:
  ///
  /// * [int] agencyLaunchAttemptCountYearGte:
  ///
  /// * [int] agencyLaunchAttemptCountYearLt:
  ///
  /// * [int] agencyLaunchAttemptCountYearLte:
  ///
  /// * [bool] hideRecentPrevious:
  ///   Hide launches from the past 24 hours, which are included by default for convenience.
  ///
  /// * [List<String>] id:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] includeSuborbital:
  ///
  /// * [bool] isCrewed:
  ///
  /// * [DateTime] lastUpdatedGte:
  ///   Last Update is greater than or equal to
  ///
  /// * [DateTime] lastUpdatedLte:
  ///   Last Update is less than or equal to
  ///
  /// * [List<int>] launcherConfigId:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] locationLaunchAttemptCount:
  ///
  /// * [int] locationLaunchAttemptCountGt:
  ///
  /// * [int] locationLaunchAttemptCountGte:
  ///
  /// * [int] locationLaunchAttemptCountLt:
  ///
  /// * [int] locationLaunchAttemptCountLte:
  ///
  /// * [int] locationLaunchAttemptCountYear:
  ///
  /// * [int] locationLaunchAttemptCountYearGt:
  ///
  /// * [int] locationLaunchAttemptCountYearGte:
  ///
  /// * [int] locationLaunchAttemptCountYearLt:
  ///
  /// * [int] locationLaunchAttemptCountYearLte:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [String] missionOrbitName:
  ///
  /// * [String] missionOrbitNameIcontains:
  ///
  /// * [String] name:
  ///
  /// * [DateTime] netGt:
  ///   NET is greater than
  ///
  /// * [DateTime] netGte:
  ///   NET is greater than or equal to
  ///
  /// * [DateTime] netLt:
  ///   NET is less than
  ///
  /// * [DateTime] netLte:
  ///   NET is less than or equal to
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [int] orbitalLaunchAttemptCountYear:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearGte:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLt:
  ///
  /// * [int] orbitalLaunchAttemptCountYearLte:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] pad:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [int] padLocation:
  ///
  /// * [int] padLaunchAttemptCount:
  ///
  /// * [int] padLaunchAttemptCountGt:
  ///
  /// * [int] padLaunchAttemptCountGte:
  ///
  /// * [int] padLaunchAttemptCountLt:
  ///
  /// * [int] padLaunchAttemptCountLte:
  ///
  /// * [int] padLaunchAttemptCountYear:
  ///
  /// * [int] padLaunchAttemptCountYearGt:
  ///
  /// * [int] padLaunchAttemptCountYearGte:
  ///
  /// * [int] padLaunchAttemptCountYearLt:
  ///
  /// * [int] padLaunchAttemptCountYearLte:
  ///
  /// * [List<int>] program:
  ///
  /// * [String] rSpacexApiId:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [String] rocketConfigurationFullName:
  ///
  /// * [String] rocketConfigurationFullNameIcontains:
  ///
  /// * [int] rocketConfigurationId:
  ///
  /// * [String] rocketConfigurationManufacturerName:
  ///
  /// * [String] rocketConfigurationManufacturerNameIcontains:
  ///
  /// * [String] rocketConfigurationName:
  ///
  /// * [int] rocketSpacecraftflightSpacecraftId:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftName:
  ///
  /// * [String] rocketSpacecraftflightSpacecraftNameIcontains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<String>] serialNumber:
  ///   Comma-separated first stage booster serial numbers.
  ///
  /// * [String] slug:
  ///
  /// * [List<int>] spacecraftConfigIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  ///
  /// * [DateTime] windowEndGt:
  ///   Window End is greater than
  ///
  /// * [DateTime] windowEndGte:
  ///   Window End is greater than or equal to
  ///
  /// * [DateTime] windowEndLt:
  ///   Window End is less than
  ///
  /// * [DateTime] windowEndLte:
  ///   Window End is less than or equal to
  ///
  /// * [DateTime] windowStartGt:
  ///   Window Start is greater than
  ///
  /// * [DateTime] windowStartGte:
  ///   Window Start is greater than or equal to
  ///
  /// * [DateTime] windowStartLt:
  ///   Window Start is less than
  ///
  /// * [DateTime] windowStartLte:
  ///   Window Start is less than or equal to
  Future<PaginatedLaunchSerializerCommonList?> launchUpcomingList({
    int? agencyLaunchAttemptCount,
    int? agencyLaunchAttemptCountGt,
    int? agencyLaunchAttemptCountGte,
    int? agencyLaunchAttemptCountLt,
    int? agencyLaunchAttemptCountLte,
    int? agencyLaunchAttemptCountYear,
    int? agencyLaunchAttemptCountYearGt,
    int? agencyLaunchAttemptCountYearGte,
    int? agencyLaunchAttemptCountYearLt,
    int? agencyLaunchAttemptCountYearLte,
    bool? hideRecentPrevious,
    List<String>? id,
    bool? includeSuborbital,
    bool? isCrewed,
    DateTime? lastUpdatedGte,
    DateTime? lastUpdatedLte,
    List<int>? launcherConfigId,
    int? limit,
    List<int>? locationIds,
    int? locationLaunchAttemptCount,
    int? locationLaunchAttemptCountGt,
    int? locationLaunchAttemptCountGte,
    int? locationLaunchAttemptCountLt,
    int? locationLaunchAttemptCountLte,
    int? locationLaunchAttemptCountYear,
    int? locationLaunchAttemptCountYearGt,
    int? locationLaunchAttemptCountYearGte,
    int? locationLaunchAttemptCountYearLt,
    int? locationLaunchAttemptCountYearLte,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    String? missionOrbitName,
    String? missionOrbitNameIcontains,
    String? name,
    DateTime? netGt,
    DateTime? netGte,
    DateTime? netLt,
    DateTime? netLte,
    int? offset,
    int? orbitalLaunchAttemptCount,
    int? orbitalLaunchAttemptCountGt,
    int? orbitalLaunchAttemptCountGte,
    int? orbitalLaunchAttemptCountLt,
    int? orbitalLaunchAttemptCountLte,
    int? orbitalLaunchAttemptCountYear,
    int? orbitalLaunchAttemptCountYearGt,
    int? orbitalLaunchAttemptCountYearGte,
    int? orbitalLaunchAttemptCountYearLt,
    int? orbitalLaunchAttemptCountYearLte,
    String? ordering,
    int? pad,
    List<int>? padIds,
    int? padLocation,
    int? padLaunchAttemptCount,
    int? padLaunchAttemptCountGt,
    int? padLaunchAttemptCountGte,
    int? padLaunchAttemptCountLt,
    int? padLaunchAttemptCountLte,
    int? padLaunchAttemptCountYear,
    int? padLaunchAttemptCountYearGt,
    int? padLaunchAttemptCountYearGte,
    int? padLaunchAttemptCountYearLt,
    int? padLaunchAttemptCountYearLte,
    List<int>? program,
    String? rSpacexApiId,
    bool? related,
    String? rocketConfigurationFullName,
    String? rocketConfigurationFullNameIcontains,
    int? rocketConfigurationId,
    String? rocketConfigurationManufacturerName,
    String? rocketConfigurationManufacturerNameIcontains,
    String? rocketConfigurationName,
    int? rocketSpacecraftflightSpacecraftId,
    String? rocketSpacecraftflightSpacecraftName,
    String? rocketSpacecraftflightSpacecraftNameIcontains,
    String? search,
    List<String>? serialNumber,
    String? slug,
    List<int>? spacecraftConfigIds,
    int? status,
    List<int>? statusIds,
    bool? strictFiltering,
    DateTime? windowEndGt,
    DateTime? windowEndGte,
    DateTime? windowEndLt,
    DateTime? windowEndLte,
    DateTime? windowStartGt,
    DateTime? windowStartGte,
    DateTime? windowStartLt,
    DateTime? windowStartLte,
  }) async {
    final response = await launchUpcomingListWithHttpInfo(
      agencyLaunchAttemptCount: agencyLaunchAttemptCount,
      agencyLaunchAttemptCountGt: agencyLaunchAttemptCountGt,
      agencyLaunchAttemptCountGte: agencyLaunchAttemptCountGte,
      agencyLaunchAttemptCountLt: agencyLaunchAttemptCountLt,
      agencyLaunchAttemptCountLte: agencyLaunchAttemptCountLte,
      agencyLaunchAttemptCountYear: agencyLaunchAttemptCountYear,
      agencyLaunchAttemptCountYearGt: agencyLaunchAttemptCountYearGt,
      agencyLaunchAttemptCountYearGte: agencyLaunchAttemptCountYearGte,
      agencyLaunchAttemptCountYearLt: agencyLaunchAttemptCountYearLt,
      agencyLaunchAttemptCountYearLte: agencyLaunchAttemptCountYearLte,
      hideRecentPrevious: hideRecentPrevious,
      id: id,
      includeSuborbital: includeSuborbital,
      isCrewed: isCrewed,
      lastUpdatedGte: lastUpdatedGte,
      lastUpdatedLte: lastUpdatedLte,
      launcherConfigId: launcherConfigId,
      limit: limit,
      locationIds: locationIds,
      locationLaunchAttemptCount: locationLaunchAttemptCount,
      locationLaunchAttemptCountGt: locationLaunchAttemptCountGt,
      locationLaunchAttemptCountGte: locationLaunchAttemptCountGte,
      locationLaunchAttemptCountLt: locationLaunchAttemptCountLt,
      locationLaunchAttemptCountLte: locationLaunchAttemptCountLte,
      locationLaunchAttemptCountYear: locationLaunchAttemptCountYear,
      locationLaunchAttemptCountYearGt: locationLaunchAttemptCountYearGt,
      locationLaunchAttemptCountYearGte: locationLaunchAttemptCountYearGte,
      locationLaunchAttemptCountYearLt: locationLaunchAttemptCountYearLt,
      locationLaunchAttemptCountYearLte: locationLaunchAttemptCountYearLte,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      missionOrbitName: missionOrbitName,
      missionOrbitNameIcontains: missionOrbitNameIcontains,
      name: name,
      netGt: netGt,
      netGte: netGte,
      netLt: netLt,
      netLte: netLte,
      offset: offset,
      orbitalLaunchAttemptCount: orbitalLaunchAttemptCount,
      orbitalLaunchAttemptCountGt: orbitalLaunchAttemptCountGt,
      orbitalLaunchAttemptCountGte: orbitalLaunchAttemptCountGte,
      orbitalLaunchAttemptCountLt: orbitalLaunchAttemptCountLt,
      orbitalLaunchAttemptCountLte: orbitalLaunchAttemptCountLte,
      orbitalLaunchAttemptCountYear: orbitalLaunchAttemptCountYear,
      orbitalLaunchAttemptCountYearGt: orbitalLaunchAttemptCountYearGt,
      orbitalLaunchAttemptCountYearGte: orbitalLaunchAttemptCountYearGte,
      orbitalLaunchAttemptCountYearLt: orbitalLaunchAttemptCountYearLt,
      orbitalLaunchAttemptCountYearLte: orbitalLaunchAttemptCountYearLte,
      ordering: ordering,
      pad: pad,
      padIds: padIds,
      padLocation: padLocation,
      padLaunchAttemptCount: padLaunchAttemptCount,
      padLaunchAttemptCountGt: padLaunchAttemptCountGt,
      padLaunchAttemptCountGte: padLaunchAttemptCountGte,
      padLaunchAttemptCountLt: padLaunchAttemptCountLt,
      padLaunchAttemptCountLte: padLaunchAttemptCountLte,
      padLaunchAttemptCountYear: padLaunchAttemptCountYear,
      padLaunchAttemptCountYearGt: padLaunchAttemptCountYearGt,
      padLaunchAttemptCountYearGte: padLaunchAttemptCountYearGte,
      padLaunchAttemptCountYearLt: padLaunchAttemptCountYearLt,
      padLaunchAttemptCountYearLte: padLaunchAttemptCountYearLte,
      program: program,
      rSpacexApiId: rSpacexApiId,
      related: related,
      rocketConfigurationFullName: rocketConfigurationFullName,
      rocketConfigurationFullNameIcontains:
          rocketConfigurationFullNameIcontains,
      rocketConfigurationId: rocketConfigurationId,
      rocketConfigurationManufacturerName: rocketConfigurationManufacturerName,
      rocketConfigurationManufacturerNameIcontains:
          rocketConfigurationManufacturerNameIcontains,
      rocketConfigurationName: rocketConfigurationName,
      rocketSpacecraftflightSpacecraftId: rocketSpacecraftflightSpacecraftId,
      rocketSpacecraftflightSpacecraftName:
          rocketSpacecraftflightSpacecraftName,
      rocketSpacecraftflightSpacecraftNameIcontains:
          rocketSpacecraftflightSpacecraftNameIcontains,
      search: search,
      serialNumber: serialNumber,
      slug: slug,
      spacecraftConfigIds: spacecraftConfigIds,
      status: status,
      statusIds: statusIds,
      strictFiltering: strictFiltering,
      windowEndGt: windowEndGt,
      windowEndGte: windowEndGte,
      windowEndLt: windowEndLt,
      windowEndLte: windowEndLte,
      windowStartGt: windowStartGt,
      windowStartGte: windowStartGte,
      windowStartLt: windowStartLt,
      windowStartLte: windowStartLte,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PaginatedLaunchSerializerCommonList',
      ) as PaginatedLaunchSerializerCommonList;
    }
    return null;
  }

  /// API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<Response> launchUpcomingRetrieveWithHttpInfo(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launch/upcoming/{id}/'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (locationIds != null) {
      queryParams.addAll(_queryParams('multi', 'location__ids', locationIds));
    }
    if (lspId != null) {
      queryParams.addAll(_queryParams('', 'lsp__id', lspId));
    }
    if (lspIds != null) {
      queryParams.addAll(_queryParams('multi', 'lsp__ids', lspIds));
    }
    if (lspName != null) {
      queryParams.addAll(_queryParams('', 'lsp__name', lspName));
    }
    if (padIds != null) {
      queryParams.addAll(_queryParams('multi', 'pad__ids', padIds));
    }
    if (related != null) {
      queryParams.addAll(_queryParams('', 'related', related));
    }
    if (strictFiltering != null) {
      queryParams.addAll(_queryParams('', 'strict_filtering', strictFiltering));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A UUID string identifying this Launch.
  ///
  /// * [List<int>] locationIds:
  ///
  /// * [int] lspId:
  ///
  /// * [List<int>] lspIds:
  ///
  /// * [String] lspName:
  ///
  /// * [List<int>] padIds:
  ///
  /// * [bool] related:
  ///   Include related agencies in the lsp__name and lsp__id filters.
  ///
  /// * [bool] strictFiltering:
  ///   Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
  Future<LaunchDetailed?> launchUpcomingRetrieve(
    String id, {
    List<int>? locationIds,
    int? lspId,
    List<int>? lspIds,
    String? lspName,
    List<int>? padIds,
    bool? related,
    bool? strictFiltering,
  }) async {
    final response = await launchUpcomingRetrieveWithHttpInfo(
      id,
      locationIds: locationIds,
      lspId: lspId,
      lspIds: lspIds,
      lspName: lspName,
      padIds: padIds,
      related: related,
      strictFiltering: strictFiltering,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'LaunchDetailed',
      ) as LaunchDetailed;
    }
    return null;
  }
}
