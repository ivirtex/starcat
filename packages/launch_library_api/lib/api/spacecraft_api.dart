//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class SpacecraftApi {
  SpacecraftApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] spacecraft:
  Future<Response> spacecraftFlightListWithHttpInfo({ int? limit, int? offset, int? spacecraft, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacecraft/flight/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (spacecraft != null) {
      queryParams.addAll(_queryParams('', 'spacecraft', spacecraft));
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

  /// API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] spacecraft:
  Future<PaginatedSpacecraftFlightList?> spacecraftFlightList({ int? limit, int? offset, int? spacecraft, }) async {
    final response = await spacecraftFlightListWithHttpInfo( limit: limit, offset: offset, spacecraft: spacecraft, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpacecraftFlightList',) as PaginatedSpacecraftFlightList;
    
    }
    return null;
  }

  /// API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Flight.
  Future<Response> spacecraftFlightRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacecraft/flight/{id}/'
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

  /// API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Flight.
  Future<SpacecraftFlightDetailed?> spacecraftFlightRetrieve(int id,) async {
    final response = await spacecraftFlightRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpacecraftFlightDetailed',) as SpacecraftFlightDetailed;
    
    }
    return null;
  }

  /// API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  /// * [int] spacecraftConfig:
  ///
  /// * [int] status:
  Future<Response> spacecraftListWithHttpInfo({ int? limit, String? name, int? offset, String? ordering, String? search, int? spacecraftConfig, int? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacecraft/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
    if (spacecraftConfig != null) {
      queryParams.addAll(_queryParams('', 'spacecraft_config', spacecraftConfig));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id
  ///
  /// Parameters:
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
  /// * [int] spacecraftConfig:
  ///
  /// * [int] status:
  Future<PaginatedSpacecraftList?> spacecraftList({ int? limit, String? name, int? offset, String? ordering, String? search, int? spacecraftConfig, int? status, }) async {
    final response = await spacecraftListWithHttpInfo( limit: limit, name: name, offset: offset, ordering: ordering, search: search, spacecraftConfig: spacecraftConfig, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpacecraftList',) as PaginatedSpacecraftList;
    
    }
    return null;
  }

  /// API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft.
  Future<Response> spacecraftRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/spacecraft/{id}/'
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

  /// API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft.
  Future<SpacecraftDetailed?> spacecraftRetrieve(int id,) async {
    final response = await spacecraftRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpacecraftDetailed',) as SpacecraftDetailed;
    
    }
    return null;
  }
}
