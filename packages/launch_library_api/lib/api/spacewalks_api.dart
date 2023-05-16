//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class SpacewalksApi {
  SpacewalksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<int>] astronautIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [DateTime] end:
  ///
  /// * [DateTime] endGt:
  ///
  /// * [DateTime] endGte:
  ///
  /// * [DateTime] endLt:
  ///
  /// * [DateTime] endLte:
  ///
  /// * [List<int>] eventIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] id:
  ///
  /// * [List<int>] ids:
  ///   Multiple values may be separated by commas.
  ///
  /// * [List<String>] launchIds:
  ///   Multiple values may be separated by commas.
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
  /// * [List<num>] ownerIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [List<int>] programIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [String] programName:
  ///
  /// * [String] programNameContains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<int>] spacestationIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [DateTime] startGt:
  ///
  /// * [DateTime] startGte:
  ///
  /// * [DateTime] startLt:
  ///
  /// * [DateTime] startLte:
  Future<Response> spacewalksListWithHttpInfo({ List<int>? astronautIds, DateTime? end, DateTime? endGt, DateTime? endGte, DateTime? endLt, DateTime? endLte, List<int>? eventIds, int? id, List<int>? ids, List<String>? launchIds, int? limit, String? name, String? nameContains, int? offset, String? ordering, List<num>? ownerIds, List<int>? programIds, String? programName, String? programNameContains, String? search, List<int>? spacestationIds, DateTime? startGt, DateTime? startGte, DateTime? startLt, DateTime? startLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacewalks/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (astronautIds != null) {
      queryParams.addAll(_queryParams('csv', 'astronaut__ids', astronautIds));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
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
    if (eventIds != null) {
      queryParams.addAll(_queryParams('csv', 'event__ids', eventIds));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (ids != null) {
      queryParams.addAll(_queryParams('csv', 'ids', ids));
    }
    if (launchIds != null) {
      queryParams.addAll(_queryParams('csv', 'launch__ids', launchIds));
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
    if (ownerIds != null) {
      queryParams.addAll(_queryParams('csv', 'owner__ids', ownerIds));
    }
    if (programIds != null) {
      queryParams.addAll(_queryParams('csv', 'program__ids', programIds));
    }
    if (programName != null) {
      queryParams.addAll(_queryParams('', 'program__name', programName));
    }
    if (programNameContains != null) {
      queryParams.addAll(_queryParams('', 'program__name__contains', programNameContains));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (spacestationIds != null) {
      queryParams.addAll(_queryParams('csv', 'spacestation__ids', spacestationIds));
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

  /// API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:
  ///
  /// Parameters:
  ///
  /// * [List<int>] astronautIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [DateTime] end:
  ///
  /// * [DateTime] endGt:
  ///
  /// * [DateTime] endGte:
  ///
  /// * [DateTime] endLt:
  ///
  /// * [DateTime] endLte:
  ///
  /// * [List<int>] eventIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [int] id:
  ///
  /// * [List<int>] ids:
  ///   Multiple values may be separated by commas.
  ///
  /// * [List<String>] launchIds:
  ///   Multiple values may be separated by commas.
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
  /// * [List<num>] ownerIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [List<int>] programIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [String] programName:
  ///
  /// * [String] programNameContains:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [List<int>] spacestationIds:
  ///   Multiple values may be separated by commas.
  ///
  /// * [DateTime] startGt:
  ///
  /// * [DateTime] startGte:
  ///
  /// * [DateTime] startLt:
  ///
  /// * [DateTime] startLte:
  Future<PaginatedSpacewalkNormalList?> spacewalksList({ List<int>? astronautIds, DateTime? end, DateTime? endGt, DateTime? endGte, DateTime? endLt, DateTime? endLte, List<int>? eventIds, int? id, List<int>? ids, List<String>? launchIds, int? limit, String? name, String? nameContains, int? offset, String? ordering, List<num>? ownerIds, List<int>? programIds, String? programName, String? programNameContains, String? search, List<int>? spacestationIds, DateTime? startGt, DateTime? startGte, DateTime? startLt, DateTime? startLte, }) async {
    final response = await spacewalksListWithHttpInfo( astronautIds: astronautIds, end: end, endGt: endGt, endGte: endGte, endLt: endLt, endLte: endLte, eventIds: eventIds, id: id, ids: ids, launchIds: launchIds, limit: limit, name: name, nameContains: nameContains, offset: offset, ordering: ordering, ownerIds: ownerIds, programIds: programIds, programName: programName, programNameContains: programNameContains, search: search, spacestationIds: spacestationIds, startGt: startGt, startGte: startGte, startLt: startLt, startLte: startLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpacewalkNormalList',) as PaginatedSpacewalkNormalList;
    
    }
    return null;
  }

  /// API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacewalk.
  Future<Response> spacewalksRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacewalks/{id}/'
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

  /// API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacewalk.
  Future<SpacewalkDetailed?> spacewalksRetrieve(int id,) async {
    final response = await spacewalksRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpacewalkDetailed',) as SpacewalkDetailed;
    
    }
    return null;
  }
}
