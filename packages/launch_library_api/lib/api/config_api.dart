//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class ConfigApi {
  ConfigApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /2.2.0/config/agencytype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configAgencytypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/agencytype/';

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

  /// Parameters:
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
  Future<PaginatedAgencyTypeList?> configAgencytypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configAgencytypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAgencyTypeList',) as PaginatedAgencyTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/agencytype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this agency type.
  Future<Response> configAgencytypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/agencytype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this agency type.
  Future<AgencyType?> configAgencytypeRetrieve(int id,) async {
    final response = await configAgencytypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgencyType',) as AgencyType;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronautrole/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configAstronautroleListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronautrole/';

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

  /// Parameters:
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
  Future<PaginatedAstronautRoleList?> configAstronautroleList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configAstronautroleListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAstronautRoleList',) as PaginatedAstronautRoleList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronautrole/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Role.
  Future<Response> configAstronautroleRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronautrole/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Role.
  Future<AstronautRole?> configAstronautroleRetrieve(int id,) async {
    final response = await configAstronautroleRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AstronautRole',) as AstronautRole;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronautstatus/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configAstronautstatusListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronautstatus/';

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

  /// Parameters:
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
  Future<PaginatedAstronautStatusList?> configAstronautstatusList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configAstronautstatusListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAstronautStatusList',) as PaginatedAstronautStatusList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronautstatus/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Status.
  Future<Response> configAstronautstatusRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronautstatus/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Status.
  Future<AstronautStatus?> configAstronautstatusRetrieve(int id,) async {
    final response = await configAstronautstatusRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AstronautStatus',) as AstronautStatus;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronauttype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configAstronauttypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronauttype/';

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

  /// Parameters:
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
  Future<PaginatedAstronautTypeList?> configAstronauttypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configAstronauttypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAstronautTypeList',) as PaginatedAstronautTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/astronauttype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Type.
  Future<Response> configAstronauttypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/astronauttype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut Type.
  Future<AstronautType?> configAstronauttypeRetrieve(int id,) async {
    final response = await configAstronauttypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AstronautType',) as AstronautType;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/dockinglocation/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configDockinglocationListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/dockinglocation/';

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

  /// Parameters:
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
  Future<PaginatedDockingLocationList?> configDockinglocationList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configDockinglocationListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedDockingLocationList',) as PaginatedDockingLocationList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/dockinglocation/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Docking Location.
  Future<Response> configDockinglocationRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/dockinglocation/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Docking Location.
  Future<DockingLocation?> configDockinglocationRetrieve(int id,) async {
    final response = await configDockinglocationRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DockingLocation',) as DockingLocation;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/eventtype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configEventtypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/eventtype/';

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

  /// Parameters:
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
  Future<PaginatedEventTypeList?> configEventtypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configEventtypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedEventTypeList',) as PaginatedEventTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/eventtype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this event type.
  Future<Response> configEventtypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/eventtype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this event type.
  Future<EventType?> configEventtypeRetrieve(int id,) async {
    final response = await configEventtypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EventType',) as EventType;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/firststagetype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configFirststagetypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/firststagetype/';

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

  /// Parameters:
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
  Future<PaginatedFirstStageTypeList?> configFirststagetypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configFirststagetypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedFirstStageTypeList',) as PaginatedFirstStageTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/firststagetype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this first stage type.
  Future<Response> configFirststagetypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/firststagetype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this first stage type.
  Future<FirstStageType?> configFirststagetypeRetrieve(int id,) async {
    final response = await configFirststagetypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FirstStageType',) as FirstStageType;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/landinglocation/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configLandinglocationListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/landinglocation/';

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

  /// Parameters:
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
  Future<PaginatedLandingLocationList?> configLandinglocationList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configLandinglocationListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLandingLocationList',) as PaginatedLandingLocationList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/landinglocation/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this landing location.
  Future<Response> configLandinglocationRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/landinglocation/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this landing location.
  Future<LandingLocation?> configLandinglocationRetrieve(int id,) async {
    final response = await configLandinglocationRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LandingLocation',) as LandingLocation;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/landingtype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configLandingtypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/landingtype/';

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

  /// Parameters:
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
  Future<PaginatedLandingTypeList?> configLandingtypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configLandingtypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLandingTypeList',) as PaginatedLandingTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/landingtype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this landing type.
  Future<Response> configLandingtypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/landingtype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this landing type.
  Future<LandingType?> configLandingtypeRetrieve(int id,) async {
    final response = await configLandingtypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LandingType',) as LandingType;
    
    }
    return null;
  }

  /// API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] active:
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
  /// * [String] family:
  ///
  /// * [String] familyContains:
  ///
  /// * [String] fullName:
  ///
  /// * [String] fullNameContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] manufacturerName:
  ///
  /// * [String] manufacturerNameContains:
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
  /// * [List<int>] program:
  ///
  /// * [List<int>] programContains:
  ///
  /// * [String] search:
  ///   A search term.
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
  Future<Response> configLauncherListWithHttpInfo({ bool? active, int? consecutiveSuccessfulLaunches, int? consecutiveSuccessfulLaunchesGt, int? consecutiveSuccessfulLaunchesGte, int? consecutiveSuccessfulLaunchesLt, int? consecutiveSuccessfulLaunchesLte, int? failedLaunches, int? failedLaunchesGt, int? failedLaunchesGte, int? failedLaunchesLt, int? failedLaunchesLte, String? family, String? familyContains, String? fullName, String? fullNameContains, int? limit, String? manufacturerName, String? manufacturerNameContains, String? name, String? nameContains, int? offset, String? ordering, int? pendingLaunches, int? pendingLaunchesGt, int? pendingLaunchesGte, int? pendingLaunchesLt, int? pendingLaunchesLte, List<int>? program, List<int>? programContains, String? search, int? successfulLaunches, int? successfulLaunchesGt, int? successfulLaunchesGte, int? successfulLaunchesLt, int? successfulLaunchesLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/launcher/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
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
    if (family != null) {
      queryParams.addAll(_queryParams('', 'family', family));
    }
    if (familyContains != null) {
      queryParams.addAll(_queryParams('', 'family__contains', familyContains));
    }
    if (fullName != null) {
      queryParams.addAll(_queryParams('', 'full_name', fullName));
    }
    if (fullNameContains != null) {
      queryParams.addAll(_queryParams('', 'full_name__contains', fullNameContains));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (manufacturerName != null) {
      queryParams.addAll(_queryParams('', 'manufacturer__name', manufacturerName));
    }
    if (manufacturerNameContains != null) {
      queryParams.addAll(_queryParams('', 'manufacturer__name__contains', manufacturerNameContains));
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
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (programContains != null) {
      queryParams.addAll(_queryParams('multi', 'program__contains', programContains));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA
  ///
  /// Parameters:
  ///
  /// * [bool] active:
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
  /// * [String] family:
  ///
  /// * [String] familyContains:
  ///
  /// * [String] fullName:
  ///
  /// * [String] fullNameContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [String] manufacturerName:
  ///
  /// * [String] manufacturerNameContains:
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
  /// * [List<int>] program:
  ///
  /// * [List<int>] programContains:
  ///
  /// * [String] search:
  ///   A search term.
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
  Future<PaginatedLauncherConfigList?> configLauncherList({ bool? active, int? consecutiveSuccessfulLaunches, int? consecutiveSuccessfulLaunchesGt, int? consecutiveSuccessfulLaunchesGte, int? consecutiveSuccessfulLaunchesLt, int? consecutiveSuccessfulLaunchesLte, int? failedLaunches, int? failedLaunchesGt, int? failedLaunchesGte, int? failedLaunchesLt, int? failedLaunchesLte, String? family, String? familyContains, String? fullName, String? fullNameContains, int? limit, String? manufacturerName, String? manufacturerNameContains, String? name, String? nameContains, int? offset, String? ordering, int? pendingLaunches, int? pendingLaunchesGt, int? pendingLaunchesGte, int? pendingLaunchesLt, int? pendingLaunchesLte, List<int>? program, List<int>? programContains, String? search, int? successfulLaunches, int? successfulLaunchesGt, int? successfulLaunchesGte, int? successfulLaunchesLt, int? successfulLaunchesLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    final response = await configLauncherListWithHttpInfo( active: active, consecutiveSuccessfulLaunches: consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt: consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte: consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt: consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte: consecutiveSuccessfulLaunchesLte, failedLaunches: failedLaunches, failedLaunchesGt: failedLaunchesGt, failedLaunchesGte: failedLaunchesGte, failedLaunchesLt: failedLaunchesLt, failedLaunchesLte: failedLaunchesLte, family: family, familyContains: familyContains, fullName: fullName, fullNameContains: fullNameContains, limit: limit, manufacturerName: manufacturerName, manufacturerNameContains: manufacturerNameContains, name: name, nameContains: nameContains, offset: offset, ordering: ordering, pendingLaunches: pendingLaunches, pendingLaunchesGt: pendingLaunchesGt, pendingLaunchesGte: pendingLaunchesGte, pendingLaunchesLt: pendingLaunchesLt, pendingLaunchesLte: pendingLaunchesLte, program: program, programContains: programContains, search: search, successfulLaunches: successfulLaunches, successfulLaunchesGt: successfulLaunchesGt, successfulLaunchesGte: successfulLaunchesGte, successfulLaunchesLt: successfulLaunchesLt, successfulLaunchesLte: successfulLaunchesLte, totalLaunchCount: totalLaunchCount, totalLaunchCountGt: totalLaunchCountGt, totalLaunchCountGte: totalLaunchCountGte, totalLaunchCountLt: totalLaunchCountLt, totalLaunchCountLte: totalLaunchCountLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLauncherConfigList',) as PaginatedLauncherConfigList;
    
    }
    return null;
  }

  /// API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Launcher Configuration.
  Future<Response> configLauncherRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/launcher/{id}/'
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

  /// API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Launcher Configuration.
  Future<LauncherConfigDetail?> configLauncherRetrieve(int id,) async {
    final response = await configLauncherRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LauncherConfigDetail',) as LauncherConfigDetail;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/launchstatus/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configLaunchstatusListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/launchstatus/';

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

  /// Parameters:
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
  Future<PaginatedLaunchStatusList?> configLaunchstatusList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configLaunchstatusListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLaunchStatusList',) as PaginatedLaunchStatusList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/launchstatus/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this Launch Status.
  Future<Response> configLaunchstatusRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/launchstatus/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this Launch Status.
  Future<LaunchStatus?> configLaunchstatusRetrieve(int id,) async {
    final response = await configLaunchstatusRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LaunchStatus',) as LaunchStatus;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/missiontype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configMissiontypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/missiontype/';

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

  /// Parameters:
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
  Future<PaginatedMissionTypeList?> configMissiontypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configMissiontypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedMissionTypeList',) as PaginatedMissionTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/missiontype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this mission type.
  Future<Response> configMissiontypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/missiontype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this mission type.
  Future<MissionType?> configMissiontypeRetrieve(int id,) async {
    final response = await configMissiontypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissionType',) as MissionType;
    
    }
    return null;
  }

  /// API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.
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
  /// * [String] ordering:
  ///   Which field to use when ordering the results.
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> configNetprecisionListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/netprecision/';

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

  /// API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.
  ///
  /// Parameters:
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
  Future<PaginatedNetPrecisionList?> configNetprecisionList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configNetprecisionListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedNetPrecisionList',) as PaginatedNetPrecisionList;
    
    }
    return null;
  }

  /// API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this Net Precision.
  Future<Response> configNetprecisionRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/netprecision/{id}/'
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

  /// API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique value identifying this Net Precision.
  Future<NetPrecision?> configNetprecisionRetrieve(int id,) async {
    final response = await configNetprecisionRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NetPrecision',) as NetPrecision;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/noticetype/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configNoticetypeListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/noticetype/';

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

  /// Parameters:
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
  Future<PaginatedNoticeTypeList?> configNoticetypeList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configNoticetypeListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedNoticeTypeList',) as PaginatedNoticeTypeList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/noticetype/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Notices Type.
  Future<Response> configNoticetypeRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/noticetype/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Notices Type.
  Future<NoticeType?> configNoticetypeRetrieve(int id,) async {
    final response = await configNoticetypeRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NoticeType',) as NoticeType;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/orbit/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configOrbitListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/orbit/';

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

  /// Parameters:
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
  Future<PaginatedOrbitList?> configOrbitList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configOrbitListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedOrbitList',) as PaginatedOrbitList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/orbit/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Orbit.
  Future<Response> configOrbitRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/orbit/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Orbit.
  Future<Orbit?> configOrbitRetrieve(int id,) async {
    final response = await configOrbitRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Orbit',) as Orbit;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/roadclosurestatus/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configRoadclosurestatusListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/roadclosurestatus/';

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

  /// Parameters:
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
  Future<PaginatedRoadClosureStatusList?> configRoadclosurestatusList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configRoadclosurestatusListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedRoadClosureStatusList',) as PaginatedRoadClosureStatusList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/roadclosurestatus/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Road Closure Type.
  Future<Response> configRoadclosurestatusRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/roadclosurestatus/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Road Closure Type.
  Future<RoadClosureStatus?> configRoadclosurestatusRetrieve(int id,) async {
    final response = await configRoadclosurestatusRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoadClosureStatus',) as RoadClosureStatus;
    
    }
    return null;
  }

  /// API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] humanRated:
  ///
  /// * [bool] inUse:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] manufacturer:
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
  Future<Response> configSpacecraftListWithHttpInfo({ bool? humanRated, bool? inUse, int? limit, int? manufacturer, String? name, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacecraft/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (humanRated != null) {
      queryParams.addAll(_queryParams('', 'human_rated', humanRated));
    }
    if (inUse != null) {
      queryParams.addAll(_queryParams('', 'in_use', inUse));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (manufacturer != null) {
      queryParams.addAll(_queryParams('', 'manufacturer', manufacturer));
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

  /// API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name
  ///
  /// Parameters:
  ///
  /// * [bool] humanRated:
  ///
  /// * [bool] inUse:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] manufacturer:
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
  Future<PaginatedSpacecraftConfigurationList?> configSpacecraftList({ bool? humanRated, bool? inUse, int? limit, int? manufacturer, String? name, int? offset, String? ordering, String? search, }) async {
    final response = await configSpacecraftListWithHttpInfo( humanRated: humanRated, inUse: inUse, limit: limit, manufacturer: manufacturer, name: name, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpacecraftConfigurationList',) as PaginatedSpacecraftConfigurationList;
    
    }
    return null;
  }

  /// API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Configuration.
  Future<Response> configSpacecraftRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacecraft/{id}/'
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

  /// API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Configuration.
  Future<SpacecraftConfigurationDetail?> configSpacecraftRetrieve(int id,) async {
    final response = await configSpacecraftRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpacecraftConfigurationDetail',) as SpacecraftConfigurationDetail;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/spacecraftstatus/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configSpacecraftstatusListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacecraftstatus/';

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

  /// Parameters:
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
  Future<PaginatedSpacecraftStatusList?> configSpacecraftstatusList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configSpacecraftstatusListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpacecraftStatusList',) as PaginatedSpacecraftStatusList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/spacecraftstatus/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Status.
  Future<Response> configSpacecraftstatusRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacecraftstatus/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Spacecraft Status.
  Future<SpacecraftStatus?> configSpacecraftstatusRetrieve(int id,) async {
    final response = await configSpacecraftstatusRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpacecraftStatus',) as SpacecraftStatus;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/spacestationstatus/' operation and returns the [Response].
  /// Parameters:
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
  Future<Response> configSpacestationstatusListWithHttpInfo({ int? limit, int? offset, String? ordering, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacestationstatus/';

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

  /// Parameters:
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
  Future<PaginatedSpaceStationStatusList?> configSpacestationstatusList({ int? limit, int? offset, String? ordering, String? search, }) async {
    final response = await configSpacestationstatusListWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedSpaceStationStatusList',) as PaginatedSpaceStationStatusList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /2.2.0/config/spacestationstatus/{id}/' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Space Station Status.
  Future<Response> configSpacestationstatusRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/config/spacestationstatus/{id}/'
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

  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Space Station Status.
  Future<SpaceStationStatus?> configSpacestationstatusRetrieve(int id,) async {
    final response = await configSpacestationstatusRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceStationStatus',) as SpaceStationStatus;
    
    }
    return null;
  }
}
