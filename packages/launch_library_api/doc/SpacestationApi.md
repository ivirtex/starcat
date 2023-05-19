# launch_library_api.api.SpacestationApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spacestationList**](SpacestationApi.md#spacestationlist) | **GET** /2.2.0/spacestation/ | 
[**spacestationRetrieve**](SpacestationApi.md#spacestationretrieve) | **GET** /2.2.0/spacestation/{id}/ | 


# **spacestationList**
> PaginatedSpaceStationList spacestationList(dockedVehicles, dockedVehiclesGt, dockedVehiclesGte, dockedVehiclesLt, dockedVehiclesLte, id, limit, name, nameContains, offset, onboardCrew, onboardCrewGt, onboardCrewGte, onboardCrewLt, onboardCrewLte, orbit, ordering, ownerIds, owners, search, status, statusIds, type)



API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id

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

final api_instance = SpacestationApi();
final dockedVehicles = 56; // int | 
final dockedVehiclesGt = 56; // int | 
final dockedVehiclesGte = 56; // int | 
final dockedVehiclesLt = 56; // int | 
final dockedVehiclesLte = 56; // int | 
final id = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final onboardCrew = 56; // int | 
final onboardCrewGt = 56; // int | 
final onboardCrewGte = 56; // int | 
final onboardCrewLt = 56; // int | 
final onboardCrewLte = 56; // int | 
final orbit = 56; // int | 
final ordering = ordering_example; // String | Which field to use when ordering the results.
final ownerIds = []; // List<int> | Comma-separated agency IDs.
final owners = []; // List<int> | 
final search = search_example; // String | A search term.
final status = 56; // int | 
final statusIds = []; // List<int> | Comma-separated spacestation status IDs.
final type = 56; // int | 

try {
    final result = api_instance.spacestationList(dockedVehicles, dockedVehiclesGt, dockedVehiclesGte, dockedVehiclesLt, dockedVehiclesLte, id, limit, name, nameContains, offset, onboardCrew, onboardCrewGt, onboardCrewGte, onboardCrewLt, onboardCrewLte, orbit, ordering, ownerIds, owners, search, status, statusIds, type);
    print(result);
} catch (e) {
    print('Exception when calling SpacestationApi->spacestationList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dockedVehicles** | **int**|  | [optional] 
 **dockedVehiclesGt** | **int**|  | [optional] 
 **dockedVehiclesGte** | **int**|  | [optional] 
 **dockedVehiclesLt** | **int**|  | [optional] 
 **dockedVehiclesLte** | **int**|  | [optional] 
 **id** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **onboardCrew** | **int**|  | [optional] 
 **onboardCrewGt** | **int**|  | [optional] 
 **onboardCrewGte** | **int**|  | [optional] 
 **onboardCrewLt** | **int**|  | [optional] 
 **onboardCrewLte** | **int**|  | [optional] 
 **orbit** | **int**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **ownerIds** | [**List<int>**](int.md)| Comma-separated agency IDs. | [optional] [default to const []]
 **owners** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **search** | **String**| A search term. | [optional] 
 **status** | **int**|  | [optional] 
 **statusIds** | [**List<int>**](int.md)| Comma-separated spacestation status IDs. | [optional] [default to const []]
 **type** | **int**|  | [optional] 

### Return type

[**PaginatedSpaceStationList**](PaginatedSpaceStationList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spacestationRetrieve**
> SpaceStationDetailed spacestationRetrieve(id)



API endpoint that allows Space Stations to be viewed.  GET: Return a list of all the existing space stations.  FILTERS: Parameters - 'name', 'status', 'owners', 'orbit', 'type', 'owners__name', 'owners__abbrev' Example - /api/2.2.0/spacestation/?status=Active  SEARCH EXAMPLE: Example - /api/2.2.0/spacestation/?search=ISS Searches through 'name', 'owners__name', 'owners__abbrev'  ORDERING: Fields - 'id', 'name', status', 'type', 'founded', 'volume' Example - /api/2.2.0/spacestation/?ordering=id

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

final api_instance = SpacestationApi();
final id = 56; // int | A unique integer value identifying this Space Station.

try {
    final result = api_instance.spacestationRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling SpacestationApi->spacestationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Space Station. | 

### Return type

[**SpaceStationDetailed**](SpaceStationDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

