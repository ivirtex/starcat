//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class LauncherApi {
  LauncherApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  /// * [DateTime] firstLaunchDate:
  ///
  /// * [bool] flightProven:
  ///
  /// * [int] flights:
  ///
  /// * [int] flightsGt:
  ///
  /// * [int] flightsGte:
  ///
  /// * [int] flightsLt:
  ///
  /// * [int] flightsLte:
  ///
  /// * [int] id:
  ///
  /// * [int] idContains:
  ///
  /// * [bool] isPlaceholder:
  ///
  /// * [DateTime] lastLaunchDate:
  ///
  /// * [List<int>] launcherConfigIds:
  ///   Comma-separated launcher config IDs.
  ///
  /// * [String] launcherConfigManufacturerName:
  ///
  /// * [String] launcherConfigManufacturerNameContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] serialNumber:
  ///
  /// * [String] serialNumberContains:
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
  Future<Response> launcherListWithHttpInfo({ int? attemptedLandings, int? attemptedLandingsGt, int? attemptedLandingsGte, int? attemptedLandingsLt, int? attemptedLandingsLte, DateTime? firstLaunchDate, bool? flightProven, int? flights, int? flightsGt, int? flightsGte, int? flightsLt, int? flightsLte, int? id, int? idContains, bool? isPlaceholder, DateTime? lastLaunchDate, List<int>? launcherConfigIds, String? launcherConfigManufacturerName, String? launcherConfigManufacturerNameContains, int? limit, int? offset, String? ordering, String? search, String? serialNumber, String? serialNumberContains, int? successfulLandings, int? successfulLandingsGt, int? successfulLandingsGte, int? successfulLandingsLt, int? successfulLandingsLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launcher/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
    if (firstLaunchDate != null) {
      queryParams.addAll(_queryParams('', 'first_launch_date', firstLaunchDate));
    }
    if (flightProven != null) {
      queryParams.addAll(_queryParams('', 'flight_proven', flightProven));
    }
    if (flights != null) {
      queryParams.addAll(_queryParams('', 'flights', flights));
    }
    if (flightsGt != null) {
      queryParams.addAll(_queryParams('', 'flights__gt', flightsGt));
    }
    if (flightsGte != null) {
      queryParams.addAll(_queryParams('', 'flights__gte', flightsGte));
    }
    if (flightsLt != null) {
      queryParams.addAll(_queryParams('', 'flights__lt', flightsLt));
    }
    if (flightsLte != null) {
      queryParams.addAll(_queryParams('', 'flights__lte', flightsLte));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idContains != null) {
      queryParams.addAll(_queryParams('', 'id__contains', idContains));
    }
    if (isPlaceholder != null) {
      queryParams.addAll(_queryParams('', 'is_placeholder', isPlaceholder));
    }
    if (lastLaunchDate != null) {
      queryParams.addAll(_queryParams('', 'last_launch_date', lastLaunchDate));
    }
    if (launcherConfigIds != null) {
      queryParams.addAll(_queryParams('csv', 'launcher_config__ids', launcherConfigIds));
    }
    if (launcherConfigManufacturerName != null) {
      queryParams.addAll(_queryParams('', 'launcher_config__manufacturer__name', launcherConfigManufacturerName));
    }
    if (launcherConfigManufacturerNameContains != null) {
      queryParams.addAll(_queryParams('', 'launcher_config__manufacturer__name__contains', launcherConfigManufacturerNameContains));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('', 'serial_number', serialNumber));
    }
    if (serialNumberContains != null) {
      queryParams.addAll(_queryParams('', 'serial_number__contains', serialNumberContains));
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

  /// API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven
  ///
  /// Parameters:
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
  /// * [DateTime] firstLaunchDate:
  ///
  /// * [bool] flightProven:
  ///
  /// * [int] flights:
  ///
  /// * [int] flightsGt:
  ///
  /// * [int] flightsGte:
  ///
  /// * [int] flightsLt:
  ///
  /// * [int] flightsLte:
  ///
  /// * [int] id:
  ///
  /// * [int] idContains:
  ///
  /// * [bool] isPlaceholder:
  ///
  /// * [DateTime] lastLaunchDate:
  ///
  /// * [List<int>] launcherConfigIds:
  ///   Comma-separated launcher config IDs.
  ///
  /// * [String] launcherConfigManufacturerName:
  ///
  /// * [String] launcherConfigManufacturerNameContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] serialNumber:
  ///
  /// * [String] serialNumberContains:
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
  Future<PaginatedLauncherList?> launcherList({ int? attemptedLandings, int? attemptedLandingsGt, int? attemptedLandingsGte, int? attemptedLandingsLt, int? attemptedLandingsLte, DateTime? firstLaunchDate, bool? flightProven, int? flights, int? flightsGt, int? flightsGte, int? flightsLt, int? flightsLte, int? id, int? idContains, bool? isPlaceholder, DateTime? lastLaunchDate, List<int>? launcherConfigIds, String? launcherConfigManufacturerName, String? launcherConfigManufacturerNameContains, int? limit, int? offset, String? ordering, String? search, String? serialNumber, String? serialNumberContains, int? successfulLandings, int? successfulLandingsGt, int? successfulLandingsGte, int? successfulLandingsLt, int? successfulLandingsLte, }) async {
    final response = await launcherListWithHttpInfo( attemptedLandings: attemptedLandings, attemptedLandingsGt: attemptedLandingsGt, attemptedLandingsGte: attemptedLandingsGte, attemptedLandingsLt: attemptedLandingsLt, attemptedLandingsLte: attemptedLandingsLte, firstLaunchDate: firstLaunchDate, flightProven: flightProven, flights: flights, flightsGt: flightsGt, flightsGte: flightsGte, flightsLt: flightsLt, flightsLte: flightsLte, id: id, idContains: idContains, isPlaceholder: isPlaceholder, lastLaunchDate: lastLaunchDate, launcherConfigIds: launcherConfigIds, launcherConfigManufacturerName: launcherConfigManufacturerName, launcherConfigManufacturerNameContains: launcherConfigManufacturerNameContains, limit: limit, offset: offset, ordering: ordering, search: search, serialNumber: serialNumber, serialNumberContains: serialNumberContains, successfulLandings: successfulLandings, successfulLandingsGt: successfulLandingsGt, successfulLandingsGte: successfulLandingsGte, successfulLandingsLt: successfulLandingsLt, successfulLandingsLte: successfulLandingsLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLauncherList',) as PaginatedLauncherList;
    
    }
    return null;
  }

  /// API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Launch Vehicle.
  Future<Response> launcherRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/launcher/{id}/'
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

  /// API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Launch Vehicle.
  Future<LauncherDetail?> launcherRetrieve(int id,) async {
    final response = await launcherRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LauncherDetail',) as LauncherDetail;
    
    }
    return null;
  }
}
