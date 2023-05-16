# launch_library_api.api.SpacewalksApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spacewalksList**](SpacewalksApi.md#spacewalkslist) | **GET** /2.2.0/spacewalks/ | 
[**spacewalksRetrieve**](SpacewalksApi.md#spacewalksretrieve) | **GET** /2.2.0/spacewalks/{id}/ | 


# **spacewalksList**
> PaginatedSpacewalkNormalList spacewalksList(astronautIds, end, endGt, endGte, endLt, endLte, eventIds, id, ids, launchIds, limit, name, nameContains, offset, ordering, ownerIds, programIds, programName, programNameContains, search, spacestationIds, startGt, startGte, startLt, startLte)



API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:

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

final api_instance = SpacewalksApi();
final astronautIds = []; // List<int> | Multiple values may be separated by commas.
final end = 2013-10-20T19:20:30+01:00; // DateTime | 
final endGt = 2013-10-20T19:20:30+01:00; // DateTime | 
final endGte = 2013-10-20T19:20:30+01:00; // DateTime | 
final endLt = 2013-10-20T19:20:30+01:00; // DateTime | 
final endLte = 2013-10-20T19:20:30+01:00; // DateTime | 
final eventIds = []; // List<int> | Multiple values may be separated by commas.
final id = 56; // int | 
final ids = []; // List<int> | Multiple values may be separated by commas.
final launchIds = []; // List<String> | Multiple values may be separated by commas.
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final ownerIds = []; // List<num> | Multiple values may be separated by commas.
final programIds = []; // List<int> | Multiple values may be separated by commas.
final programName = programName_example; // String | 
final programNameContains = programNameContains_example; // String | 
final search = search_example; // String | A search term.
final spacestationIds = []; // List<int> | Multiple values may be separated by commas.
final startGt = 2013-10-20T19:20:30+01:00; // DateTime | 
final startGte = 2013-10-20T19:20:30+01:00; // DateTime | 
final startLt = 2013-10-20T19:20:30+01:00; // DateTime | 
final startLte = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.spacewalksList(astronautIds, end, endGt, endGte, endLt, endLte, eventIds, id, ids, launchIds, limit, name, nameContains, offset, ordering, ownerIds, programIds, programName, programNameContains, search, spacestationIds, startGt, startGte, startLt, startLte);
    print(result);
} catch (e) {
    print('Exception when calling SpacewalksApi->spacewalksList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **astronautIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **end** | **DateTime**|  | [optional] 
 **endGt** | **DateTime**|  | [optional] 
 **endGte** | **DateTime**|  | [optional] 
 **endLt** | **DateTime**|  | [optional] 
 **endLte** | **DateTime**|  | [optional] 
 **eventIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **id** | **int**|  | [optional] 
 **ids** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **launchIds** | [**List<String>**](String.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **ownerIds** | [**List<num>**](num.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **programIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **programName** | **String**|  | [optional] 
 **programNameContains** | **String**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **spacestationIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **startGt** | **DateTime**|  | [optional] 
 **startGte** | **DateTime**|  | [optional] 
 **startLt** | **DateTime**|  | [optional] 
 **startLte** | **DateTime**|  | [optional] 

### Return type

[**PaginatedSpacewalkNormalList**](PaginatedSpacewalkNormalList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spacewalksRetrieve**
> SpacewalkDetailed spacewalksRetrieve(id)



API endpoint that allows Spacewalk instances to be viewed.  GET: Return a list of all the existing spacewalk instances.  FILTERS:   ORDERING:

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

final api_instance = SpacewalksApi();
final id = 56; // int | A unique integer value identifying this Spacewalk.

try {
    final result = api_instance.spacewalksRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling SpacewalksApi->spacewalksRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Spacewalk. | 

### Return type

[**SpacewalkDetailed**](SpacewalkDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

