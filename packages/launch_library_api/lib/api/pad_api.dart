//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class PadApi {
  PadApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] agencyId:
  ///
  /// * [int] agencyIdContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idContains:
  ///
  /// * [String] latitude:
  ///
  /// * [String] latitudeContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] locationId:
  ///
  /// * [String] locationName:
  ///
  /// * [String] locationNameContains:
  ///
  /// * [String] longitude:
  ///
  /// * [String] longitudeContains:
  ///
  /// * [String] name:
  ///
  /// * [String] nameContains:
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [String] search:
  ///   A search term.
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
  Future<Response> padListWithHttpInfo({ int? agencyId, int? agencyIdContains, int? id, int? idContains, String? latitude, String? latitudeContains, int? limit, int? locationId, String? locationName, String? locationNameContains, String? longitude, String? longitudeContains, String? name, String? nameContains, int? offset, int? orbitalLaunchAttemptCount, int? orbitalLaunchAttemptCountGt, int? orbitalLaunchAttemptCountGte, int? orbitalLaunchAttemptCountLt, int? orbitalLaunchAttemptCountLte, String? search, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/pad/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (agencyId != null) {
      queryParams.addAll(_queryParams('', 'agency_id', agencyId));
    }
    if (agencyIdContains != null) {
      queryParams.addAll(_queryParams('', 'agency_id__contains', agencyIdContains));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idContains != null) {
      queryParams.addAll(_queryParams('', 'id__contains', idContains));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (latitudeContains != null) {
      queryParams.addAll(_queryParams('', 'latitude__contains', latitudeContains));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (locationId != null) {
      queryParams.addAll(_queryParams('', 'location__id', locationId));
    }
    if (locationName != null) {
      queryParams.addAll(_queryParams('', 'location__name', locationName));
    }
    if (locationNameContains != null) {
      queryParams.addAll(_queryParams('', 'location__name__contains', locationNameContains));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (longitudeContains != null) {
      queryParams.addAll(_queryParams('', 'longitude__contains', longitudeContains));
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
    if (orbitalLaunchAttemptCount != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count', orbitalLaunchAttemptCount));
    }
    if (orbitalLaunchAttemptCountGt != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__gt', orbitalLaunchAttemptCountGt));
    }
    if (orbitalLaunchAttemptCountGte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__gte', orbitalLaunchAttemptCountGte));
    }
    if (orbitalLaunchAttemptCountLt != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__lt', orbitalLaunchAttemptCountLt));
    }
    if (orbitalLaunchAttemptCountLte != null) {
      queryParams.addAll(_queryParams('', 'orbital_launch_attempt_count__lte', orbitalLaunchAttemptCountLte));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'
  ///
  /// Parameters:
  ///
  /// * [int] agencyId:
  ///
  /// * [int] agencyIdContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idContains:
  ///
  /// * [String] latitude:
  ///
  /// * [String] latitudeContains:
  ///
  /// * [int] limit:
  ///   Number of results to return per page.
  ///
  /// * [int] locationId:
  ///
  /// * [String] locationName:
  ///
  /// * [String] locationNameContains:
  ///
  /// * [String] longitude:
  ///
  /// * [String] longitudeContains:
  ///
  /// * [String] name:
  ///
  /// * [String] nameContains:
  ///
  /// * [int] offset:
  ///   The initial index from which to return the results.
  ///
  /// * [int] orbitalLaunchAttemptCount:
  ///
  /// * [int] orbitalLaunchAttemptCountGt:
  ///
  /// * [int] orbitalLaunchAttemptCountGte:
  ///
  /// * [int] orbitalLaunchAttemptCountLt:
  ///
  /// * [int] orbitalLaunchAttemptCountLte:
  ///
  /// * [String] search:
  ///   A search term.
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
  Future<PaginatedPadList?> padList({ int? agencyId, int? agencyIdContains, int? id, int? idContains, String? latitude, String? latitudeContains, int? limit, int? locationId, String? locationName, String? locationNameContains, String? longitude, String? longitudeContains, String? name, String? nameContains, int? offset, int? orbitalLaunchAttemptCount, int? orbitalLaunchAttemptCountGt, int? orbitalLaunchAttemptCountGte, int? orbitalLaunchAttemptCountLt, int? orbitalLaunchAttemptCountLte, String? search, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    final response = await padListWithHttpInfo( agencyId: agencyId, agencyIdContains: agencyIdContains, id: id, idContains: idContains, latitude: latitude, latitudeContains: latitudeContains, limit: limit, locationId: locationId, locationName: locationName, locationNameContains: locationNameContains, longitude: longitude, longitudeContains: longitudeContains, name: name, nameContains: nameContains, offset: offset, orbitalLaunchAttemptCount: orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt: orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte: orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt: orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte: orbitalLaunchAttemptCountLte, search: search, totalLaunchCount: totalLaunchCount, totalLaunchCountGt: totalLaunchCountGt, totalLaunchCountGte: totalLaunchCountGte, totalLaunchCountLt: totalLaunchCountLt, totalLaunchCountLte: totalLaunchCountLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedPadList',) as PaginatedPadList;
    
    }
    return null;
  }

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Pad.
  Future<Response> padRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/pad/{id}/'
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

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Pad.
  Future<Pad?> padRetrieve(int id,) async {
    final response = await padRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pad',) as Pad;
    
    }
    return null;
  }
}
