# launch_library_api.api.ExpeditionApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expeditionList**](ExpeditionApi.md#expeditionlist) | **GET** /2.2.0/expedition/ | 
[**expeditionRetrieve**](ExpeditionApi.md#expeditionretrieve) | **GET** /2.2.0/expedition/{id}/ | 


# **expeditionList**
> PaginatedExpeditionList expeditionList(crewAstronaut, crewAstronautAgency, endGt, endGte, endLt, endLte, limit, name, offset, ordering, search, spaceStation, startGt, startGte, startLt, startLte)



API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start

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

final api_instance = ExpeditionApi();
final crewAstronaut = 56; // int | 
final crewAstronautAgency = 56; // int | 
final endGt = 2013-10-20T19:20:30+01:00; // DateTime | End is greater than
final endGte = 2013-10-20T19:20:30+01:00; // DateTime | End is greater than or equal to
final endLt = 2013-10-20T19:20:30+01:00; // DateTime | End is less than
final endLte = 2013-10-20T19:20:30+01:00; // DateTime | End is greater than or equal to
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.
final spaceStation = 56; // int | 
final startGt = 2013-10-20T19:20:30+01:00; // DateTime | Start is greater than
final startGte = 2013-10-20T19:20:30+01:00; // DateTime | Start is greater than or equal to
final startLt = 2013-10-20T19:20:30+01:00; // DateTime | Start is less than
final startLte = 2013-10-20T19:20:30+01:00; // DateTime | Start is greater than or equal to

try {
    final result = api_instance.expeditionList(crewAstronaut, crewAstronautAgency, endGt, endGte, endLt, endLte, limit, name, offset, ordering, search, spaceStation, startGt, startGte, startLt, startLte);
    print(result);
} catch (e) {
    print('Exception when calling ExpeditionApi->expeditionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **crewAstronaut** | **int**|  | [optional] 
 **crewAstronautAgency** | **int**|  | [optional] 
 **endGt** | **DateTime**| End is greater than | [optional] 
 **endGte** | **DateTime**| End is greater than or equal to | [optional] 
 **endLt** | **DateTime**| End is less than | [optional] 
 **endLte** | **DateTime**| End is greater than or equal to | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **spaceStation** | **int**|  | [optional] 
 **startGt** | **DateTime**| Start is greater than | [optional] 
 **startGte** | **DateTime**| Start is greater than or equal to | [optional] 
 **startLt** | **DateTime**| Start is less than | [optional] 
 **startLte** | **DateTime**| Start is greater than or equal to | [optional] 

### Return type

[**PaginatedExpeditionList**](PaginatedExpeditionList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expeditionRetrieve**
> ExpeditionDetail expeditionRetrieve(id)



API endpoint that allows Expeditions to be viewed.  GET: Return a list of all the existing expeditions.  MODE: Normal and Detailed /2.2.0/expedition/?mode=detailed  FILTERS: Fields - 'name', 'crew__astronaut', 'crew__astronaut__agency', 'space_station'  Get all Expeditions with the Space Station ID of 1. Example - /2.2.0/expedition/?space_station=1&mode=detailed  Search for all Expeditions with the Astronaut named John Example - /2.2.0/expedition/?search=John  ORDERING: Fields - 'id', 'start', 'end' Order reverse via Start date. Example - /2.2.0/astronaut/?order=-start

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

final api_instance = ExpeditionApi();
final id = 56; // int | A unique integer value identifying this expedition.

try {
    final result = api_instance.expeditionRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ExpeditionApi->expeditionRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this expedition. | 

### Return type

[**ExpeditionDetail**](ExpeditionDetail.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

