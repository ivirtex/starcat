//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;


class AstronautApi {
  AstronautApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] age:
  ///
  /// * [int] ageGt:
  ///
  /// * [int] ageGte:
  ///
  /// * [int] ageLt:
  ///
  /// * [int] ageLte:
  ///
  /// * [List<num>] agencyIds:
  ///   Comma-separated agency IDs.
  ///
  /// * [DateTime] dateOfBirth:
  ///
  /// * [DateTime] dateOfBirthGt:
  ///
  /// * [DateTime] dateOfBirthGte:
  ///
  /// * [DateTime] dateOfBirthLt:
  ///
  /// * [DateTime] dateOfBirthLte:
  ///
  /// * [DateTime] dateOfDeath:
  ///
  /// * [DateTime] dateOfDeathGt:
  ///
  /// * [DateTime] dateOfDeathGte:
  ///
  /// * [DateTime] dateOfDeathLt:
  ///
  /// * [DateTime] dateOfDeathLte:
  ///
  /// * [int] flightsCount:
  ///
  /// * [int] flightsCountGt:
  ///
  /// * [int] flightsCountGte:
  ///
  /// * [int] flightsCountLt:
  ///
  /// * [int] flightsCountLte:
  ///
  /// * [bool] hasFlown:
  ///
  /// * [bool] inSpace:
  ///
  /// * [bool] isHuman:
  ///
  /// * [int] landingsCount:
  ///
  /// * [int] landingsCountGt:
  ///
  /// * [int] landingsCountGte:
  ///
  /// * [int] landingsCountLt:
  ///
  /// * [int] landingsCountLte:
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
  ///
  /// * [List<num>] statusIds:
  ///   Comma-separated astronaut status IDs.
  ///
  /// * [int] typeId:
  Future<Response> astronautListWithHttpInfo({ int? age, int? ageGt, int? ageGte, int? ageLt, int? ageLte, List<num>? agencyIds, DateTime? dateOfBirth, DateTime? dateOfBirthGt, DateTime? dateOfBirthGte, DateTime? dateOfBirthLt, DateTime? dateOfBirthLte, DateTime? dateOfDeath, DateTime? dateOfDeathGt, DateTime? dateOfDeathGte, DateTime? dateOfDeathLt, DateTime? dateOfDeathLte, int? flightsCount, int? flightsCountGt, int? flightsCountGte, int? flightsCountLt, int? flightsCountLte, bool? hasFlown, bool? inSpace, bool? isHuman, int? landingsCount, int? landingsCountGt, int? landingsCountGte, int? landingsCountLt, int? landingsCountLte, int? limit, int? offset, String? ordering, String? search, List<num>? statusIds, int? typeId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/astronaut/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (age != null) {
      queryParams.addAll(_queryParams('', 'age', age));
    }
    if (ageGt != null) {
      queryParams.addAll(_queryParams('', 'age__gt', ageGt));
    }
    if (ageGte != null) {
      queryParams.addAll(_queryParams('', 'age__gte', ageGte));
    }
    if (ageLt != null) {
      queryParams.addAll(_queryParams('', 'age__lt', ageLt));
    }
    if (ageLte != null) {
      queryParams.addAll(_queryParams('', 'age__lte', ageLte));
    }
    if (agencyIds != null) {
      queryParams.addAll(_queryParams('csv', 'agency_ids', agencyIds));
    }
    if (dateOfBirth != null) {
      queryParams.addAll(_queryParams('', 'date_of_birth', dateOfBirth));
    }
    if (dateOfBirthGt != null) {
      queryParams.addAll(_queryParams('', 'date_of_birth__gt', dateOfBirthGt));
    }
    if (dateOfBirthGte != null) {
      queryParams.addAll(_queryParams('', 'date_of_birth__gte', dateOfBirthGte));
    }
    if (dateOfBirthLt != null) {
      queryParams.addAll(_queryParams('', 'date_of_birth__lt', dateOfBirthLt));
    }
    if (dateOfBirthLte != null) {
      queryParams.addAll(_queryParams('', 'date_of_birth__lte', dateOfBirthLte));
    }
    if (dateOfDeath != null) {
      queryParams.addAll(_queryParams('', 'date_of_death', dateOfDeath));
    }
    if (dateOfDeathGt != null) {
      queryParams.addAll(_queryParams('', 'date_of_death__gt', dateOfDeathGt));
    }
    if (dateOfDeathGte != null) {
      queryParams.addAll(_queryParams('', 'date_of_death__gte', dateOfDeathGte));
    }
    if (dateOfDeathLt != null) {
      queryParams.addAll(_queryParams('', 'date_of_death__lt', dateOfDeathLt));
    }
    if (dateOfDeathLte != null) {
      queryParams.addAll(_queryParams('', 'date_of_death__lte', dateOfDeathLte));
    }
    if (flightsCount != null) {
      queryParams.addAll(_queryParams('', 'flights_count', flightsCount));
    }
    if (flightsCountGt != null) {
      queryParams.addAll(_queryParams('', 'flights_count__gt', flightsCountGt));
    }
    if (flightsCountGte != null) {
      queryParams.addAll(_queryParams('', 'flights_count__gte', flightsCountGte));
    }
    if (flightsCountLt != null) {
      queryParams.addAll(_queryParams('', 'flights_count__lt', flightsCountLt));
    }
    if (flightsCountLte != null) {
      queryParams.addAll(_queryParams('', 'flights_count__lte', flightsCountLte));
    }
    if (hasFlown != null) {
      queryParams.addAll(_queryParams('', 'has_flown', hasFlown));
    }
    if (inSpace != null) {
      queryParams.addAll(_queryParams('', 'in_space', inSpace));
    }
    if (isHuman != null) {
      queryParams.addAll(_queryParams('', 'is_human', isHuman));
    }
    if (landingsCount != null) {
      queryParams.addAll(_queryParams('', 'landings_count', landingsCount));
    }
    if (landingsCountGt != null) {
      queryParams.addAll(_queryParams('', 'landings_count__gt', landingsCountGt));
    }
    if (landingsCountGte != null) {
      queryParams.addAll(_queryParams('', 'landings_count__gte', landingsCountGte));
    }
    if (landingsCountLt != null) {
      queryParams.addAll(_queryParams('', 'landings_count__lt', landingsCountLt));
    }
    if (landingsCountLte != null) {
      queryParams.addAll(_queryParams('', 'landings_count__lte', landingsCountLte));
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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (statusIds != null) {
      queryParams.addAll(_queryParams('csv', 'status_ids', statusIds));
    }
    if (typeId != null) {
      queryParams.addAll(_queryParams('', 'type__id', typeId));
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

  /// API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name
  ///
  /// Parameters:
  ///
  /// * [int] age:
  ///
  /// * [int] ageGt:
  ///
  /// * [int] ageGte:
  ///
  /// * [int] ageLt:
  ///
  /// * [int] ageLte:
  ///
  /// * [List<num>] agencyIds:
  ///   Comma-separated agency IDs.
  ///
  /// * [DateTime] dateOfBirth:
  ///
  /// * [DateTime] dateOfBirthGt:
  ///
  /// * [DateTime] dateOfBirthGte:
  ///
  /// * [DateTime] dateOfBirthLt:
  ///
  /// * [DateTime] dateOfBirthLte:
  ///
  /// * [DateTime] dateOfDeath:
  ///
  /// * [DateTime] dateOfDeathGt:
  ///
  /// * [DateTime] dateOfDeathGte:
  ///
  /// * [DateTime] dateOfDeathLt:
  ///
  /// * [DateTime] dateOfDeathLte:
  ///
  /// * [int] flightsCount:
  ///
  /// * [int] flightsCountGt:
  ///
  /// * [int] flightsCountGte:
  ///
  /// * [int] flightsCountLt:
  ///
  /// * [int] flightsCountLte:
  ///
  /// * [bool] hasFlown:
  ///
  /// * [bool] inSpace:
  ///
  /// * [bool] isHuman:
  ///
  /// * [int] landingsCount:
  ///
  /// * [int] landingsCountGt:
  ///
  /// * [int] landingsCountGte:
  ///
  /// * [int] landingsCountLt:
  ///
  /// * [int] landingsCountLte:
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
  ///
  /// * [List<num>] statusIds:
  ///   Comma-separated astronaut status IDs.
  ///
  /// * [int] typeId:
  Future<PaginatedAstronautNormalList?> astronautList({ int? age, int? ageGt, int? ageGte, int? ageLt, int? ageLte, List<num>? agencyIds, DateTime? dateOfBirth, DateTime? dateOfBirthGt, DateTime? dateOfBirthGte, DateTime? dateOfBirthLt, DateTime? dateOfBirthLte, DateTime? dateOfDeath, DateTime? dateOfDeathGt, DateTime? dateOfDeathGte, DateTime? dateOfDeathLt, DateTime? dateOfDeathLte, int? flightsCount, int? flightsCountGt, int? flightsCountGte, int? flightsCountLt, int? flightsCountLte, bool? hasFlown, bool? inSpace, bool? isHuman, int? landingsCount, int? landingsCountGt, int? landingsCountGte, int? landingsCountLt, int? landingsCountLte, int? limit, int? offset, String? ordering, String? search, List<num>? statusIds, int? typeId, }) async {
    final response = await astronautListWithHttpInfo( age: age, ageGt: ageGt, ageGte: ageGte, ageLt: ageLt, ageLte: ageLte, agencyIds: agencyIds, dateOfBirth: dateOfBirth, dateOfBirthGt: dateOfBirthGt, dateOfBirthGte: dateOfBirthGte, dateOfBirthLt: dateOfBirthLt, dateOfBirthLte: dateOfBirthLte, dateOfDeath: dateOfDeath, dateOfDeathGt: dateOfDeathGt, dateOfDeathGte: dateOfDeathGte, dateOfDeathLt: dateOfDeathLt, dateOfDeathLte: dateOfDeathLte, flightsCount: flightsCount, flightsCountGt: flightsCountGt, flightsCountGte: flightsCountGte, flightsCountLt: flightsCountLt, flightsCountLte: flightsCountLte, hasFlown: hasFlown, inSpace: inSpace, isHuman: isHuman, landingsCount: landingsCount, landingsCountGt: landingsCountGt, landingsCountGte: landingsCountGte, landingsCountLt: landingsCountLt, landingsCountLte: landingsCountLte, limit: limit, offset: offset, ordering: ordering, search: search, statusIds: statusIds, typeId: typeId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedAstronautNormalList',) as PaginatedAstronautNormalList;
    
    }
    return null;
  }

  /// API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut.
  Future<Response> astronautRetrieveWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/2.2.0/astronaut/{id}/'
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

  /// API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   A unique integer value identifying this Astronaut.
  Future<AstronautDetailed?> astronautRetrieve(int id,) async {
    final response = await astronautRetrieveWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AstronautDetailed',) as AstronautDetailed;
    
    }
    return null;
  }
}
