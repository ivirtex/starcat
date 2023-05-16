# launch_library_api.api.DockingEventApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dockingEventList**](DockingEventApi.md#dockingeventlist) | **GET** /2.2.0/docking_event/ | 
[**dockingEventRetrieve**](DockingEventApi.md#dockingeventretrieve) | **GET** /2.2.0/docking_event/{id}/ | 


# **dockingEventList**
> PaginatedDockingEventList dockingEventList(dockingGt, dockingGte, dockingLt, dockingLte, dockingLocationId, flightVehicleId, limit, offset, ordering, search, spaceStationId)



API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking

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

final api_instance = DockingEventApi();
final dockingGt = 2013-10-20T19:20:30+01:00; // DateTime | Docking is greater than
final dockingGte = 2013-10-20T19:20:30+01:00; // DateTime | Docking is greater than or equal to
final dockingLt = 2013-10-20T19:20:30+01:00; // DateTime | Docking is less than
final dockingLte = 2013-10-20T19:20:30+01:00; // DateTime | Docking is less than or equal to
final dockingLocationId = 56; // int | 
final flightVehicleId = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.
final spaceStationId = 56; // int | 

try {
    final result = api_instance.dockingEventList(dockingGt, dockingGte, dockingLt, dockingLte, dockingLocationId, flightVehicleId, limit, offset, ordering, search, spaceStationId);
    print(result);
} catch (e) {
    print('Exception when calling DockingEventApi->dockingEventList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dockingGt** | **DateTime**| Docking is greater than | [optional] 
 **dockingGte** | **DateTime**| Docking is greater than or equal to | [optional] 
 **dockingLt** | **DateTime**| Docking is less than | [optional] 
 **dockingLte** | **DateTime**| Docking is less than or equal to | [optional] 
 **dockingLocationId** | **int**|  | [optional] 
 **flightVehicleId** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **spaceStationId** | **int**|  | [optional] 

### Return type

[**PaginatedDockingEventList**](PaginatedDockingEventList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dockingEventRetrieve**
> DockingEventDetailed dockingEventRetrieve(id)



API endpoint that allows Docking Events to be viewed.  GET: Return a list of all the docking events.  FILTERS: Fields - 'space_station__id', 'flight_vehicle__id', 'docking_location__id'   MODE: 'detailed' EXAMPLE: ?mode=detailed  ORDERING: Fields - 'id', 'docking', 'departure' Order reverse via Docking date. Example - /2.2.0/docking_event/?ordering=-docking

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

final api_instance = DockingEventApi();
final id = 56; // int | A unique integer value identifying this docking event.

try {
    final result = api_instance.dockingEventRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling DockingEventApi->dockingEventRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this docking event. | 

### Return type

[**DockingEventDetailed**](DockingEventDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

