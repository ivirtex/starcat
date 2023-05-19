# launch_library_api.api.AgenciesApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agenciesList**](AgenciesApi.md#agencieslist) | **GET** /2.2.0/agencies/ | 
[**agenciesRetrieve**](AgenciesApi.md#agenciesretrieve) | **GET** /2.2.0/agencies/{id}/ | 


# **agenciesList**
> PaginatedAgencyList agenciesList(abbrev, abbrevContains, administrator, administratorContains, agencyType, attemptedLandings, attemptedLandingsGt, attemptedLandingsGte, attemptedLandingsLt, attemptedLandingsLte, consecutiveSuccessfulLandings, consecutiveSuccessfulLandingsGt, consecutiveSuccessfulLandingsGte, consecutiveSuccessfulLandingsLt, consecutiveSuccessfulLandingsLte, consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte, description, descriptionContains, failedLandings, failedLandingsGt, failedLandingsGte, failedLandingsLt, failedLandingsLte, failedLaunches, failedLaunchesGt, failedLaunchesGte, failedLaunchesLt, failedLaunchesLte, featured, foundingYear, foundingYearContains, id, idGt, idGte, idLt, idLte, limit, name, nameContains, offset, ordering, parent, pendingLaunches, pendingLaunchesGt, pendingLaunchesGte, pendingLaunchesLt, pendingLaunchesLte, search, spacecraft, successfulLandings, successfulLandingsGt, successfulLandingsGte, successfulLandingsLt, successfulLandingsLte, successfulLaunches, successfulLaunchesGt, successfulLaunchesGte, successfulLaunchesLt, successfulLaunchesLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte)



API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.

### Example
```dart
import 'package:launch_library_api/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = AgenciesApi();
final abbrev = abbrev_example; // String | 
final abbrevContains = abbrevContains_example; // String | 
final administrator = administrator_example; // String | 
final administratorContains = administratorContains_example; // String | 
final agencyType = 56; // int | 
final attemptedLandings = 56; // int | 
final attemptedLandingsGt = 56; // int | 
final attemptedLandingsGte = 56; // int | 
final attemptedLandingsLt = 56; // int | 
final attemptedLandingsLte = 56; // int | 
final consecutiveSuccessfulLandings = 56; // int | 
final consecutiveSuccessfulLandingsGt = 56; // int | 
final consecutiveSuccessfulLandingsGte = 56; // int | 
final consecutiveSuccessfulLandingsLt = 56; // int | 
final consecutiveSuccessfulLandingsLte = 56; // int | 
final consecutiveSuccessfulLaunches = 56; // int | 
final consecutiveSuccessfulLaunchesGt = 56; // int | 
final consecutiveSuccessfulLaunchesGte = 56; // int | 
final consecutiveSuccessfulLaunchesLt = 56; // int | 
final consecutiveSuccessfulLaunchesLte = 56; // int | 
final description = description_example; // String | 
final descriptionContains = descriptionContains_example; // String | 
final failedLandings = 56; // int | 
final failedLandingsGt = 56; // int | 
final failedLandingsGte = 56; // int | 
final failedLandingsLt = 56; // int | 
final failedLandingsLte = 56; // int | 
final failedLaunches = 56; // int | 
final failedLaunchesGt = 56; // int | 
final failedLaunchesGte = 56; // int | 
final failedLaunchesLt = 56; // int | 
final failedLaunchesLte = 56; // int | 
final featured = true; // bool | 
final foundingYear = foundingYear_example; // String | 
final foundingYearContains = foundingYearContains_example; // String | 
final id = 56; // int | 
final idGt = 56; // int | 
final idGte = 56; // int | 
final idLt = 56; // int | 
final idLte = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final parent = 56; // int | 
final pendingLaunches = 56; // int | 
final pendingLaunchesGt = 56; // int | 
final pendingLaunchesGte = 56; // int | 
final pendingLaunchesLt = 56; // int | 
final pendingLaunchesLte = 56; // int | 
final search = search_example; // String | A search term.
final spacecraft = true; // bool | 
final successfulLandings = 56; // int | 
final successfulLandingsGt = 56; // int | 
final successfulLandingsGte = 56; // int | 
final successfulLandingsLt = 56; // int | 
final successfulLandingsLte = 56; // int | 
final successfulLaunches = 56; // int | 
final successfulLaunchesGt = 56; // int | 
final successfulLaunchesGte = 56; // int | 
final successfulLaunchesLt = 56; // int | 
final successfulLaunchesLte = 56; // int | 
final totalLaunchCount = 56; // int | 
final totalLaunchCountGt = 56; // int | 
final totalLaunchCountGte = 56; // int | 
final totalLaunchCountLt = 56; // int | 
final totalLaunchCountLte = 56; // int | 

try {
    final result = api_instance.agenciesList(abbrev, abbrevContains, administrator, administratorContains, agencyType, attemptedLandings, attemptedLandingsGt, attemptedLandingsGte, attemptedLandingsLt, attemptedLandingsLte, consecutiveSuccessfulLandings, consecutiveSuccessfulLandingsGt, consecutiveSuccessfulLandingsGte, consecutiveSuccessfulLandingsLt, consecutiveSuccessfulLandingsLte, consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte, description, descriptionContains, failedLandings, failedLandingsGt, failedLandingsGte, failedLandingsLt, failedLandingsLte, failedLaunches, failedLaunchesGt, failedLaunchesGte, failedLaunchesLt, failedLaunchesLte, featured, foundingYear, foundingYearContains, id, idGt, idGte, idLt, idLte, limit, name, nameContains, offset, ordering, parent, pendingLaunches, pendingLaunchesGt, pendingLaunchesGte, pendingLaunchesLt, pendingLaunchesLte, search, spacecraft, successfulLandings, successfulLandingsGt, successfulLandingsGte, successfulLandingsLt, successfulLandingsLte, successfulLaunches, successfulLaunchesGt, successfulLaunchesGte, successfulLaunchesLt, successfulLaunchesLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte);
    print(result);
} catch (e) {
    print('Exception when calling AgenciesApi->agenciesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **abbrev** | **String**|  | [optional] 
 **abbrevContains** | **String**|  | [optional] 
 **administrator** | **String**|  | [optional] 
 **administratorContains** | **String**|  | [optional] 
 **agencyType** | **int**|  | [optional] 
 **attemptedLandings** | **int**|  | [optional] 
 **attemptedLandingsGt** | **int**|  | [optional] 
 **attemptedLandingsGte** | **int**|  | [optional] 
 **attemptedLandingsLt** | **int**|  | [optional] 
 **attemptedLandingsLte** | **int**|  | [optional] 
 **consecutiveSuccessfulLandings** | **int**|  | [optional] 
 **consecutiveSuccessfulLandingsGt** | **int**|  | [optional] 
 **consecutiveSuccessfulLandingsGte** | **int**|  | [optional] 
 **consecutiveSuccessfulLandingsLt** | **int**|  | [optional] 
 **consecutiveSuccessfulLandingsLte** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunches** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesGt** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesGte** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesLt** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesLte** | **int**|  | [optional] 
 **description** | **String**|  | [optional] 
 **descriptionContains** | **String**|  | [optional] 
 **failedLandings** | **int**|  | [optional] 
 **failedLandingsGt** | **int**|  | [optional] 
 **failedLandingsGte** | **int**|  | [optional] 
 **failedLandingsLt** | **int**|  | [optional] 
 **failedLandingsLte** | **int**|  | [optional] 
 **failedLaunches** | **int**|  | [optional] 
 **failedLaunchesGt** | **int**|  | [optional] 
 **failedLaunchesGte** | **int**|  | [optional] 
 **failedLaunchesLt** | **int**|  | [optional] 
 **failedLaunchesLte** | **int**|  | [optional] 
 **featured** | **bool**|  | [optional] 
 **foundingYear** | **String**|  | [optional] 
 **foundingYearContains** | **String**|  | [optional] 
 **id** | **int**|  | [optional] 
 **idGt** | **int**|  | [optional] 
 **idGte** | **int**|  | [optional] 
 **idLt** | **int**|  | [optional] 
 **idLte** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **parent** | **int**|  | [optional] 
 **pendingLaunches** | **int**|  | [optional] 
 **pendingLaunchesGt** | **int**|  | [optional] 
 **pendingLaunchesGte** | **int**|  | [optional] 
 **pendingLaunchesLt** | **int**|  | [optional] 
 **pendingLaunchesLte** | **int**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **spacecraft** | **bool**|  | [optional] 
 **successfulLandings** | **int**|  | [optional] 
 **successfulLandingsGt** | **int**|  | [optional] 
 **successfulLandingsGte** | **int**|  | [optional] 
 **successfulLandingsLt** | **int**|  | [optional] 
 **successfulLandingsLte** | **int**|  | [optional] 
 **successfulLaunches** | **int**|  | [optional] 
 **successfulLaunchesGt** | **int**|  | [optional] 
 **successfulLaunchesGte** | **int**|  | [optional] 
 **successfulLaunchesLt** | **int**|  | [optional] 
 **successfulLaunchesLte** | **int**|  | [optional] 
 **totalLaunchCount** | **int**|  | [optional] 
 **totalLaunchCountGt** | **int**|  | [optional] 
 **totalLaunchCountGte** | **int**|  | [optional] 
 **totalLaunchCountLt** | **int**|  | [optional] 
 **totalLaunchCountLte** | **int**|  | [optional] 

### Return type

[**PaginatedAgencyList**](PaginatedAgencyList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agenciesRetrieve**
> AgencySerializerDetailed agenciesRetrieve(id)



API endpoint that allows Agencies to be viewed.  GET: Return a list of all the existing users.  MODE: Normal and Detailed /2.2.0/agencies/?mode=detailed  FILTERS: Parameters - 'featured', 'agency_type', 'country_code' Example - /2.2.0/agencies/?featured=true  SEARCH EXAMPLE: /2.2.0/agencies/?search=nasa  ORDERING: Fields - 'id', 'name', 'featured' Example - /2.2.0/agencies/?ordering=featured  The 'country_code' field is a string of comma separated ISO 3166 alpha-3 codes.

### Example
```dart
import 'package:launch_library_api/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: tokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: cookieAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('cookieAuth').apiKeyPrefix = 'Bearer';

final api_instance = AgenciesApi();
final id = 56; // int | A unique integer value identifying this Agency.

try {
    final result = api_instance.agenciesRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling AgenciesApi->agenciesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Agency. | 

### Return type

[**AgencySerializerDetailed**](AgencySerializerDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

