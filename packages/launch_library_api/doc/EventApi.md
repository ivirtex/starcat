# launch_library_api.api.EventApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eventList**](EventApi.md#eventlist) | **GET** /2.2.0/event/ | 
[**eventPreviousList**](EventApi.md#eventpreviouslist) | **GET** /2.2.0/event/previous/ | 
[**eventPreviousRetrieve**](EventApi.md#eventpreviousretrieve) | **GET** /2.2.0/event/previous/{id}/ | 
[**eventRetrieve**](EventApi.md#eventretrieve) | **GET** /2.2.0/event/{id}/ | 
[**eventUpcomingList**](EventApi.md#eventupcominglist) | **GET** /2.2.0/event/upcoming/ | 
[**eventUpcomingRetrieve**](EventApi.md#eventupcomingretrieve) | **GET** /2.2.0/event/upcoming/{id}/ | 


# **eventList**
> PaginatedEventsList eventList(id, limit, offset, program, search, slug, type, typeIds)



API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name

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

final api_instance = EventApi();
final id = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final program = []; // List<int> | 
final search = search_example; // String | A search term.
final slug = slug_example; // String | 
final type = 56; // int | 
final typeIds = []; // List<int> | Comma-separated event type IDs.

try {
    final result = api_instance.eventList(id, limit, offset, program, search, slug, type, typeIds);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **search** | **String**| A search term. | [optional] 
 **slug** | **String**|  | [optional] 
 **type** | **int**|  | [optional] 
 **typeIds** | [**List<int>**](int.md)| Comma-separated event type IDs. | [optional] [default to const []]

### Return type

[**PaginatedEventsList**](PaginatedEventsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventPreviousList**
> PaginatedEventsList eventPreviousList(id, limit, offset, program, search, slug, type, typeIds)



API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events

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

final api_instance = EventApi();
final id = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final program = []; // List<int> | 
final search = search_example; // String | A search term.
final slug = slug_example; // String | 
final type = 56; // int | 
final typeIds = []; // List<int> | Comma-separated event type IDs.

try {
    final result = api_instance.eventPreviousList(id, limit, offset, program, search, slug, type, typeIds);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventPreviousList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **search** | **String**| A search term. | [optional] 
 **slug** | **String**|  | [optional] 
 **type** | **int**|  | [optional] 
 **typeIds** | [**List<int>**](int.md)| Comma-separated event type IDs. | [optional] [default to const []]

### Return type

[**PaginatedEventsList**](PaginatedEventsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventPreviousRetrieve**
> Events eventPreviousRetrieve(id)



API endpoint that allows past Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of past Events

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

final api_instance = EventApi();
final id = 56; // int | A unique integer value identifying this Event.

try {
    final result = api_instance.eventPreviousRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventPreviousRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Event. | 

### Return type

[**Events**](Events.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventRetrieve**
> Events eventRetrieve(id)



API endpoint that allows all Events to be viewed.  FILTERS: 'type', 'type__ids', 'program'  GET: Return a list of all Events  SEARCH EXAMPLE: /2.2.0/event/?search=Dragon Searches through name

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

final api_instance = EventApi();
final id = 56; // int | A unique integer value identifying this Event.

try {
    final result = api_instance.eventRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Event. | 

### Return type

[**Events**](Events.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventUpcomingList**
> PaginatedEventsList eventUpcomingList(hideRecentPrevious, id, limit, offset, program, search, slug, type, typeIds)



API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events

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

final api_instance = EventApi();
final hideRecentPrevious = true; // bool | Hide events from the past 24 hours, which are included by default for convenience.
final id = 56; // int | 
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final program = []; // List<int> | 
final search = search_example; // String | A search term.
final slug = slug_example; // String | 
final type = 56; // int | 
final typeIds = []; // List<int> | Comma-separated event type IDs.

try {
    final result = api_instance.eventUpcomingList(hideRecentPrevious, id, limit, offset, program, search, slug, type, typeIds);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventUpcomingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hideRecentPrevious** | **bool**| Hide events from the past 24 hours, which are included by default for convenience. | [optional] 
 **id** | **int**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **search** | **String**| A search term. | [optional] 
 **slug** | **String**|  | [optional] 
 **type** | **int**|  | [optional] 
 **typeIds** | [**List<int>**](int.md)| Comma-separated event type IDs. | [optional] [default to const []]

### Return type

[**PaginatedEventsList**](PaginatedEventsList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventUpcomingRetrieve**
> Events eventUpcomingRetrieve(id)



API endpoint that returns future Event objects and events from the last twenty-four hours.  FILTERS: 'hide_recent_previous', 'type', 'type__ids', 'program'  GET: Return a list of future Events

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

final api_instance = EventApi();
final id = 56; // int | A unique integer value identifying this Event.

try {
    final result = api_instance.eventUpcomingRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling EventApi->eventUpcomingRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Event. | 

### Return type

[**Events**](Events.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

