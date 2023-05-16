# launch_library_api.api.MissionPatchApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**missionPatchList**](MissionPatchApi.md#missionpatchlist) | **GET** /2.2.0/mission_patch/ | 
[**missionPatchRetrieve**](MissionPatchApi.md#missionpatchretrieve) | **GET** /2.2.0/mission_patch/{id}/ | 


# **missionPatchList**
> PaginatedMissionPatchList missionPatchList(agencyId, agencyName, agencyNameContains, id, ids, limit, name, nameContains, offset, ordering, search)



API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority

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

final api_instance = MissionPatchApi();
final agencyId = 56; // int | 
final agencyName = agencyName_example; // String | 
final agencyNameContains = agencyNameContains_example; // String | 
final id = 56; // int | 
final ids = []; // List<int> | Comma-separated mission patch IDs.
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.missionPatchList(agencyId, agencyName, agencyNameContains, id, ids, limit, name, nameContains, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling MissionPatchApi->missionPatchList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agencyId** | **int**|  | [optional] 
 **agencyName** | **String**|  | [optional] 
 **agencyNameContains** | **String**|  | [optional] 
 **id** | **int**|  | [optional] 
 **ids** | [**List<int>**](int.md)| Comma-separated mission patch IDs. | [optional] [default to const []]
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedMissionPatchList**](PaginatedMissionPatchList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **missionPatchRetrieve**
> MissionPatch missionPatchRetrieve(id)



API endpoint that allows Mission Patch instances to be viewed.  GET: Return a list of all the existing mission patch instances.  FILTERS: Parameters - 'id', 'ids' (comma-separated), 'name', 'name__contains', 'agency__name', 'agency__name__contains', 'agency__id' Example - /2.2.0/mission_patch/?agency__name=SpaceX  ORDERING: Fields - 'id', 'name', 'agency__name', 'priority' Example - /2.2.0/mission_patch/?ordering=priority

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

final api_instance = MissionPatchApi();
final id = 56; // int | A unique integer value identifying this Mission Patch.

try {
    final result = api_instance.missionPatchRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling MissionPatchApi->missionPatchRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Mission Patch. | 

### Return type

[**MissionPatch**](MissionPatch.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

