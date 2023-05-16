# launch_library_api.api.UpdatesApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updatesList**](UpdatesApi.md#updateslist) | **GET** /2.2.0/updates/ | 
[**updatesRetrieve**](UpdatesApi.md#updatesretrieve) | **GET** /2.2.0/updates/{id}/ | 


# **updatesList**
> PaginatedUpdateList updatesList(createdOn, launch, launchLaunchServiceProvider, limit, offset, ordering, program, search)



API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on

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

final api_instance = UpdatesApi();
final createdOn = 2013-10-20T19:20:30+01:00; // DateTime | 
final launch = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final launchLaunchServiceProvider = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final program = 56; // int | 
final search = search_example; // String | A search term.

try {
    final result = api_instance.updatesList(createdOn, launch, launchLaunchServiceProvider, limit, offset, ordering, program, search);
    print(result);
} catch (e) {
    print('Exception when calling UpdatesApi->updatesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createdOn** | **DateTime**|  | [optional] 
 **launch** | **String**|  | [optional] 
 **launchLaunchServiceProvider** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **program** | **int**|  | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedUpdateList**](PaginatedUpdateList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatesRetrieve**
> Update updatesRetrieve(id)



API endpoint that allows Updates to be viewed.  GET: Return a list of all the existing Updates.  FILTERS: Parameters - 'created_on', 'launch__id', 'program__id', 'launch__launch_service_provider__id', Example - /api/2.2.0/updates/?status=Active   ORDERING: Fields - 'created_on', Example - /api/2.2.0/updates/?ordering=-created_on

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

final api_instance = UpdatesApi();
final id = 56; // int | A unique integer value identifying this Update.

try {
    final result = api_instance.updatesRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling UpdatesApi->updatesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Update. | 

### Return type

[**Update**](Update.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

