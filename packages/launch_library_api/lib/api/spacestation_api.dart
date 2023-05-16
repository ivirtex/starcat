//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class SpacestationApi {
  SpacestationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dockedVehicles:
  ///
  /// * [int] dockedVehiclesGt:
  ///
  /// * [int] dockedVehiclesGte:
  ///
  /// * [int] dockedVehiclesLt:
  ///
  /// * [int] dockedVehiclesLte:
  ///
  /// * [int] id:
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
  /// * [int] onboardCrew:
  ///
  /// * [int] onboardCrewGt:
  ///
  /// * [int] onboardCrewGte:
  ///
  /// * [int] onboardCrewLt:
  ///
  /// * [int] onboardCrewLte:
  ///
  /// * [int] orbit:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [List<int>] ownerIds:
  ///   Comma-separated agency IDs.
  ///
  /// * [List<int>] owners:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Comma-separated spacestation status IDs.
  ///
  /// * [int] type:
  Future<Response> spacestationListWithHttpInfo({ int? dockedVehicles, int? dockedVehiclesGt, int? dockedVehiclesGte, int? dockedVehiclesLt, int? dockedVehiclesLte, int? id, int? limit, String? name, String? nameContains, int? offset, int? onboardCrew, int? onboardCrewGt, int? onboardCrewGte, int? onboardCrewLt, int? onboardCrewLte, int? orbit, String? ordering, List<int>? ownerIds, List<int>? owners, String? search, int? status, List<int>? statusIds, int? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacestation/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dockedVehicles != null) {
      queryParams.addAll(_queryParams('', 'docked_vehicles', dockedVehicles));
    }
    if (dockedVehiclesGt != null) {
      queryParams.addAll(_queryParams('', 'docked_vehicles__gt', dockedVehiclesGt));
    }
    if (dockedVehiclesGte != null) {
      queryParams.addAll(_queryParams('', 'docked_vehicles__gte', dockedVehiclesGte));
    }
    if (dockedVehiclesLt != null) {
      queryParams.addAll(_queryParams('', 'docked_vehicles__lt', dockedVehiclesLt));
    }
    if (dockedVehiclesLte != null) {
      queryParams.addAll(_queryParams('', 'docked_vehicles__lte', dockedVehiclesLte));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    if (onboardCrew != null) {
      queryParams.addAll(_queryParams('', 'onboard_crew', onboardCrew));
    }
    if (onboardCrewGt != null) {
      queryParams.addAll(_queryParams('', 'onboard_crew__gt', onboardCrewGt));
    }
    if (onboardCrewGte != null) {
      queryParams.addAll(_queryParams('', 'onboard_crew__gte', onboardCrewGte));
    }
    if (onboardCrewLt != null) {
      queryParams.addAll(_queryParams('', 'onboard_crew__lt', onboardCrewLt));
    }
    if (onboardCrewLte != null) {
      queryParams.addAll(_queryParams('', 'onboard_crew__lte', onboardCrewLte));
    }
    if (orbit != null) {
      queryParams.addAll(_queryParams('', 'orbit', orbit));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (ownerIds != null) {
      queryParams.addAll(_queryParams('csv', 'owner__ids', ownerIds));
    }
    if (owners != null) {
      queryParams.addAll(_queryParams('multi', 'owners', owners));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statusIds != null) {
      queryParams.addAll(_queryParams('csv', 'status__ids', statusIds));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id
  ///
  /// Parameters:
  ///
  /// * [int] dockedVehicles:
  ///
  /// * [int] dockedVehiclesGt:
  ///
  /// * [int] dockedVehiclesGte:
  ///
  /// * [int] dockedVehiclesLt:
  ///
  /// * [int] dockedVehiclesLte:
  ///
  /// * [int] id:
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
  /// * [int] onboardCrew:
  ///
  /// * [int] onboardCrewGt:
  ///
  /// * [int] onboardCrewGte:
  ///
  /// * [int] onboardCrewLt:
  ///
  /// * [int] onboardCrewLte:
  ///
  /// * [int] orbit:
  ///
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [List<int>] ownerIds:
  ///   Comma-separated agency IDs.
  ///
  /// * [List<int>] owners:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [int] status:
  ///
  /// * [List<int>] statusIds:
  ///   Comma-separated spacestation status IDs.
  ///
  /// * [int] type:
  Future<PaginatedSpaceStationList?> spacestationList({ int? dockedVehicles, int? dockedVehiclesGt, int? dockedVehiclesGte, int? dockedVehiclesLt, int? dockedVehiclesLte, int? id, int? limit, String? name, String? nameContains, int? offset, int? onboardCrew, int? onboardCrewGt, int? onboardCrewGte, int? onboardCrewLt, int? onboardCrewLte, int? orbit, String? ordering, List<int>? ownerIds, List<int>? owners, String? search, int? status, List<int>? statusIds, int? type, }) async {
    final response = await spacestationListWithHttpInfo( dockedVehicles: dockedVehicles, dockedVehiclesGt: dockedVehiclesGt, dockedVehiclesGte: dockedVehiclesGte, dockedVehiclesLt: dockedVehiclesLt, dockedVehiclesLte: dockedVehiclesLte, id: id, limit: limit, name: name, nameContains: nameContains, offset: offset, onboardCrew: onboardCrew, onboardCrewGt: onboardCrewGt, onboardCrewGte: onboardCrewGte, onboardCrewLt: onboardCrewLt, onboardCrewLte: onboardCrewLte, orbit: orbit, ordering: ordering, ownerIds: ownerIds, owners: owners, search: search, status: status, statusIds: statusIds, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpaceStationList',) as PaginatedSpaceStationList;
    
    }
    return null;
  }

  /// API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Space Station.
  Future<Response> spacestationRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacestation/{id}/'
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

  /// API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Space Station.
  Future<SpaceStationDetailed?> spacestationRetrieve(int id,) async {
    final response = await spacestationRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceStationDetailed',) as SpaceStationDetailed;
    
    }
    return null;
  }
}
