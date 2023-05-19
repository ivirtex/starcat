//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class DockingEventApi {
  DockingEventApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] dockingGt:
  ///   Docking is greater than
  ///
  /// * [DateTime] dockingGte:
  ///   Docking is greater than or equal to
  ///
  /// * [DateTime] dockingLt:
  ///   Docking is less than
  ///
  /// * [DateTime] dockingLte:
  ///   Docking is less than or equal to
  ///
  /// * [int] dockingLocationId:
  ///
  /// * [int] flightVehicleId:
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
  /// * [int] spaceStationId:
  Future<Response> dockingEventListWithHttpInfo({ DateTime? dockingGt, DateTime? dockingGte, DateTime? dockingLt, DateTime? dockingLte, int? dockingLocationId, int? flightVehicleId, int? limit, int? offset, String? ordering, String? search, int? spaceStationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/docking_event/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dockingGt != null) {
      queryParams.addAll(_queryParams('', 'docking__gt', dockingGt));
    }
    if (dockingGte != null) {
      queryParams.addAll(_queryParams('', 'docking__gte', dockingGte));
    }
    if (dockingLt != null) {
      queryParams.addAll(_queryParams('', 'docking__lt', dockingLt));
    }
    if (dockingLte != null) {
      queryParams.addAll(_queryParams('', 'docking__lte', dockingLte));
    }
    if (dockingLocationId != null) {
      queryParams.addAll(_queryParams('', 'docking_location__id', dockingLocationId));
    }
    if (flightVehicleId != null) {
      queryParams.addAll(_queryParams('', 'flight_vehicle__id', flightVehicleId));
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
    if (spaceStationId != null) {
      queryParams.addAll(_queryParams('', 'space_station__id', spaceStationId));
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

  /// API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking
  ///
  /// Parameters:
  ///
  /// * [DateTime] dockingGt:
  ///   Docking is greater than
  ///
  /// * [DateTime] dockingGte:
  ///   Docking is greater than or equal to
  ///
  /// * [DateTime] dockingLt:
  ///   Docking is less than
  ///
  /// * [DateTime] dockingLte:
  ///   Docking is less than or equal to
  ///
  /// * [int] dockingLocationId:
  ///
  /// * [int] flightVehicleId:
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
  /// * [int] spaceStationId:
  Future<PaginatedDockingEventList?> dockingEventList({ DateTime? dockingGt, DateTime? dockingGte, DateTime? dockingLt, DateTime? dockingLte, int? dockingLocationId, int? flightVehicleId, int? limit, int? offset, String? ordering, String? search, int? spaceStationId, }) async {
    final response = await dockingEventListWithHttpInfo( dockingGt: dockingGt, dockingGte: dockingGte, dockingLt: dockingLt, dockingLte: dockingLte, dockingLocationId: dockingLocationId, flightVehicleId: flightVehicleId, limit: limit, offset: offset, ordering: ordering, search: search, spaceStationId: spaceStationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedDockingEventList',) as PaginatedDockingEventList;
    
    }
    return null;
  }

  /// API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this docking event.
  Future<Response> dockingEventRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/docking_event/{id}/'
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

  /// API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this docking event.
  Future<DockingEventDetailed?> dockingEventRetrieve(int id,) async {
    final response = await dockingEventRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DockingEventDetailed',) as DockingEventDetailed;
    
    }
    return null;
  }
}
