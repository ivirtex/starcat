# launch_library_api.api.ConfigApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configAgencytypeList**](ConfigApi.md#configagencytypelist) | **GET** /2.2.0/config/agencytype/ | 
[**configAgencytypeRetrieve**](ConfigApi.md#configagencytyperetrieve) | **GET** /2.2.0/config/agencytype/{id}/ | 
[**configAstronautroleList**](ConfigApi.md#configastronautrolelist) | **GET** /2.2.0/config/astronautrole/ | 
[**configAstronautroleRetrieve**](ConfigApi.md#configastronautroleretrieve) | **GET** /2.2.0/config/astronautrole/{id}/ | 
[**configAstronautstatusList**](ConfigApi.md#configastronautstatuslist) | **GET** /2.2.0/config/astronautstatus/ | 
[**configAstronautstatusRetrieve**](ConfigApi.md#configastronautstatusretrieve) | **GET** /2.2.0/config/astronautstatus/{id}/ | 
[**configAstronauttypeList**](ConfigApi.md#configastronauttypelist) | **GET** /2.2.0/config/astronauttype/ | 
[**configAstronauttypeRetrieve**](ConfigApi.md#configastronauttyperetrieve) | **GET** /2.2.0/config/astronauttype/{id}/ | 
[**configDockinglocationList**](ConfigApi.md#configdockinglocationlist) | **GET** /2.2.0/config/dockinglocation/ | 
[**configDockinglocationRetrieve**](ConfigApi.md#configdockinglocationretrieve) | **GET** /2.2.0/config/dockinglocation/{id}/ | 
[**configEventtypeList**](ConfigApi.md#configeventtypelist) | **GET** /2.2.0/config/eventtype/ | 
[**configEventtypeRetrieve**](ConfigApi.md#configeventtyperetrieve) | **GET** /2.2.0/config/eventtype/{id}/ | 
[**configFirststagetypeList**](ConfigApi.md#configfirststagetypelist) | **GET** /2.2.0/config/firststagetype/ | 
[**configFirststagetypeRetrieve**](ConfigApi.md#configfirststagetyperetrieve) | **GET** /2.2.0/config/firststagetype/{id}/ | 
[**configLandinglocationList**](ConfigApi.md#configlandinglocationlist) | **GET** /2.2.0/config/landinglocation/ | 
[**configLandinglocationRetrieve**](ConfigApi.md#configlandinglocationretrieve) | **GET** /2.2.0/config/landinglocation/{id}/ | 
[**configLandingtypeList**](ConfigApi.md#configlandingtypelist) | **GET** /2.2.0/config/landingtype/ | 
[**configLandingtypeRetrieve**](ConfigApi.md#configlandingtyperetrieve) | **GET** /2.2.0/config/landingtype/{id}/ | 
[**configLauncherList**](ConfigApi.md#configlauncherlist) | **GET** /2.2.0/config/launcher/ | 
[**configLauncherRetrieve**](ConfigApi.md#configlauncherretrieve) | **GET** /2.2.0/config/launcher/{id}/ | 
[**configLaunchstatusList**](ConfigApi.md#configlaunchstatuslist) | **GET** /2.2.0/config/launchstatus/ | 
[**configLaunchstatusRetrieve**](ConfigApi.md#configlaunchstatusretrieve) | **GET** /2.2.0/config/launchstatus/{id}/ | 
[**configMissiontypeList**](ConfigApi.md#configmissiontypelist) | **GET** /2.2.0/config/missiontype/ | 
[**configMissiontypeRetrieve**](ConfigApi.md#configmissiontyperetrieve) | **GET** /2.2.0/config/missiontype/{id}/ | 
[**configNetprecisionList**](ConfigApi.md#confignetprecisionlist) | **GET** /2.2.0/config/netprecision/ | 
[**configNetprecisionRetrieve**](ConfigApi.md#confignetprecisionretrieve) | **GET** /2.2.0/config/netprecision/{id}/ | 
[**configNoticetypeList**](ConfigApi.md#confignoticetypelist) | **GET** /2.2.0/config/noticetype/ | 
[**configNoticetypeRetrieve**](ConfigApi.md#confignoticetyperetrieve) | **GET** /2.2.0/config/noticetype/{id}/ | 
[**configOrbitList**](ConfigApi.md#configorbitlist) | **GET** /2.2.0/config/orbit/ | 
[**configOrbitRetrieve**](ConfigApi.md#configorbitretrieve) | **GET** /2.2.0/config/orbit/{id}/ | 
[**configRoadclosurestatusList**](ConfigApi.md#configroadclosurestatuslist) | **GET** /2.2.0/config/roadclosurestatus/ | 
[**configRoadclosurestatusRetrieve**](ConfigApi.md#configroadclosurestatusretrieve) | **GET** /2.2.0/config/roadclosurestatus/{id}/ | 
[**configSpacecraftList**](ConfigApi.md#configspacecraftlist) | **GET** /2.2.0/config/spacecraft/ | 
[**configSpacecraftRetrieve**](ConfigApi.md#configspacecraftretrieve) | **GET** /2.2.0/config/spacecraft/{id}/ | 
[**configSpacecraftstatusList**](ConfigApi.md#configspacecraftstatuslist) | **GET** /2.2.0/config/spacecraftstatus/ | 
[**configSpacecraftstatusRetrieve**](ConfigApi.md#configspacecraftstatusretrieve) | **GET** /2.2.0/config/spacecraftstatus/{id}/ | 
[**configSpacestationstatusList**](ConfigApi.md#configspacestationstatuslist) | **GET** /2.2.0/config/spacestationstatus/ | 
[**configSpacestationstatusRetrieve**](ConfigApi.md#configspacestationstatusretrieve) | **GET** /2.2.0/config/spacestationstatus/{id}/ | 


# **configAgencytypeList**
> PaginatedAgencyTypeList configAgencytypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configAgencytypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAgencytypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAgencyTypeList**](PaginatedAgencyTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAgencytypeRetrieve**
> AgencyType configAgencytypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this agency type.

try {
    final result = api_instance.configAgencytypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAgencytypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this agency type. | 

### Return type

[**AgencyType**](AgencyType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronautroleList**
> PaginatedAstronautRoleList configAstronautroleList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configAstronautroleList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronautroleList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAstronautRoleList**](PaginatedAstronautRoleList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronautroleRetrieve**
> AstronautRole configAstronautroleRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Astronaut Role.

try {
    final result = api_instance.configAstronautroleRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronautroleRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Astronaut Role. | 

### Return type

[**AstronautRole**](AstronautRole.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronautstatusList**
> PaginatedAstronautStatusList configAstronautstatusList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configAstronautstatusList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronautstatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAstronautStatusList**](PaginatedAstronautStatusList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronautstatusRetrieve**
> AstronautStatus configAstronautstatusRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Astronaut Status.

try {
    final result = api_instance.configAstronautstatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronautstatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Astronaut Status. | 

### Return type

[**AstronautStatus**](AstronautStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronauttypeList**
> PaginatedAstronautTypeList configAstronauttypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configAstronauttypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronauttypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedAstronautTypeList**](PaginatedAstronautTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configAstronauttypeRetrieve**
> AstronautType configAstronauttypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Astronaut Type.

try {
    final result = api_instance.configAstronauttypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configAstronauttypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Astronaut Type. | 

### Return type

[**AstronautType**](AstronautType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configDockinglocationList**
> PaginatedDockingLocationList configDockinglocationList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configDockinglocationList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configDockinglocationList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedDockingLocationList**](PaginatedDockingLocationList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configDockinglocationRetrieve**
> DockingLocation configDockinglocationRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Docking Location.

try {
    final result = api_instance.configDockinglocationRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configDockinglocationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Docking Location. | 

### Return type

[**DockingLocation**](DockingLocation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configEventtypeList**
> PaginatedEventTypeList configEventtypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configEventtypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configEventtypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedEventTypeList**](PaginatedEventTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configEventtypeRetrieve**
> EventType configEventtypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this event type.

try {
    final result = api_instance.configEventtypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configEventtypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this event type. | 

### Return type

[**EventType**](EventType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configFirststagetypeList**
> PaginatedFirstStageTypeList configFirststagetypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configFirststagetypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configFirststagetypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedFirstStageTypeList**](PaginatedFirstStageTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configFirststagetypeRetrieve**
> FirstStageType configFirststagetypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this first stage type.

try {
    final result = api_instance.configFirststagetypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configFirststagetypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this first stage type. | 

### Return type

[**FirstStageType**](FirstStageType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLandinglocationList**
> PaginatedLandingLocationList configLandinglocationList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configLandinglocationList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLandinglocationList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedLandingLocationList**](PaginatedLandingLocationList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLandinglocationRetrieve**
> LandingLocation configLandinglocationRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this landing location.

try {
    final result = api_instance.configLandinglocationRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLandinglocationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this landing location. | 

### Return type

[**LandingLocation**](LandingLocation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLandingtypeList**
> PaginatedLandingTypeList configLandingtypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configLandingtypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLandingtypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedLandingTypeList**](PaginatedLandingTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLandingtypeRetrieve**
> LandingType configLandingtypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this landing type.

try {
    final result = api_instance.configLandingtypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLandingtypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this landing type. | 

### Return type

[**LandingType**](LandingType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLauncherList**
> PaginatedLauncherConfigList configLauncherList(active, consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte, failedLaunches, failedLaunchesGt, failedLaunchesGte, failedLaunchesLt, failedLaunchesLte, family, familyContains, fullName, fullNameContains, limit, manufacturerName, manufacturerNameContains, name, nameContains, offset, ordering, pendingLaunches, pendingLaunchesGt, pendingLaunchesGte, pendingLaunchesLt, pendingLaunchesLte, program, programContains, search, successfulLaunches, successfulLaunchesGt, successfulLaunchesGte, successfulLaunchesLt, successfulLaunchesLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte)



API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA

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

final api_instance = ConfigApi();
final active = true; // bool | 
final consecutiveSuccessfulLaunches = 56; // int | 
final consecutiveSuccessfulLaunchesGt = 56; // int | 
final consecutiveSuccessfulLaunchesGte = 56; // int | 
final consecutiveSuccessfulLaunchesLt = 56; // int | 
final consecutiveSuccessfulLaunchesLte = 56; // int | 
final failedLaunches = 56; // int | 
final failedLaunchesGt = 56; // int | 
final failedLaunchesGte = 56; // int | 
final failedLaunchesLt = 56; // int | 
final failedLaunchesLte = 56; // int | 
final family = family_example; // String | 
final familyContains = familyContains_example; // String | 
final fullName = fullName_example; // String | 
final fullNameContains = fullNameContains_example; // String | 
final limit = 56; // int | Number of results to return per page.
final manufacturerName = manufacturerName_example; // String | 
final manufacturerNameContains = manufacturerNameContains_example; // String | 
final name = name_example; // String | 
final nameContains = nameContains_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final pendingLaunches = 56; // int | 
final pendingLaunchesGt = 56; // int | 
final pendingLaunchesGte = 56; // int | 
final pendingLaunchesLt = 56; // int | 
final pendingLaunchesLte = 56; // int | 
final program = []; // List<int> | 
final programContains = []; // List<int> | 
final search = search_example; // String | A search term.
final successfulLaunches = 56; // int | 
final successfulLaunchesGt = 56; // int | 
final successfulLaunchesGte = 56; // int | 
final successfulLaunchesLt = 56; // int | 
final successfulLaunchesLte = 56; // int | 
final totalLaunchCount = 56; // int | 
final totalLaunchCountGt = 56; // int | 
final totalLaunchCountGte = 56; // int | 
final totalLaunchCountLt = 56; // int | 
final totalLaunchCountLte = 56; // int | 

try {
    final result = api_instance.configLauncherList(active, consecutiveSuccessfulLaunches, consecutiveSuccessfulLaunchesGt, consecutiveSuccessfulLaunchesGte, consecutiveSuccessfulLaunchesLt, consecutiveSuccessfulLaunchesLte, failedLaunches, failedLaunchesGt, failedLaunchesGte, failedLaunchesLt, failedLaunchesLte, family, familyContains, fullName, fullNameContains, limit, manufacturerName, manufacturerNameContains, name, nameContains, offset, ordering, pendingLaunches, pendingLaunchesGt, pendingLaunchesGte, pendingLaunchesLt, pendingLaunchesLte, program, programContains, search, successfulLaunches, successfulLaunchesGt, successfulLaunchesGte, successfulLaunchesLt, successfulLaunchesLte, totalLaunchCount, totalLaunchCountGt, totalLaunchCountGte, totalLaunchCountLt, totalLaunchCountLte);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLauncherList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **active** | **bool**|  | [optional] 
 **consecutiveSuccessfulLaunches** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesGt** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesGte** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesLt** | **int**|  | [optional] 
 **consecutiveSuccessfulLaunchesLte** | **int**|  | [optional] 
 **failedLaunches** | **int**|  | [optional] 
 **failedLaunchesGt** | **int**|  | [optional] 
 **failedLaunchesGte** | **int**|  | [optional] 
 **failedLaunchesLt** | **int**|  | [optional] 
 **failedLaunchesLte** | **int**|  | [optional] 
 **family** | **String**|  | [optional] 
 **familyContains** | **String**|  | [optional] 
 **fullName** | **String**|  | [optional] 
 **fullNameContains** | **String**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **manufacturerName** | **String**|  | [optional] 
 **manufacturerNameContains** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **nameContains** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **pendingLaunches** | **int**|  | [optional] 
 **pendingLaunchesGt** | **int**|  | [optional] 
 **pendingLaunchesGte** | **int**|  | [optional] 
 **pendingLaunchesLt** | **int**|  | [optional] 
 **pendingLaunchesLte** | **int**|  | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **programContains** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **search** | **String**| A search term. | [optional] 
 **successfulLaunches** | **int**|  | [optional] 
 **successfulLaunchesGt** | **int**|  | [optional] 
 **successfulLaunchesGte** | **int**|  | [optional] 
 **successfulLaunchesLt** | **int**|  | [optional] 
 **successfulLaunchesLte** | **int**|  | [optional] 
 **totalLaunchCount** | **int**|  | [optional] 
 **totalLaunchCountGt** | **int**|  | [optional] 
 **totalLaunchCountGte** | **int**|  | [optional] 
 **totalLaunchCountLt** | **int**|  | [optional] 
 **totalLaunchCountLte** | **int**|  | [optional] 

### Return type

[**PaginatedLauncherConfigList**](PaginatedLauncherConfigList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLauncherRetrieve**
> LauncherConfigDetail configLauncherRetrieve(id)



API endpoint that allows Launcher Configurations to be viewed.  GET: Return a list of all the existing launcher configurations.  MODE: Normal and Detailed /2.2.0/config/launcher/?mode=detailed  FILTERS: Fields - 'family', 'agency', 'name', 'manufacturer__name', 'full_name'  Get all Launchers with the Agency with name NASA. Example - /2.2.0/config/launcher/?manufacturer__name=NASA

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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Launcher Configuration.

try {
    final result = api_instance.configLauncherRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLauncherRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Launcher Configuration. | 

### Return type

[**LauncherConfigDetail**](LauncherConfigDetail.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLaunchstatusList**
> PaginatedLaunchStatusList configLaunchstatusList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configLaunchstatusList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLaunchstatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedLaunchStatusList**](PaginatedLaunchStatusList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configLaunchstatusRetrieve**
> LaunchStatus configLaunchstatusRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this Launch Status.

try {
    final result = api_instance.configLaunchstatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configLaunchstatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this Launch Status. | 

### Return type

[**LaunchStatus**](LaunchStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configMissiontypeList**
> PaginatedMissionTypeList configMissiontypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configMissiontypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configMissiontypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedMissionTypeList**](PaginatedMissionTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configMissiontypeRetrieve**
> MissionType configMissiontypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this mission type.

try {
    final result = api_instance.configMissiontypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configMissiontypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this mission type. | 

### Return type

[**MissionType**](MissionType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configNetprecisionList**
> PaginatedNetPrecisionList configNetprecisionList(limit, offset, ordering, search)



API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.

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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configNetprecisionList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configNetprecisionList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedNetPrecisionList**](PaginatedNetPrecisionList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configNetprecisionRetrieve**
> NetPrecision configNetprecisionRetrieve(id)



API endpoint that allows NetPrecision levels to be viewed.  GET: Return a list of all the existing NetPrecision levels.

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

final api_instance = ConfigApi();
final id = 56; // int | A unique value identifying this Net Precision.

try {
    final result = api_instance.configNetprecisionRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configNetprecisionRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique value identifying this Net Precision. | 

### Return type

[**NetPrecision**](NetPrecision.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configNoticetypeList**
> PaginatedNoticeTypeList configNoticetypeList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configNoticetypeList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configNoticetypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedNoticeTypeList**](PaginatedNoticeTypeList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configNoticetypeRetrieve**
> NoticeType configNoticetypeRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Notices Type.

try {
    final result = api_instance.configNoticetypeRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configNoticetypeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Notices Type. | 

### Return type

[**NoticeType**](NoticeType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configOrbitList**
> PaginatedOrbitList configOrbitList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configOrbitList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configOrbitList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedOrbitList**](PaginatedOrbitList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configOrbitRetrieve**
> Orbit configOrbitRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Orbit.

try {
    final result = api_instance.configOrbitRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configOrbitRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Orbit. | 

### Return type

[**Orbit**](Orbit.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configRoadclosurestatusList**
> PaginatedRoadClosureStatusList configRoadclosurestatusList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configRoadclosurestatusList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configRoadclosurestatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedRoadClosureStatusList**](PaginatedRoadClosureStatusList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configRoadclosurestatusRetrieve**
> RoadClosureStatus configRoadclosurestatusRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Road Closure Type.

try {
    final result = api_instance.configRoadclosurestatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configRoadclosurestatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Road Closure Type. | 

### Return type

[**RoadClosureStatus**](RoadClosureStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacecraftList**
> PaginatedSpacecraftConfigurationList configSpacecraftList(humanRated, inUse, limit, manufacturer, name, offset, ordering, search)



API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name

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

final api_instance = ConfigApi();
final humanRated = true; // bool | 
final inUse = true; // bool | 
final limit = 56; // int | Number of results to return per page.
final manufacturer = 56; // int | 
final name = name_example; // String | 
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configSpacecraftList(humanRated, inUse, limit, manufacturer, name, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacecraftList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **humanRated** | **bool**|  | [optional] 
 **inUse** | **bool**|  | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **manufacturer** | **int**|  | [optional] 
 **name** | **String**|  | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedSpacecraftConfigurationList**](PaginatedSpacecraftConfigurationList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacecraftRetrieve**
> SpacecraftConfigurationDetail configSpacecraftRetrieve(id)



API endpoint that allows Spacecraft Configs to be viewed.  GET: Return a list of all the existing spacecraft.  FILTERS: Parameters - 'name', 'manufacturer', 'in_use', 'human_rated' Example - /2.2.0/config/spacecraft/?status=Active  SEARCH EXAMPLE: Example - /2.2.0/config/spacecraft/?search=Dragon  ORDERING: Fields - 'name' Example - /2.2.0/config/spacecraft/?order=name

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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Spacecraft Configuration.

try {
    final result = api_instance.configSpacecraftRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacecraftRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Spacecraft Configuration. | 

### Return type

[**SpacecraftConfigurationDetail**](SpacecraftConfigurationDetail.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacecraftstatusList**
> PaginatedSpacecraftStatusList configSpacecraftstatusList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configSpacecraftstatusList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacecraftstatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedSpacecraftStatusList**](PaginatedSpacecraftStatusList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacecraftstatusRetrieve**
> SpacecraftStatus configSpacecraftstatusRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Spacecraft Status.

try {
    final result = api_instance.configSpacecraftstatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacecraftstatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Spacecraft Status. | 

### Return type

[**SpacecraftStatus**](SpacecraftStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacestationstatusList**
> PaginatedSpaceStationStatusList configSpacestationstatusList(limit, offset, ordering, search)



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

final api_instance = ConfigApi();
final limit = 56; // int | Number of results to return per page.
final offset = 56; // int | The initial index from which to return the results.
final ordering = ordering_example; // String | Which field to use when ordering the results.
final search = search_example; // String | A search term.

try {
    final result = api_instance.configSpacestationstatusList(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacestationstatusList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 

### Return type

[**PaginatedSpaceStationStatusList**](PaginatedSpaceStationStatusList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configSpacestationstatusRetrieve**
> SpaceStationStatus configSpacestationstatusRetrieve(id)



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

final api_instance = ConfigApi();
final id = 56; // int | A unique integer value identifying this Space Station Status.

try {
    final result = api_instance.configSpacestationstatusRetrieve(id);
    print(result);
} catch (e) {
    print('Exception when calling ConfigApi->configSpacestationstatusRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Space Station Status. | 

### Return type

[**SpaceStationStatus**](SpaceStationStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

