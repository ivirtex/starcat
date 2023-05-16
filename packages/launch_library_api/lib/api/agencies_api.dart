//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class AgenciesApi {
  AgenciesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] abbrev:
  ///
  /// * [String] abbrevContains:
  ///
  /// * [String] administrator:
  ///
  /// * [String] administratorContains:
  ///
  /// * [int] agencyType:
  ///
  /// * [int] attemptedLandings:
  ///
  /// * [int] attemptedLandingsGt:
  ///
  /// * [int] attemptedLandingsGte:
  ///
  /// * [int] attemptedLandingsLt:
  ///
  /// * [int] attemptedLandingsLte:
  ///
  /// * [int] consecutiveSuccessfulLandings:
  ///
  /// * [int] consecutiveSuccessfulLandingsGt:
  ///
  /// * [int] consecutiveSuccessfulLandingsGte:
  ///
  /// * [int] consecutiveSuccessfulLandingsLt:
  ///
  /// * [int] consecutiveSuccessfulLandingsLte:
  ///
  /// * [int] consecutiveSuccessfulLaunches:
  ///
  /// * [int] consecutiveSuccessfulLaunchesGt:
  ///
  /// * [int] consecutiveSuccessfulLaunchesGte:
  ///
  /// * [int] consecutiveSuccessfulLaunchesLt:
  ///
  /// * [int] consecutiveSuccessfulLaunchesLte:
  ///
  /// * [String] description:
  ///
  /// * [String] descriptionContains:
  ///
  /// * [int] failedLandings:
  ///
  /// * [int] failedLandingsGt:
  ///
  /// * [int] failedLandingsGte:
  ///
  /// * [int] failedLandingsLt:
  ///
  /// * [int] failedLandingsLte:
  ///
  /// * [int] failedLaunches:
  ///
  /// * [int] failedLaunchesGt:
  ///
  /// * [int] failedLaunchesGte:
  ///
  /// * [int] failedLaunchesLt:
  ///
  /// * [int] failedLaunchesLte:
  ///
  /// * [bool] featured:
  ///
  /// * [String] foundingYear:
  ///
  /// * [String] foundingYearContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idGt:
  ///
  /// * [int] idGte:
  ///
  /// * [int] idLt:
  ///
  /// * [int] idLte:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] name:
  ///
  /// * [String] nameContains:
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] parent:
  ///
  /// * [int] pendingLaunches:
  ///
  /// * [int] pendingLaunchesGt:
  ///
  /// * [int] pendingLaunchesGte:
  ///
  /// * [int] pendingLaunchesLt:
  ///
  /// * [int] pendingLaunchesLte:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [bool] spacecraft:
  ///
  /// * [int] successfulLandings:
  ///
  /// * [int] successfulLandingsGt:
  ///
  /// * [int] successfulLandingsGte:
  ///
  /// * [int] successfulLandingsLt:
  ///
  /// * [int] successfulLandingsLte:
  ///
  /// * [int] successfulLaunches:
  ///
  /// * [int] successfulLaunchesGt:
  ///
  /// * [int] successfulLaunchesGte:
  ///
  /// * [int] successfulLaunchesLt:
  ///
  /// * [int] successfulLaunchesLte:
  ///
  /// * [int] totalLaunchCount:
  ///
  /// * [int] totalLaunchCountGt:
  ///
  /// * [int] totalLaunchCountGte:
  ///
  /// * [int] totalLaunchCountLt:
  ///
  /// * [int] totalLaunchCountLte:
  Future<Response> agenciesListWithHttpInfo({ String? abbrev, String? abbrevContains, String? administrator, String? administratorContains, int? agencyType, int? attemptedLandings, int? attemptedLandingsGt, int? attemptedLandingsGte, int? attemptedLandingsLt, int? attemptedLandingsLte, int? consecutiveSuccessfulLandings, int? consecutiveSuccessfulLandingsGt, int? consecutiveSuccessfulLandingsGte, int? consecutiveSuccessfulLandingsLt, int? consecutiveSuccessfulLandingsLte, int? consecutiveSuccessfulLaunches, int? consecutiveSuccessfulLaunchesGt, int? consecutiveSuccessfulLaunchesGte, int? consecutiveSuccessfulLaunchesLt, int? consecutiveSuccessfulLaunchesLte, String? description, String? descriptionContains, int? failedLandings, int? failedLandingsGt, int? failedLandingsGte, int? failedLandingsLt, int? failedLandingsLte, int? failedLaunches, int? failedLaunchesGt, int? failedLaunchesGte, int? failedLaunchesLt, int? failedLaunchesLte, bool? featured, String? foundingYear, String? foundingYearContains, int? id, int? idGt, int? idGte, int? idLt, int? idLte, int? limit, String? name, String? nameContains, int? offset, String? ordering, int? parent, int? pendingLaunches, int? pendingLaunchesGt, int? pendingLaunchesGte, int? pendingLaunchesLt, int? pendingLaunchesLte, String? search, bool? spacecraft, int? successfulLandings, int? successfulLandingsGt, int? successfulLandingsGte, int? successfulLandingsLt, int? successfulLandingsLte, int? successfulLaunches, int? successfulLaunchesGt, int? successfulLaunchesGte, int? successfulLaunchesLt, int? successfulLaunchesLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/agencies/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (abbrev != null) {
      queryParams.addAll(_queryParams('', 'abbrev', abbrev));
    }
    if (abbrevContains != null) {
      queryParams.addAll(_queryParams('', 'abbrev__contains', abbrevContains));
    }
    if (administrator != null) {
      queryParams.addAll(_queryParams('', 'administrator', administrator));
    }
    if (administratorContains != null) {
      queryParams.addAll(_queryParams('', 'administrator__contains', administratorContains));
    }
    if (agencyType != null) {
      queryParams.addAll(_queryParams('', 'agency_type', agencyType));
    }
    if (attemptedLandings != null) {
      queryParams.addAll(_queryParams('', 'attempted_landings', attemptedLandings));
    }
    if (attemptedLandingsGt != null) {
      queryParams.addAll(_queryParams('', 'attempted_landings__gt', attemptedLandingsGt));
    }
    if (attemptedLandingsGte != null) {
      queryParams.addAll(_queryParams('', 'attempted_landings__gte', attemptedLandingsGte));
    }
    if (attemptedLandingsLt != null) {
      queryParams.addAll(_queryParams('', 'attempted_landings__lt', attemptedLandingsLt));
    }
    if (attemptedLandingsLte != null) {
      queryParams.addAll(_queryParams('', 'attempted_landings__lte', attemptedLandingsLte));
    }
    if (consecutiveSuccessfulLandings != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_landings', consecutiveSuccessfulLandings));
    }
    if (consecutiveSuccessfulLandingsGt != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_landings__gt', consecutiveSuccessfulLandingsGt));
    }
    if (consecutiveSuccessfulLandingsGte != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_landings__gte', consecutiveSuccessfulLandingsGte));
    }
    if (consecutiveSuccessfulLandingsLt != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_landings__lt', consecutiveSuccessfulLandingsLt));
    }
    if (consecutiveSuccessfulLandingsLte != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_landings__lte', consecutiveSuccessfulLandingsLte));
    }
    if (consecutiveSuccessfulLaunches != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_launches', consecutiveSuccessfulLaunches));
    }
    if (consecutiveSuccessfulLaunchesGt != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_launches__gt', consecutiveSuccessfulLaunchesGt));
    }
    if (consecutiveSuccessfulLaunchesGte != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_launches__gte', consecutiveSuccessfulLaunchesGte));
    }
    if (consecutiveSuccessfulLaunchesLt != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_launches__lt', consecutiveSuccessfulLaunchesLt));
    }
    if (consecutiveSuccessfulLaunchesLte != null) {
      queryParams.addAll(_queryParams('', 'consecutive_successful_launches__lte', consecutiveSuccessfulLaunchesLte));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (descriptionContains != null) {
      queryParams.addAll(_queryParams('', 'description__contains', descriptionContains));
    }
    if (failedLandings != null) {
      queryParams.addAll(_queryParams('', 'failed_landings', failedLandings));
    }
    if (failedLandingsGt != null) {
      queryParams.addAll(_queryParams('', 'failed_landings__gt', failedLandingsGt));
    }
    if (failedLandingsGte != null) {
      queryParams.addAll(_queryParams('', 'failed_landings__gte', failedLandingsGte));
    }
    if (failedLandingsLt != null) {
      queryParams.addAll(_queryParams('', 'failed_landings__lt', failedLandingsLt));
    }
    if (failedLandingsLte != null) {
      queryParams.addAll(_queryParams('', 'failed_landings__lte', failedLandingsLte));
    }
    if (failedLaunches != null) {
      queryParams.addAll(_queryParams('', 'failed_launches', failedLaunches));
    }
    if (failedLaunchesGt != null) {
      queryParams.addAll(_queryParams('', 'failed_launches__gt', failedLaunchesGt));
    }
    if (failedLaunchesGte != null) {
      queryParams.addAll(_queryParams('', 'failed_launches__gte', failedLaunchesGte));
    }
    if (failedLaunchesLt != null) {
      queryParams.addAll(_queryParams('', 'failed_launches__lt', failedLaunchesLt));
    }
    if (failedLaunchesLte != null) {
      queryParams.addAll(_queryParams('', 'failed_launches__lte', failedLaunchesLte));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (foundingYear != null) {
      queryParams.addAll(_queryParams('', 'founding_year', foundingYear));
    }
    if (foundingYearContains != null) {
      queryParams.addAll(_queryParams('', 'founding_year__contains', foundingYearContains));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idGt != null) {
      queryParams.addAll(_queryParams('', 'id__gt', idGt));
    }
    if (idGte != null) {
      queryParams.addAll(_queryParams('', 'id__gte', idGte));
    }
    if (idLt != null) {
      queryParams.addAll(_queryParams('', 'id__lt', idLt));
    }
    if (idLte != null) {
      queryParams.addAll(_queryParams('', 'id__lte', idLte));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameContains != null) {
      queryParams.addAll(_queryParams('', 'name__contains', nameContains));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (parent != null) {
      queryParams.addAll(_queryParams('', 'parent', parent));
    }
    if (pendingLaunches != null) {
      queryParams.addAll(_queryParams('', 'pending_launches', pendingLaunches));
    }
    if (pendingLaunchesGt != null) {
      queryParams.addAll(_queryParams('', 'pending_launches__gt', pendingLaunchesGt));
    }
    if (pendingLaunchesGte != null) {
      queryParams.addAll(_queryParams('', 'pending_launches__gte', pendingLaunchesGte));
    }
    if (pendingLaunchesLt != null) {
      queryParams.addAll(_queryParams('', 'pending_launches__lt', pendingLaunchesLt));
    }
    if (pendingLaunchesLte != null) {
      queryParams.addAll(_queryParams('', 'pending_launches__lte', pendingLaunchesLte));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (spacecraft != null) {
      queryParams.addAll(_queryParams('', 'spacecraft', spacecraft));
    }
    if (successfulLandings != null) {
      queryParams.addAll(_queryParams('', 'successful_landings', successfulLandings));
    }
    if (successfulLandingsGt != null) {
      queryParams.addAll(_queryParams('', 'successful_landings__gt', successfulLandingsGt));
    }
    if (successfulLandingsGte != null) {
      queryParams.addAll(_queryParams('', 'successful_landings__gte', successfulLandingsGte));
    }
    if (successfulLandingsLt != null) {
      queryParams.addAll(_queryParams('', 'successful_landings__lt', successfulLandingsLt));
    }
    if (successfulLandingsLte != null) {
      queryParams.addAll(_queryParams('', 'successful_landings__lte', successfulLandingsLte));
    }
    if (successfulLaunches != null) {
      queryParams.addAll(_queryParams('', 'successful_launches', successfulLaunches));
    }
    if (successfulLaunchesGt != null) {
      queryParams.addAll(_queryParams('', 'successful_launches__gt', successfulLaunchesGt));
    }
    if (successfulLaunchesGte != null) {
      queryParams.addAll(_queryParams('', 'successful_launches__gte', successfulLaunchesGte));
    }
    if (successfulLaunchesLt != null) {
      queryParams.addAll(_queryParams('', 'successful_launches__lt', successfulLaunchesLt));
    }
    if (successfulLaunchesLte != null) {
      queryParams.addAll(_queryParams('', 'successful_launches__lte', successfulLaunchesLte));
    }
    if (totalLaunchCount != null) {
      queryParams.addAll(_queryParams('', 'total_launch_count', totalLaunchCount));
    }
    if (totalLaunchCountGt != null) {
      queryParams.addAll(_queryParams('', 'total_launch_count__gt', totalLaunchCountGt));
    }
    if (totalLaunchCountGte != null) {
      queryParams.addAll(_queryParams('', 'total_launch_count__gte', totalLaunchCountGte));
    }
    if (totalLaunchCountLt != null) {
      queryParams.addAll(_queryParams('', 'total_launch_count__lt', totalLaunchCountLt));
    }
    if (totalLaunchCountLte != null) {
      queryParams.addAll(_queryParams('', 'total_launch_count__lte', totalLaunchCountLte));
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

  /// API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.
  ///
  /// Parameters:
  ///
  /// * [String] abbrev:
  ///
  /// * [String] abbrevContains:
  ///
  /// * [String] administrator:
  ///
  /// * [String] administratorContains:
  ///
  /// * [int] agencyType:
  ///
  /// * [int] attemptedLandings:
  ///
  /// * [int] attemptedLandingsGt:
  ///
  /// * [int] attemptedLandingsGte:
  ///
  /// * [int] attemptedLandingsLt:
  ///
  /// * [int] attemptedLandingsLte:
  ///
  /// * [int] consecutiveSuccessfulLandings:
  ///
  /// * [int] consecutiveSuccessfulLandingsGt:
  ///
  /// * [int] consecutiveSuccessfulLandingsGte:
  ///
  /// * [int] consecutiveSuccessfulLandingsLt:
  ///
  /// * [int] consecutiveSuccessfulLandingsLte:
  ///
  /// * [int] consecutiveSuccessfulLaunches:
  ///
  /// * [int] consecutiveSuccessfulLaunchesGt:
  ///
  /// * [int] consecutiveSuccessfulLaunchesGte:
  ///
  /// * [int] consecutiveSuccessfulLaunchesLt:
  ///
  /// * [int] consecutiveSuccessfulLaunchesLte:
  ///
  /// * [String] description:
  ///
  /// * [String] descriptionContains:
  ///
  /// * [int] failedLandings:
  ///
  /// * [int] failedLandingsGt:
  ///
  /// * [int] failedLandingsGte:
  ///
  /// * [int] failedLandingsLt:
  ///
  /// * [int] failedLandingsLte:
  ///
  /// * [int] failedLaunches:
  ///
  /// * [int] failedLaunchesGt:
  ///
  /// * [int] failedLaunchesGte:
  ///
  /// * [int] failedLaunchesLt:
  ///
  /// * [int] failedLaunchesLte:
  ///
  /// * [bool] featured:
  ///
  /// * [String] foundingYear:
  ///
  /// * [String] foundingYearContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idGt:
  ///
  /// * [int] idGte:
  ///
  /// * [int] idLt:
  ///
  /// * [int] idLte:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] name:
  ///
  /// * [String] nameContains:
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [int] parent:
  ///
  /// * [int] pendingLaunches:
  ///
  /// * [int] pendingLaunchesGt:
  ///
  /// * [int] pendingLaunchesGte:
  ///
  /// * [int] pendingLaunchesLt:
  ///
  /// * [int] pendingLaunchesLte:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [bool] spacecraft:
  ///
  /// * [int] successfulLandings:
  ///
  /// * [int] successfulLandingsGt:
  ///
  /// * [int] successfulLandingsGte:
  ///
  /// * [int] successfulLandingsLt:
  ///
  /// * [int] successfulLandingsLte:
  ///
  /// * [int] successfulLaunches:
  ///
  /// * [int] successfulLaunchesGt:
  ///
  /// * [int] successfulLaunchesGte:
  ///
  /// * [int] successfulLaunchesLt:
  ///
  /// * [int] successfulLaunchesLte:
  ///
  /// * [int] totalLaunchCount:
  ///
  /// * [int] totalLaunchCountGt:
  ///
  /// * [int] totalLaunchCountGte:
  ///
  /// * [int] totalLaunchCountLt:
  ///
  /// * [int] totalLaunchCountLte:
  Future<PaginatedAgencyList?> agenciesList({ String? abbrev, String? abbrevContains, String? administrator, String? administratorContains, int? agencyType, int? attemptedLandings, int? attemptedLandingsGt, int? attemptedLandingsGte, int? attemptedLandingsLt, int? attemptedLandingsLte, int? consecutiveSuccessfulLandings, int? consecutiveSuccessfulLandingsGt, int? consecutiveSuccessfulLandingsGte, int? consecutiveSuccessfulLandingsLt, int? consecutiveSuccessfulLandingsLte, int? consecutiveSuccessfulLaunches, int? consecutiveSuccessfulLaunchesGt, int? consecutiveSuccessfulLaunchesGte, int? consecutiveSuccessfulLaunchesLt, int? consecutiveSuccessfulLaunchesLte, String? description, String? descriptionContains, int? failedLandings, int? failedLandingsGt, int? failedLandingsGte, int? failedLandingsLt, int? failedLandingsLte, int? failedLaunches, int? failedLaunchesGt, int? failedLaunchesGte, int? failedLaunchesLt, int? failedLaunchesLte, bool? featured, String? foundingYear, String? foundingYearContains, int? id, int? idGt, int? idGte, int? idLt, int? idLte, int? limit, String? name, String? nameContains, int? offset, String? ordering, int? parent, int? pendingLaunches, int? pendingLaunchesGt, int? pendingLaunchesGte, int? pendingLaunchesLt, int? pendingLaunchesLte, String? search, bool? spacecraft, int? successfulLandings, int? successfulLandingsGt, int? successfulLandingsGte, int? successfulLandingsLt, int? successfulLandingsLte, int? successfulLaunches, int? successfulLaunchesGt, int? successfulLaunchesGte, int? successfulLaunchesLt, int? successfulLaunchesLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    final response = await agenciesListWithHttpInfo( abbrev: abbrev, abbrevContains: abbrevContains, administrator: administrator, administratorContains: administratorContains, agencyType: agencyType, attemptedLandings: attemptedLandings, attemptedLandingsGt: attemptedLandingsGt, attemptedLandingsGte: attemptedLandingsGte, attemptedLandingsLt: attemptedLandingsLt, attemptedLandingsLte: attemptedLandingsLte, consecutiveSuccessfulLandings: consecutiveSuccessfulLandings, consecutiveSuccessfulLandingsGt: consecutiveSuccessfulLandingsGt, consecutiveSuccessfulLandingsGte: consecutiveSuccessfulLandingsGte, consecutiveSuccessfulLandingsLt: consecutiveSuccessfulLandingsLt, consecutiveSuccessfulLandingsLte: consecutiveSuccessfulLandingsLte, consecutiveSuccessfulLaunches: consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt: consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte: consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt: consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte: consecutiveSuccessfulLaunchesLte, description: description, descriptionContains: descriptionContains, failedLandings: failedLandings, failedLandingsGt: failedLandingsGt, failedLandingsGte: failedLandingsGte, failedLandingsLt: failedLandingsLt, failedLandingsLte: failedLandingsLte, failedLaunches: failedLaunches, failedLaunchesGt: failedLaunchesGt, failedLaunchesGte: failedLaunchesGte, failedLaunchesLt: failedLaunchesLt, failedLaunchesLte: failedLaunchesLte, featured: featured, foundingYear: foundingYear, foundingYearContains: foundingYearContains, id: id, idGt: idGt, idGte: idGte, idLt: idLt, idLte: idLte, limit: limit, name: name, nameContains: nameContains, offset: offset, ordering: ordering, parent: parent, pendingLaunches: pendingLaunches, pendingLaunchesGt: pendingLaunchesGt, pendingLaunchesGte: pendingLaunchesGte, pendingLaunchesLt: pendingLaunchesLt, pendingLaunchesLte: pendingLaunchesLte, search: search, spacecraft: spacecraft, successfulLandings: successfulLandings, successfulLandingsGt: successfulLandingsGt, successfulLandingsGte: successfulLandingsGte, successfulLandingsLt: successfulLandingsLt, successfulLandingsLte: successfulLandingsLte, successfulLaunches: successfulLaunches, successfulLaunchesGt: successfulLaunchesGt, successfulLaunchesGte: successfulLaunchesGte, successfulLaunchesLt: successfulLaunchesLt, successfulLaunchesLte: successfulLaunchesLte, totalLaunchCount: totalLaunchCount, totalLaunchCountGt: totalLaunchCountGt, totalLaunchCountGte: totalLaunchCountGte, totalLaunchCountLt: totalLaunchCountLt, totalLaunchCountLte: totalLaunchCountLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAgencyList',) as PaginatedAgencyList;
    
    }
    return null;
  }

  /// API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Agency.
  Future<Response> agenciesRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/agencies/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Agency.
  Future<AgencySerializerDetailed?> agenciesRetrieve(int id,) async {
    final response = await agenciesRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgencySerializerDetailed',) as AgencySerializerDetailed;
    
    }
    return null;
  }
}
