//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class ExpeditionApi {
  ExpeditionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] crewAstronaut:
  ///
  /// * [int] crewAstronautAgency:
  ///
  /// * [DateTime] endGt:
  ///   End is greater than
  ///
  /// * [DateTime] endGte:
  ///   End is greater than or equal to
  ///
  /// * [DateTime] endLt:
  ///   End is less than
  ///
  /// * [DateTime] endLte:
  ///   End is greater than or equal to
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] name:
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
  /// * [int] spaceStation:
  ///
  /// * [DateTime] startGt:
  ///   Start is greater than
  ///
  /// * [DateTime] startGte:
  ///   Start is greater than or equal to
  ///
  /// * [DateTime] startLt:
  ///   Start is less than
  ///
  /// * [DateTime] startLte:
  ///   Start is greater than or equal to
  Future<Response> expeditionListWithHttpInfo({ int? crewAstronaut, int? crewAstronautAgency, DateTime? endGt, DateTime? endGte, DateTime? endLt, DateTime? endLte, int? limit, String? name, int? offset, String? ordering, String? search, int? spaceStation, DateTime? startGt, DateTime? startGte, DateTime? startLt, DateTime? startLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/expedition/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (crewAstronaut != null) {
      queryParams.addAll(_queryParams('', 'crew__astronaut', crewAstronaut));
    }
    if (crewAstronautAgency != null) {
      queryParams.addAll(_queryParams('', 'crew__astronaut__agency', crewAstronautAgency));
    }
    if (endGt != null) {
      queryParams.addAll(_queryParams('', 'end__gt', endGt));
    }
    if (endGte != null) {
      queryParams.addAll(_queryParams('', 'end__gte', endGte));
    }
    if (endLt != null) {
      queryParams.addAll(_queryParams('', 'end__lt', endLt));
    }
    if (endLte != null) {
      queryParams.addAll(_queryParams('', 'end__lte', endLte));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
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
    if (spaceStation != null) {
      queryParams.addAll(_queryParams('', 'space_station', spaceStation));
    }
    if (startGt != null) {
      queryParams.addAll(_queryParams('', 'start__gt', startGt));
    }
    if (startGte != null) {
      queryParams.addAll(_queryParams('', 'start__gte', startGte));
    }
    if (startLt != null) {
      queryParams.addAll(_queryParams('', 'start__lt', startLt));
    }
    if (startLte != null) {
      queryParams.addAll(_queryParams('', 'start__lte', startLte));
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

  /// API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start
  ///
  /// Parameters:
  ///
  /// * [int] crewAstronaut:
  ///
  /// * [int] crewAstronautAgency:
  ///
  /// * [DateTime] endGt:
  ///   End is greater than
  ///
  /// * [DateTime] endGte:
  ///   End is greater than or equal to
  ///
  /// * [DateTime] endLt:
  ///   End is less than
  ///
  /// * [DateTime] endLte:
  ///   End is greater than or equal to
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] name:
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
  /// * [int] spaceStation:
  ///
  /// * [DateTime] startGt:
  ///   Start is greater than
  ///
  /// * [DateTime] startGte:
  ///   Start is greater than or equal to
  ///
  /// * [DateTime] startLt:
  ///   Start is less than
  ///
  /// * [DateTime] startLte:
  ///   Start is greater than or equal to
  Future<PaginatedExpeditionList?> expeditionList({ int? crewAstronaut, int? crewAstronautAgency, DateTime? endGt, DateTime? endGte, DateTime? endLt, DateTime? endLte, int? limit, String? name, int? offset, String? ordering, String? search, int? spaceStation, DateTime? startGt, DateTime? startGte, DateTime? startLt, DateTime? startLte, }) async {
    final response = await expeditionListWithHttpInfo( crewAstronaut: crewAstronaut, crewAstronautAgency: crewAstronautAgency, endGt: endGt, endGte: endGte, endLt: endLt, endLte: endLte, limit: limit, name: name, offset: offset, ordering: ordering, search: search, spaceStation: spaceStation, startGt: startGt, startGte: startGte, startLt: startLt, startLte: startLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedExpeditionList',) as PaginatedExpeditionList;
    
    }
    return null;
  }

  /// API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this expedition.
  Future<Response> expeditionRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/expedition/{id}/'
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

  /// API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this expedition.
  Future<ExpeditionDetail?> expeditionRetrieve(int id,) async {
    final response = await expeditionRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExpeditionDetail',) as ExpeditionDetail;
    
    }
    return null;
  }
}
