# launch_library_api.api.PadApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**padList**](PadApi.md#padlist) | **GET** /2.2.0/pad/ | 
[**padRetrieve**](PadApi.md#padretrieve) | **GET** /2.2.0/pad/{id}/ | 


# **padList**
> PaginatedPadList padList(agencyId, agencyIdContains, id, idContains, latitude, latitudeContains, limit, locationId, locationName, locationNameContains, longitude, longitudeContains, name, nameContains, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, search, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte)



API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'

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

final api_instance = PadApi();
final agencyId = 56; // int | 
final agencyIdContains = 56; // int | 
final id = 56; // int | 
final idContains = 56; // int | 
final latitude = latitude_example; // String | 
final latitudeContains = latitudeContains_example; // String | 
final limit = 56; // int | Number of results to return per page.
final locationId = 56; // int | 
final locationName = locationName_example; // String | 
final locationNameContains = locationNameContains_example; // String | 
final longitude = longitude_example; // String | 
final longitudeContains = longitudeContains_example; // String | 
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final orbitalLaunchAttemptCount = 56; // int | 
final orbitalLaunchAttemptCountGt = 56; // int | 
final orbitalLaunchAttemptCountGte = 56; // int | 
final orbitalLaunchAttemptCountLt = 56; // int | 
final orbitalLaunchAttemptCountLte = 56; // int | 
final search = search_example; // String | A search term.
final totalLaunchCount = 56; // int | 
final totalLaunchCountGt = 56; // int | 
final totalLaunchCountGte = 56; // int | 
final totalLaunchCountLt = 56; // int | 
final totalLaunchCountLte = 56; // int | 

try {
    final result = api_instance.padList(agencyId, agencyIdContains, id, idContains, latitude, latitudeContains, limit, locationId, locationName, locationNameContains, longitude, longitudeContains, name, nameContains, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, search, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte);
    print(result);
} catch (e) {
    print('Exception when calling PadApi->padList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agencyId** | **int**|  | [optional] 
 **agencyIdContains** | **int**|  | [optional] 
 **id** | **int**|  | [optional] 
 **idContains** | **int**|  | [optional] 
 **latitude** | **String**|  | [optional] 
 **latitudeContains** | **String**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **locationId** | **int**|  | [optional] 
 **locationName** | **String**|  | [optional] 
 **locationNameContains** | **String**|  | [optional] 
 **longitude** | **String**|  | [optional] 
 **longitudeContains** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **orbitalLaunchAttemptCount** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLte** | **int**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **totalLaunchCount** | **int**|  | [optional] 
 **totalLaunchCountGt** | **int**|  | [optional] 
 **totalLaunchCountGte** | **int**|  | [optional] 
 **totalLaunchCountLt** | **int**|  | [optional] 
 **totalLaunchCountLte** | **int**|  | [optional] 

### Return type

[**PaginatedPadList**](PaginatedPadList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **padRetrieve**
> Pad padRetrieve(id)



API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'id', 'agency_id', 'name', 'name__contains', 'latitude', 'latitude__contains', 'longitude', 'longitude__contains', 'location__name', 'location__name__contains', 'location__id', 'orbital_launch_attempt_count', 'total_launch_count'

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

final api_instance = PadApi();
final id = 56; // int | A unique integer value identifying this Pad.

try {
    final result = api_instance.padRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling PadApi->padRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Pad. | 

### Return type

[**Pad**](Pad.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

