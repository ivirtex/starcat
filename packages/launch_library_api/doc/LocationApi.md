# launch_library_api.api.LocationApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locationList**](LocationApi.md#locationlist) | **GET** /2.2.0/location/ | 
[**locationRetrieve**](LocationApi.md#locationretrieve) | **GET** /2.2.0/location/{id}/ | 


# **locationList**
> PaginatedLocationList locationList(countryCode, countryCodeContains, id, idGt, idGte, idLt, idLte, launchLibraryId, launchLibraryIdContains, limit, name, nameContains, offset, search, totalLandingCount, totalLandingCountGt, totalLandingCountGte, totalLandingCountLt, totalLandingCountLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte)



API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA

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

final api_instance = LocationApi();
final countryCode = countryCode_example; // String | 
final countryCodeContains = countryCodeContains_example; // String | 
final id = 56; // int | 
final idGt = 56; // int | 
final idGte = 56; // int | 
final idLt = 56; // int | 
final idLte = 56; // int | 
final launchLibraryId = 56; // int | 
final launchLibraryIdContains = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final search = search_example; // String | A search term.
final totalLandingCount = 56; // int | 
final totalLandingCountGt = 56; // int | 
final totalLandingCountGte = 56; // int | 
final totalLandingCountLt = 56; // int | 
final totalLandingCountLte = 56; // int | 
final totalLaunchCount = 56; // int | 
final totalLaunchCountGt = 56; // int | 
final totalLaunchCountGte = 56; // int | 
final totalLaunchCountLt = 56; // int | 
final totalLaunchCountLte = 56; // int | 

try {
    final result = api_instance.locationList(countryCode, countryCodeContains, id, idGt, idGte, idLt, idLte, launchLibraryId, launchLibraryIdContains, limit, name, nameContains, offset, search, totalLandingCount, totalLandingCountGt, totalLandingCountGte, totalLandingCountLt, totalLandingCountLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte);
    print(result);
} catch (e) {
    print('Exception when calling LocationApi->locationList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryCode** | **String**|  | [optional] 
 **countryCodeContains** | **String**|  | [optional] 
 **id** | **int**|  | [optional] 
 **idGt** | **int**|  | [optional] 
 **idGte** | **int**|  | [optional] 
 **idLt** | **int**|  | [optional] 
 **idLte** | **int**|  | [optional] 
 **launchLibraryId** | **int**|  | [optional] 
 **launchLibraryIdContains** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **totalLandingCount** | **int**|  | [optional] 
 **totalLandingCountGt** | **int**|  | [optional] 
 **totalLandingCountGte** | **int**|  | [optional] 
 **totalLandingCountLt** | **int**|  | [optional] 
 **totalLandingCountLte** | **int**|  | [optional] 
 **totalLaunchCount** | **int**|  | [optional] 
 **totalLaunchCountGt** | **int**|  | [optional] 
 **totalLaunchCountGte** | **int**|  | [optional] 
 **totalLaunchCountLt** | **int**|  | [optional] 
 **totalLaunchCountLte** | **int**|  | [optional] 

### Return type

[**PaginatedLocationList**](PaginatedLocationList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **locationRetrieve**
> LocationDetail locationRetrieve(id)



API endpoint that allows Location instances to be viewed.  GET: Return a list of all the existing location instances.  FILTERS: Parameters - 'name', 'country_code', 'id' Example - /2.2.0/location/?country_code=USA

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

final api_instance = LocationApi();
final id = 56; // int | A unique integer value identifying this Location.

try {
    final result = api_instance.locationRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling LocationApi->locationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Location. | 

### Return type

[**LocationDetail**](LocationDetail.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

