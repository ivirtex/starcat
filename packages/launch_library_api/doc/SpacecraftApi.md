# launch_library_api.api.SpacecraftApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spacecraftFlightList**](SpacecraftApi.md#spacecraftflightlist) | **GET** /2.2.0/spacecraft/flight/ | 
[**spacecraftFlightRetrieve**](SpacecraftApi.md#spacecraftflightretrieve) | **GET** /2.2.0/spacecraft/flight/{id}/ | 
[**spacecraftList**](SpacecraftApi.md#spacecraftlist) | **GET** /2.2.0/spacecraft/ | 
[**spacecraftRetrieve**](SpacecraftApi.md#spacecraftretrieve) | **GET** /2.2.0/spacecraft/{id}/ | 


# **spacecraftFlightList**
> PaginatedSpacecraftFlightList spacecraftFlightList(limit, offset, spacecraft)



API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37

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

final api_instance = SpacecraftApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final spacecraft = 56; // int | 

try {
    final result = api_instance.spacecraftFlightList(limit, offset, spacecraft);
    print(result);
} catch (e) {
    print('Exception when calling SpacecraftApi->spacecraftFlightList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **spacecraft** | **int**|  | [optional] 

### Return type

[**PaginatedSpacecraftFlightList**](PaginatedSpacecraftFlightList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spacecraftFlightRetrieve**
> SpacecraftFlightDetailed spacecraftFlightRetrieve(id)



API endpoint that allows a flight of a specific Spacecraft instances to be viewed.  GET: Return a list of all the existing Spacecraft flights.  FILTERS: Parameters - 'spacecraft' Example - /api/2.2.0/launcher/?spacecraft=37

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

final api_instance = SpacecraftApi();
final id = 56; // int | A unique integer value identifying this Spacecraft Flight.

try {
    final result = api_instance.spacecraftFlightRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling SpacecraftApi->spacecraftFlightRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Spacecraft Flight. | 

### Return type

[**SpacecraftFlightDetailed**](SpacecraftFlightDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spacecraftList**
> PaginatedSpacecraftList spacecraftList(limit, name, offset, ordering, search, spacecraftConfig, status)



API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id

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

final api_instance = SpacecraftApi();
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.
final spacecraftConfig = 56; // int | 
final status = 56; // int | 

try {
    final result = api_instance.spacecraftList(limit, name, offset, ordering, search, spacecraftConfig, status);
    print(result);
} catch (e) {
    print('Exception when calling SpacecraftApi->spacecraftList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **spacecraftConfig** | **int**|  | [optional] 
 **status** | **int**|  | [optional] 

### Return type

[**PaginatedSpacecraftList**](PaginatedSpacecraftList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spacecraftRetrieve**
> SpacecraftDetailed spacecraftRetrieve(id)



API endpoint that allows Spacecrafts to be viewed. A Spacecraft is a physically manufactured instance of a Spacecraft Configuration  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'status', 'spacecraft_config' Example - /2.2.0/spacecraft/?status=1  SEARCH EXAMPLE: Example - /2.2.0/spacecraft/?search=Dragon  ORDERING: Fields - 'id' Example - /2.2.0/spacecraft/?order=id

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

final api_instance = SpacecraftApi();
final id = 56; // int | A unique integer value identifying this Spacecraft.

try {
    final result = api_instance.spacecraftRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling SpacecraftApi->spacecraftRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Spacecraft. | 

### Return type

[**SpacecraftDetailed**](SpacecraftDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

