//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class MissionPatchApi {
  MissionPatchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] agencyId:
  ///
  /// * [String] agencyName:
  ///
  /// * [String] agencyNameContains:
  ///
  /// * [int] id:
  ///
  /// * [List<int>] ids:
  ///   Comma-separated mission patch IDs.
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
  /// * [String] search:
  ///   A search term.
  Future<Response> missionPatchListWithHttpInfo({ int? agencyId, String? agencyName, String? agencyNameContains, int? id, List<int>? ids, int? limit, String? name, String? nameContains, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/mission_patch/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (agencyId != null) {
      queryParams.addAll(_queryParams('', 'agency__id', agencyId));
    }
    if (agencyName != null) {
      queryParams.addAll(_queryParams('', 'agency__name', agencyName));
    }
    if (agencyNameContains != null) {
      queryParams.addAll(_queryParams('', 'agency__name__contains', agencyNameContains));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (ids != null) {
      queryParams.addAll(_queryParams('csv', 'ids', ids));
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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority
  ///
  /// Parameters:
  ///
  /// * [int] agencyId:
  ///
  /// * [String] agencyName:
  ///
  /// * [String] agencyNameContains:
  ///
  /// * [int] id:
  ///
  /// * [List<int>] ids:
  ///   Comma-separated mission patch IDs.
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
  /// * [String] search:
  ///   A search term.
  Future<PaginatedMissionPatchList?> missionPatchList({ int? agencyId, String? agencyName, String? agencyNameContains, int? id, List<int>? ids, int? limit, String? name, String? nameContains, int? offset, String? ordering, String? search, }) async {
    final response = await missionPatchListWithHttpInfo( agencyId: agencyId, agencyName: agencyName, agencyNameContains: agencyNameContains, id: id, ids: ids, limit: limit, name: name, nameContains: nameContains, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedMissionPatchList',) as PaginatedMissionPatchList;
    
    }
    return null;
  }

  /// API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Mission Patch.
  Future<Response> missionPatchRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/mission_patch/{id}/'
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

  /// API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Mission Patch.
  Future<MissionPatch?> missionPatchRetrieve(int id,) async {
    final response = await missionPatchRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionPatch',) as MissionPatch;
    
    }
    return null;
  }
}
