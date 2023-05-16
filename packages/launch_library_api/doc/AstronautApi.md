# launch_library_api.api.AstronautApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**astronautList**](AstronautApi.md#astronautlist) | **GET** /2.2.0/astronaut/ | 
[**astronautRetrieve**](AstronautApi.md#astronautretrieve) | **GET** /2.2.0/astronaut/{id}/ | 


# **astronautList**
> PaginatedAstronautNormalList astronautList(age, ageGt, ageGte, ageLt, ageLte, agencyIds, dateOfBirth, dateOfBirthGt, dateOfBirthGte, dateOfBirthLt, dateOfBirthLte, dateOfDeath, dateOfDeathGt, dateOfDeathGte, dateOfDeathLt, dateOfDeathLte, flightsCount, flightsCountGt, flightsCountGte, flightsCountLt, flightsCountLte, hasFlown, inSpace, isHuman, landingsCount, landingsCountGt, landingsCountGte, landingsCountLt, landingsCountLte, limit, offset, ordering, search, statusIds, typeId)



API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name

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

final api_instance = AstronautApi();
final age = 56; // int | 
final ageGt = 56; // int | 
final ageGte = 56; // int | 
final ageLt = 56; // int | 
final ageLte = 56; // int | 
final agencyIds = []; // List<num> | Comma-separated agency IDs.
final dateOfBirth = 2013-10-20; // DateTime | 
final dateOfBirthGt = 2013-10-20; // DateTime | 
final dateOfBirthGte = 2013-10-20; // DateTime | 
final dateOfBirthLt = 2013-10-20; // DateTime | 
final dateOfBirthLte = 2013-10-20; // DateTime | 
final dateOfDeath = 2013-10-20; // DateTime | 
final dateOfDeathGt = 2013-10-20; // DateTime | 
final dateOfDeathGte = 2013-10-20; // DateTime | 
final dateOfDeathLt = 2013-10-20; // DateTime | 
final dateOfDeathLte = 2013-10-20; // DateTime | 
final flightsCount = 56; // int | 
final flightsCountGt = 56; // int | 
final flightsCountGte = 56; // int | 
final flightsCountLt = 56; // int | 
final flightsCountLte = 56; // int | 
final hasFlown = true; // bool | 
final inSpace = true; // bool | 
final isHuman = true; // bool | 
final landingsCount = 56; // int | 
final landingsCountGt = 56; // int | 
final landingsCountGte = 56; // int | 
final landingsCountLt = 56; // int | 
final landingsCountLte = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.
final statusIds = []; // List<num> | Comma-separated astronaut status IDs.
final typeId = 56; // int | 

try {
    final result = api_instance.astronautList(age, ageGt, ageGte, ageLt, ageLte, agencyIds, dateOfBirth, dateOfBirthGt, dateOfBirthGte, dateOfBirthLt, dateOfBirthLte, dateOfDeath, dateOfDeathGt, dateOfDeathGte, dateOfDeathLt, dateOfDeathLte, flightsCount, flightsCountGt, flightsCountGte, flightsCountLt, flightsCountLte, hasFlown, inSpace, isHuman, landingsCount, landingsCountGt, landingsCountGte, landingsCountLt, landingsCountLte, limit, offset, ordering, search, statusIds, typeId);
    print(result);
} catch (e) {
    print('Exception when calling AstronautApi->astronautList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **age** | **int**|  | [optional] 
 **ageGt** | **int**|  | [optional] 
 **ageGte** | **int**|  | [optional] 
 **ageLt** | **int**|  | [optional] 
 **ageLte** | **int**|  | [optional] 
 **agencyIds** | [**List<num>**](num.md)| Comma-separated agency IDs. | [optional] [default to const []]
 **dateOfBirth** | **DateTime**|  | [optional] 
 **dateOfBirthGt** | **DateTime**|  | [optional] 
 **dateOfBirthGte** | **DateTime**|  | [optional] 
 **dateOfBirthLt** | **DateTime**|  | [optional] 
 **dateOfBirthLte** | **DateTime**|  | [optional] 
 **dateOfDeath** | **DateTime**|  | [optional] 
 **dateOfDeathGt** | **DateTime**|  | [optional] 
 **dateOfDeathGte** | **DateTime**|  | [optional] 
 **dateOfDeathLt** | **DateTime**|  | [optional] 
 **dateOfDeathLte** | **DateTime**|  | [optional] 
 **flightsCount** | **int**|  | [optional] 
 **flightsCountGt** | **int**|  | [optional] 
 **flightsCountGte** | **int**|  | [optional] 
 **flightsCountLt** | **int**|  | [optional] 
 **flightsCountLte** | **int**|  | [optional] 
 **hasFlown** | **bool**|  | [optional] 
 **inSpace** | **bool**|  | [optional] 
 **isHuman** | **bool**|  | [optional] 
 **landingsCount** | **int**|  | [optional] 
 **landingsCountGt** | **int**|  | [optional] 
 **landingsCountGte** | **int**|  | [optional] 
 **landingsCountLt** | **int**|  | [optional] 
 **landingsCountLte** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **statusIds** | [**List<num>**](num.md)| Comma-separated astronaut status IDs. | [optional] [default to const []]
 **typeId** | **int**|  | [optional] 

### Return type

[**PaginatedAstronautNormalList**](PaginatedAstronautNormalList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **astronautRetrieve**
> AstronautDetailed astronautRetrieve(id)



API endpoint that allows Astronaut to be viewed.  GET: Return a list of all the existing astronauts.  MODE: Normal, List, LaunchList and Detailed /2.2.0/astronaut/?mode=detailed  FILTERS: Parameters - 'name', 'status', 'nationality', 'agency__name', 'agency__abbrev', 'date_of_birth',  'date_of_death', 'status_ids', 'is_human', 'type__id', 'has_flown', 'in_space' Example - /2.2.0/astronaut/?nationality=American  SEARCH EXAMPLE: /2.2.0/astronaut/?search=armstrong Searches through name, nationality and agency name  ORDERING: Fields - 'name', 'status', 'date_of_birth' Example - /2.2.0/astronaut/?order=name

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

final api_instance = AstronautApi();
final id = 56; // int | A unique integer value identifying this Astronaut.

try {
    final result = api_instance.astronautRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling AstronautApi->astronautRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Astronaut. | 

### Return type

[**AstronautDetailed**](AstronautDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

