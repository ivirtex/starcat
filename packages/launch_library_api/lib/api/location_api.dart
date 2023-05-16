//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class LocationApi {
  LocationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] countryCode:
  ///
  /// * [String] countryCodeContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idGt:
  ///
  /// * [int] idGte:
  ///
  /// * [int] idLt:
  ///
  /// * [int] idLte:
  ///
  /// * [int] launchLibraryId:
  ///
  /// * [int] launchLibraryIdContains:
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
  /// * [String] search:
  ///   A search term.
  ///
  /// * [int] totalLandingCount:
  ///
  /// * [int] totalLandingCountGt:
  ///
  /// * [int] totalLandingCountGte:
  ///
  /// * [int] totalLandingCountLt:
  ///
  /// * [int] totalLandingCountLte:
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
  Future<Response> locationListWithHttpInfo({ String? countryCode, String? countryCodeContains, int? id, int? idGt, int? idGte, int? idLt, int? idLte, int? launchLibraryId, int? launchLibraryIdContains, int? limit, String? name, String? nameContains, int? offset, String? search, int? totalLandingCount, int? totalLandingCountGt, int? totalLandingCountGte, int? totalLandingCountLt, int? totalLandingCountLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/location/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (countryCode != null) {
      queryParams.addAll(_queryParams('', 'country_code', countryCode));
    }
    if (countryCodeContains != null) {
      queryParams.addAll(_queryParams('', 'country_code__contains', countryCodeContains));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idGt != null) {
      queryParams.addAll(_queryParams('', 'id__gt', idGt));
    }
    if (idGte != null) {
      queryParams.addAll(_queryParams('', 'id__gte', idGte));
    }
    if (idLt != null) {
      queryParams.addAll(_queryParams('', 'id__lt', idLt));
    }
    if (idLte != null) {
      queryParams.addAll(_queryParams('', 'id__lte', idLte));
    }
    if (launchLibraryId != null) {
      queryParams.addAll(_queryParams('', 'launch_library_id', launchLibraryId));
    }
    if (launchLibraryIdContains != null) {
      queryParams.addAll(_queryParams('', 'launch_library_id__contains', launchLibraryIdContains));
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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (totalLandingCount != null) {
      queryParams.addAll(_queryParams('', 'total_landing_count', totalLandingCount));
    }
    if (totalLandingCountGt != null) {
      queryParams.addAll(_queryParams('', 'total_landing_count__gt', totalLandingCountGt));
    }
    if (totalLandingCountGte != null) {
      queryParams.addAll(_queryParams('', 'total_landing_count__gte', totalLandingCountGte));
    }
    if (totalLandingCountLt != null) {
      queryParams.addAll(_queryParams('', 'total_landing_count__lt', totalLandingCountLt));
    }
    if (totalLandingCountLte != null) {
      queryParams.addAll(_queryParams('', 'total_landing_count__lte', totalLandingCountLte));
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

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA
  ///
  /// Parameters:
  ///
  /// * [String] countryCode:
  ///
  /// * [String] countryCodeContains:
  ///
  /// * [int] id:
  ///
  /// * [int] idGt:
  ///
  /// * [int] idGte:
  ///
  /// * [int] idLt:
  ///
  /// * [int] idLte:
  ///
  /// * [int] launchLibraryId:
  ///
  /// * [int] launchLibraryIdContains:
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
  /// * [String] search:
  ///   A search term.
  ///
  /// * [int] totalLandingCount:
  ///
  /// * [int] totalLandingCountGt:
  ///
  /// * [int] totalLandingCountGte:
  ///
  /// * [int] totalLandingCountLt:
  ///
  /// * [int] totalLandingCountLte:
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
  Future<PaginatedLocationList?> locationList({ String? countryCode, String? countryCodeContains, int? id, int? idGt, int? idGte, int? idLt, int? idLte, int? launchLibraryId, int? launchLibraryIdContains, int? limit, String? name, String? nameContains, int? offset, String? search, int? totalLandingCount, int? totalLandingCountGt, int? totalLandingCountGte, int? totalLandingCountLt, int? totalLandingCountLte, int? totalLaunchCount, int? totalLaunchCountGt, int? totalLaunchCountGte, int? totalLaunchCountLt, int? totalLaunchCountLte, }) async {
    final response = await locationListWithHttpInfo( countryCode: countryCode, countryCodeContains: countryCodeContains, id: id, idGt: idGt, idGte: idGte, idLt: idLt, idLte: idLte, launchLibraryId: launchLibraryId, launchLibraryIdContains: launchLibraryIdContains, limit: limit, name: name, nameContains: nameContains, offset: offset, search: search, totalLandingCount: totalLandingCount, totalLandingCountGt: totalLandingCountGt, totalLandingCountGte: totalLandingCountGte, totalLandingCountLt: totalLandingCountLt, totalLandingCountLte: totalLandingCountLte, totalLaunchCount: totalLaunchCount, totalLaunchCountGt: totalLaunchCountGt, totalLaunchCountGte: totalLaunchCountGte, totalLaunchCountLt: totalLaunchCountLt, totalLaunchCountLte: totalLaunchCountLte, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedLocationList',) as PaginatedLocationList;
    
    }
    return null;
  }

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Location.
  Future<Response> locationRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/location/{id}/'
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

  /// API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Location.
  Future<LocationDetail?> locationRetrieve(int id,) async {
    final response = await locationRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LocationDetail',) as LocationDetail;
    
    }
    return null;
  }
}
