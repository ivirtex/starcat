//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class UpdatesApi {
  UpdatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] createdOn:
  ///
  /// * [String] launch:
  ///
  /// * [int] launchLaunchServiceProvider:
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
  /// * [int] program:
  ///
  /// * [String] search:
  ///   A search term.
  Future<Response> updatesListWithHttpInfo({ DateTime? createdOn, String? launch, int? launchLaunchServiceProvider, int? limit, int? offset, String? ordering, int? program, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/updates/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (createdOn != null) {
      queryParams.addAll(_queryParams('', 'created_on', createdOn));
    }
    if (launch != null) {
      queryParams.addAll(_queryParams('', 'launch', launch));
    }
    if (launchLaunchServiceProvider != null) {
      queryParams.addAll(_queryParams('', 'launch__launch_service_provider', launchLaunchServiceProvider));
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
    if (program != null) {
      queryParams.addAll(_queryParams('', 'program', program));
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

  /// API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on
  ///
  /// Parameters:
  ///
  /// * [DateTime] createdOn:
  ///
  /// * [String] launch:
  ///
  /// * [int] launchLaunchServiceProvider:
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
  /// * [int] program:
  ///
  /// * [String] search:
  ///   A search term.
  Future<PaginatedUpdateList?> updatesList({ DateTime? createdOn, String? launch, int? launchLaunchServiceProvider, int? limit, int? offset, String? ordering, int? program, String? search, }) async {
    final response = await updatesListWithHttpInfo( createdOn: createdOn, launch: launch, launchLaunchServiceProvider: launchLaunchServiceProvider, limit: limit, offset: offset, ordering: ordering, program: program, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedUpdateList',) as PaginatedUpdateList;
    
    }
    return null;
  }

  /// API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Update.
  Future<Response> updatesRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/updates/{id}/'
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

  /// API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Update.
  Future<Update?> updatesRetrieve(int id,) async {
    final response = await updatesRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Update',) as Update;
    
    }
    return null;
  }
}
