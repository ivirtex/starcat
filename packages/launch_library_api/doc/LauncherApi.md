# launch_library_api.api.LauncherApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**launcherList**](LauncherApi.md#launcherlist) | **GET** /2.2.0/launcher/ | 
[**launcherRetrieve**](LauncherApi.md#launcherretrieve) | **GET** /2.2.0/launcher/{id}/ | 


# **launcherList**
> PaginatedLauncherList launcherList(attemptedLandings, attemptedLandingsGt, attemptedLandingsGte, attemptedLandingsLt, attemptedLandingsLte, firstLaunchDate, flightProven, flights, flightsGt, flightsGte, flightsLt, flightsLte, id, idContains, isPlaceholder, lastLaunchDate, launcherConfigIds, launcherConfigManufacturerName, launcherConfigManufacturerNameContains, limit, offset, ordering, search, serialNumber, serialNumberContains, successfulLandings, successfulLandingsGt, successfulLandingsGte, successfulLandingsLt, successfulLandingsLte)



API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven

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

final api_instance = LauncherApi();
final attemptedLandings = 56; // int | 
final attemptedLandingsGt = 56; // int | 
final attemptedLandingsGte = 56; // int | 
final attemptedLandingsLt = 56; // int | 
final attemptedLandingsLte = 56; // int | 
final firstLaunchDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final flightProven = true; // bool | 
final flights = 56; // int | 
final flightsGt = 56; // int | 
final flightsGte = 56; // int | 
final flightsLt = 56; // int | 
final flightsLte = 56; // int | 
final id = 56; // int | 
final idContains = 56; // int | 
final isPlaceholder = true; // bool | 
final lastLaunchDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final launcherConfigIds = []; // List<int> | Comma-separated launcher config IDs.
final launcherConfigManufacturerName = launcherConfigManufacturerName_example; // String | 
final launcherConfigManufacturerNameContains = launcherConfigManufacturerNameContains_example; // String | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.
final serialNumber = serialNumber_example; // String | 
final serialNumberContains = serialNumberContains_example; // String | 
final successfulLandings = 56; // int | 
final successfulLandingsGt = 56; // int | 
final successfulLandingsGte = 56; // int | 
final successfulLandingsLt = 56; // int | 
final successfulLandingsLte = 56; // int | 

try {
    final result = api_instance.launcherList(attemptedLandings, attemptedLandingsGt, attemptedLandingsGte, attemptedLandingsLt, attemptedLandingsLte, firstLaunchDate, flightProven, flights, flightsGt, flightsGte, flightsLt, flightsLte, id, idContains, isPlaceholder, lastLaunchDate, launcherConfigIds, launcherConfigManufacturerName, launcherConfigManufacturerNameContains, limit, offset, ordering, search, serialNumber, serialNumberContains, successfulLandings, successfulLandingsGt, successfulLandingsGte, successfulLandingsLt, successfulLandingsLte);
    print(result);
} catch (e) {
    print('Exception when calling LauncherApi->launcherList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptedLandings** | **int**|  | [optional] 
 **attemptedLandingsGt** | **int**|  | [optional] 
 **attemptedLandingsGte** | **int**|  | [optional] 
 **attemptedLandingsLt** | **int**|  | [optional] 
 **attemptedLandingsLte** | **int**|  | [optional] 
 **firstLaunchDate** | **DateTime**|  | [optional] 
 **flightProven** | **bool**|  | [optional] 
 **flights** | **int**|  | [optional] 
 **flightsGt** | **int**|  | [optional] 
 **flightsGte** | **int**|  | [optional] 
 **flightsLt** | **int**|  | [optional] 
 **flightsLte** | **int**|  | [optional] 
 **id** | **int**|  | [optional] 
 **idContains** | **int**|  | [optional] 
 **isPlaceholder** | **bool**|  | [optional] 
 **lastLaunchDate** | **DateTime**|  | [optional] 
 **launcherConfigIds** | [**List<int>**](int.md)| Comma-separated launcher config IDs. | [optional] [default to const []]
 **launcherConfigManufacturerName** | **String**|  | [optional] 
 **launcherConfigManufacturerNameContains** | **String**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **serialNumber** | **String**|  | [optional] 
 **serialNumberContains** | **String**|  | [optional] 
 **successfulLandings** | **int**|  | [optional] 
 **successfulLandingsGt** | **int**|  | [optional] 
 **successfulLandingsGte** | **int**|  | [optional] 
 **successfulLandingsLt** | **int**|  | [optional] 
 **successfulLandingsLte** | **int**|  | [optional] 

### Return type

[**PaginatedLauncherList**](PaginatedLauncherList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launcherRetrieve**
> LauncherDetail launcherRetrieve(id)



API endpoint that allows Launcher instances to be viewed.  GET: Return a list of all the existing launcher instances.  FILTERS: Parameters - 'id', 'serial_number', 'flight_proven', 'launcher_config', 'launcher_config__ids', 'launcher_config__manufacturer__name', 'is_placeholder' Example - /2.2.0/launcher/?serial_number=B1046  SEARCH EXAMPLE: /2.2.0/launcher/?search=expended Searches through serial number or status  ORDERING: Fields - 'id', 'flight_proven', Example - /2.2.0/launcher/?order=flight_proven

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

final api_instance = LauncherApi();
final id = 56; // int | A unique integer value identifying this Launch Vehicle.

try {
    final result = api_instance.launcherRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling LauncherApi->launcherRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Launch Vehicle. | 

### Return type

[**LauncherDetail**](LauncherDetail.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

