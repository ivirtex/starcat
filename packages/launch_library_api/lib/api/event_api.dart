//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class EventApi {
  EventApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<Response> eventListWithHttpInfo({ int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (typeIds != null) {
      queryParams.addAll(_queryParams('csv', 'type__ids', typeIds));
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

  /// API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name
  ///
  /// Parameters:
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<PaginatedEventsList?> eventList({ int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    final response = await eventListWithHttpInfo( id: id, limit: limit, offset: offset, program: program, search: search, slug: slug, type: type, typeIds: typeIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedEventsList',) as PaginatedEventsList;
    
    }
    return null;
  }

  /// API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<Response> eventPreviousListWithHttpInfo({ int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/previous/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (typeIds != null) {
      queryParams.addAll(_queryParams('csv', 'type__ids', typeIds));
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

  /// API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events
  ///
  /// Parameters:
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<PaginatedEventsList?> eventPreviousList({ int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    final response = await eventPreviousListWithHttpInfo( id: id, limit: limit, offset: offset, program: program, search: search, slug: slug, type: type, typeIds: typeIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedEventsList',) as PaginatedEventsList;
    
    }
    return null;
  }

  /// API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Response> eventPreviousRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/previous/{id}/'
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

  /// API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Events?> eventPreviousRetrieve(int id,) async {
    final response = await eventPreviousRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Events',) as Events;
    
    }
    return null;
  }

  /// API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Response> eventRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/{id}/'
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

  /// API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Events?> eventRetrieve(int id,) async {
    final response = await eventRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Events',) as Events;
    
    }
    return null;
  }

  /// API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] hideRecentPrevious:
  ///   Hide events from the past 24 hours, which are included by default for convenience.
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<Response> eventUpcomingListWithHttpInfo({ bool? hideRecentPrevious, int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/upcoming/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hideRecentPrevious != null) {
      queryParams.addAll(_queryParams('', 'hide_recent_previous', hideRecentPrevious));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (program != null) {
      queryParams.addAll(_queryParams('multi', 'program', program));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (slug != null) {
      queryParams.addAll(_queryParams('', 'slug', slug));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (typeIds != null) {
      queryParams.addAll(_queryParams('csv', 'type__ids', typeIds));
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

  /// API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events
  ///
  /// Parameters:
  ///
  /// * [bool] hideRecentPrevious:
  ///   Hide events from the past 24 hours, which are included by default for convenience.
  ///
  /// * [int] id:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [List<int>] program:
  ///
  /// * [String] search:
  ///   A search term.
  ///
  /// * [String] slug:
  ///
  /// * [int] type:
  ///
  /// * [List<int>] typeIds:
  ///   Comma-separated event type IDs.
  Future<PaginatedEventsList?> eventUpcomingList({ bool? hideRecentPrevious, int? id, int? limit, int? offset, List<int>? program, String? search, String? slug, int? type, List<int>? typeIds, }) async {
    final response = await eventUpcomingListWithHttpInfo( hideRecentPrevious: hideRecentPrevious, id: id, limit: limit, offset: offset, program: program, search: search, slug: slug, type: type, typeIds: typeIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedEventsList',) as PaginatedEventsList;
    
    }
    return null;
  }

  /// API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Response> eventUpcomingRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/event/upcoming/{id}/'
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

  /// API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Event.
  Future<Events?> eventUpcomingRetrieve(int id,) async {
    final response = await eventUpcomingRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Events',) as Events;
    
    }
    return null;
  }
}
