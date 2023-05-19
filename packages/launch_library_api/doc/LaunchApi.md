# launch_library_api.api.LaunchApi

## Load the API package
```dart
import 'package:launch_library_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**launchList**](LaunchApi.md#launchlist) | **GET** /2.2.0/launch/ | 
[**launchPreviousList**](LaunchApi.md#launchpreviouslist) | **GET** /2.2.0/launch/previous/ | 
[**launchPreviousRetrieve**](LaunchApi.md#launchpreviousretrieve) | **GET** /2.2.0/launch/previous/{id}/ | 
[**launchRetrieve**](LaunchApi.md#launchretrieve) | **GET** /2.2.0/launch/{id}/ | 
[**launchUpcomingList**](LaunchApi.md#launchupcominglist) | **GET** /2.2.0/launch/upcoming/ | 
[**launchUpcomingRetrieve**](LaunchApi.md#launchupcomingretrieve) | **GET** /2.2.0/launch/upcoming/{id}/ | 


# **launchList**
> PaginatedLaunchSerializerCommonList launchList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte)



API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final agencyLaunchAttemptCount = 56; // int | 
final agencyLaunchAttemptCountGt = 56; // int | 
final agencyLaunchAttemptCountGte = 56; // int | 
final agencyLaunchAttemptCountLt = 56; // int | 
final agencyLaunchAttemptCountLte = 56; // int | 
final agencyLaunchAttemptCountYear = 56; // int | 
final agencyLaunchAttemptCountYearGt = 56; // int | 
final agencyLaunchAttemptCountYearGte = 56; // int | 
final agencyLaunchAttemptCountYearLt = 56; // int | 
final agencyLaunchAttemptCountYearLte = 56; // int | 
final id = []; // List<String> | Multiple values may be separated by commas.
final includeSuborbital = true; // bool | 
final isCrewed = true; // bool | 
final lastUpdatedGte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is greater than or equal to
final lastUpdatedLte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is less than or equal to
final launcherConfigId = []; // List<int> | Multiple values may be separated by commas.
final limit = 56; // int | Number of results to return per page.
final locationIds = []; // List<int> | 
final locationLaunchAttemptCount = 56; // int | 
final locationLaunchAttemptCountGt = 56; // int | 
final locationLaunchAttemptCountGte = 56; // int | 
final locationLaunchAttemptCountLt = 56; // int | 
final locationLaunchAttemptCountLte = 56; // int | 
final locationLaunchAttemptCountYear = 56; // int | 
final locationLaunchAttemptCountYearGt = 56; // int | 
final locationLaunchAttemptCountYearGte = 56; // int | 
final locationLaunchAttemptCountYearLt = 56; // int | 
final locationLaunchAttemptCountYearLte = 56; // int | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final missionOrbitName = missionOrbitName_example; // String | 
final missionOrbitNameIcontains = missionOrbitNameIcontains_example; // String | 
final name = name_example; // String | 
final netGt = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than
final netGte = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than or equal to
final netLt = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than
final netLte = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than or equal to
final offset = 56; // int | The initial index from which to return the results.
final orbitalLaunchAttemptCount = 56; // int | 
final orbitalLaunchAttemptCountGt = 56; // int | 
final orbitalLaunchAttemptCountGte = 56; // int | 
final orbitalLaunchAttemptCountLt = 56; // int | 
final orbitalLaunchAttemptCountLte = 56; // int | 
final orbitalLaunchAttemptCountYear = 56; // int | 
final orbitalLaunchAttemptCountYearGt = 56; // int | 
final orbitalLaunchAttemptCountYearGte = 56; // int | 
final orbitalLaunchAttemptCountYearLt = 56; // int | 
final orbitalLaunchAttemptCountYearLte = 56; // int | 
final ordering = ordering_example; // String | Which field to use when ordering the results.
final pad = 56; // int | 
final padIds = []; // List<int> | 
final padLocation = 56; // int | 
final padLaunchAttemptCount = 56; // int | 
final padLaunchAttemptCountGt = 56; // int | 
final padLaunchAttemptCountGte = 56; // int | 
final padLaunchAttemptCountLt = 56; // int | 
final padLaunchAttemptCountLte = 56; // int | 
final padLaunchAttemptCountYear = 56; // int | 
final padLaunchAttemptCountYearGt = 56; // int | 
final padLaunchAttemptCountYearGte = 56; // int | 
final padLaunchAttemptCountYearLt = 56; // int | 
final padLaunchAttemptCountYearLte = 56; // int | 
final program = []; // List<int> | 
final rSpacexApiId = rSpacexApiId_example; // String | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final rocketConfigurationFullName = rocketConfigurationFullName_example; // String | 
final rocketConfigurationFullNameIcontains = rocketConfigurationFullNameIcontains_example; // String | 
final rocketConfigurationId = 56; // int | 
final rocketConfigurationManufacturerName = rocketConfigurationManufacturerName_example; // String | 
final rocketConfigurationManufacturerNameIcontains = rocketConfigurationManufacturerNameIcontains_example; // String | 
final rocketConfigurationName = rocketConfigurationName_example; // String | 
final rocketSpacecraftflightSpacecraftId = 56; // int | 
final rocketSpacecraftflightSpacecraftName = rocketSpacecraftflightSpacecraftName_example; // String | 
final rocketSpacecraftflightSpacecraftNameIcontains = rocketSpacecraftflightSpacecraftNameIcontains_example; // String | 
final search = search_example; // String | A search term.
final serialNumber = []; // List<String> | Comma-separated first stage booster serial numbers.
final slug = slug_example; // String | 
final spacecraftConfigIds = []; // List<int> | Multiple values may be separated by commas.
final status = 56; // int | 
final statusIds = []; // List<int> | Multiple values may be separated by commas.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
final windowEndGt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than
final windowEndGte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than or equal to
final windowEndLt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than
final windowEndLte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than or equal to
final windowStartGt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than
final windowStartGte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than or equal to
final windowStartLt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than
final windowStartLte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than or equal to

try {
    final result = api_instance.launchList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agencyLaunchAttemptCount** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYear** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **id** | [**List<String>**](String.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **includeSuborbital** | **bool**|  | [optional] 
 **isCrewed** | **bool**|  | [optional] 
 **lastUpdatedGte** | **DateTime**| Last Update is greater than or equal to | [optional] 
 **lastUpdatedLte** | **DateTime**| Last Update is less than or equal to | [optional] 
 **launcherConfigId** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **limit** | **int**| Number of results to return per page. | [optional] 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **locationLaunchAttemptCount** | **int**|  | [optional] 
 **locationLaunchAttemptCountGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountLte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYear** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **missionOrbitName** | **String**|  | [optional] 
 **missionOrbitNameIcontains** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **netGt** | **DateTime**| NET is greater than | [optional] 
 **netGte** | **DateTime**| NET is greater than or equal to | [optional] 
 **netLt** | **DateTime**| NET is less than | [optional] 
 **netLte** | **DateTime**| NET is less than or equal to | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **orbitalLaunchAttemptCount** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYear** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **pad** | **int**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **padLocation** | **int**|  | [optional] 
 **padLaunchAttemptCount** | **int**|  | [optional] 
 **padLaunchAttemptCountGt** | **int**|  | [optional] 
 **padLaunchAttemptCountGte** | **int**|  | [optional] 
 **padLaunchAttemptCountLt** | **int**|  | [optional] 
 **padLaunchAttemptCountLte** | **int**|  | [optional] 
 **padLaunchAttemptCountYear** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **rSpacexApiId** | **String**|  | [optional] 
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **rocketConfigurationFullName** | **String**|  | [optional] 
 **rocketConfigurationFullNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationId** | **int**|  | [optional] 
 **rocketConfigurationManufacturerName** | **String**|  | [optional] 
 **rocketConfigurationManufacturerNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftId** | **int**|  | [optional] 
 **rocketSpacecraftflightSpacecraftName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftNameIcontains** | **String**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **serialNumber** | [**List<String>**](String.md)| Comma-separated first stage booster serial numbers. | [optional] [default to const []]
 **slug** | **String**|  | [optional] 
 **spacecraftConfigIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **status** | **int**|  | [optional] 
 **statusIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 
 **windowEndGt** | **DateTime**| Window End is greater than | [optional] 
 **windowEndGte** | **DateTime**| Window End is greater than or equal to | [optional] 
 **windowEndLt** | **DateTime**| Window End is less than | [optional] 
 **windowEndLte** | **DateTime**| Window End is less than or equal to | [optional] 
 **windowStartGt** | **DateTime**| Window Start is greater than | [optional] 
 **windowStartGte** | **DateTime**| Window Start is greater than or equal to | [optional] 
 **windowStartLt** | **DateTime**| Window Start is less than | [optional] 
 **windowStartLte** | **DateTime**| Window Start is less than or equal to | [optional] 

### Return type

[**PaginatedLaunchSerializerCommonList**](PaginatedLaunchSerializerCommonList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchPreviousList**
> PaginatedLaunchSerializerCommonList launchPreviousList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte)



API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final agencyLaunchAttemptCount = 56; // int | 
final agencyLaunchAttemptCountGt = 56; // int | 
final agencyLaunchAttemptCountGte = 56; // int | 
final agencyLaunchAttemptCountLt = 56; // int | 
final agencyLaunchAttemptCountLte = 56; // int | 
final agencyLaunchAttemptCountYear = 56; // int | 
final agencyLaunchAttemptCountYearGt = 56; // int | 
final agencyLaunchAttemptCountYearGte = 56; // int | 
final agencyLaunchAttemptCountYearLt = 56; // int | 
final agencyLaunchAttemptCountYearLte = 56; // int | 
final id = []; // List<String> | Multiple values may be separated by commas.
final includeSuborbital = true; // bool | 
final isCrewed = true; // bool | 
final lastUpdatedGte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is greater than or equal to
final lastUpdatedLte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is less than or equal to
final launcherConfigId = []; // List<int> | Multiple values may be separated by commas.
final limit = 56; // int | Number of results to return per page.
final locationIds = []; // List<int> | 
final locationLaunchAttemptCount = 56; // int | 
final locationLaunchAttemptCountGt = 56; // int | 
final locationLaunchAttemptCountGte = 56; // int | 
final locationLaunchAttemptCountLt = 56; // int | 
final locationLaunchAttemptCountLte = 56; // int | 
final locationLaunchAttemptCountYear = 56; // int | 
final locationLaunchAttemptCountYearGt = 56; // int | 
final locationLaunchAttemptCountYearGte = 56; // int | 
final locationLaunchAttemptCountYearLt = 56; // int | 
final locationLaunchAttemptCountYearLte = 56; // int | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final missionOrbitName = missionOrbitName_example; // String | 
final missionOrbitNameIcontains = missionOrbitNameIcontains_example; // String | 
final name = name_example; // String | 
final netGt = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than
final netGte = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than or equal to
final netLt = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than
final netLte = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than or equal to
final offset = 56; // int | The initial index from which to return the results.
final orbitalLaunchAttemptCount = 56; // int | 
final orbitalLaunchAttemptCountGt = 56; // int | 
final orbitalLaunchAttemptCountGte = 56; // int | 
final orbitalLaunchAttemptCountLt = 56; // int | 
final orbitalLaunchAttemptCountLte = 56; // int | 
final orbitalLaunchAttemptCountYear = 56; // int | 
final orbitalLaunchAttemptCountYearGt = 56; // int | 
final orbitalLaunchAttemptCountYearGte = 56; // int | 
final orbitalLaunchAttemptCountYearLt = 56; // int | 
final orbitalLaunchAttemptCountYearLte = 56; // int | 
final ordering = ordering_example; // String | Which field to use when ordering the results.
final pad = 56; // int | 
final padIds = []; // List<int> | 
final padLocation = 56; // int | 
final padLaunchAttemptCount = 56; // int | 
final padLaunchAttemptCountGt = 56; // int | 
final padLaunchAttemptCountGte = 56; // int | 
final padLaunchAttemptCountLt = 56; // int | 
final padLaunchAttemptCountLte = 56; // int | 
final padLaunchAttemptCountYear = 56; // int | 
final padLaunchAttemptCountYearGt = 56; // int | 
final padLaunchAttemptCountYearGte = 56; // int | 
final padLaunchAttemptCountYearLt = 56; // int | 
final padLaunchAttemptCountYearLte = 56; // int | 
final program = []; // List<int> | 
final rSpacexApiId = rSpacexApiId_example; // String | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final rocketConfigurationFullName = rocketConfigurationFullName_example; // String | 
final rocketConfigurationFullNameIcontains = rocketConfigurationFullNameIcontains_example; // String | 
final rocketConfigurationId = 56; // int | 
final rocketConfigurationManufacturerName = rocketConfigurationManufacturerName_example; // String | 
final rocketConfigurationManufacturerNameIcontains = rocketConfigurationManufacturerNameIcontains_example; // String | 
final rocketConfigurationName = rocketConfigurationName_example; // String | 
final rocketSpacecraftflightSpacecraftId = 56; // int | 
final rocketSpacecraftflightSpacecraftName = rocketSpacecraftflightSpacecraftName_example; // String | 
final rocketSpacecraftflightSpacecraftNameIcontains = rocketSpacecraftflightSpacecraftNameIcontains_example; // String | 
final search = search_example; // String | A search term.
final serialNumber = []; // List<String> | Comma-separated first stage booster serial numbers.
final slug = slug_example; // String | 
final spacecraftConfigIds = []; // List<int> | Multiple values may be separated by commas.
final status = 56; // int | 
final statusIds = []; // List<int> | Multiple values may be separated by commas.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
final windowEndGt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than
final windowEndGte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than or equal to
final windowEndLt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than
final windowEndLte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than or equal to
final windowStartGt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than
final windowStartGte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than or equal to
final windowStartLt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than
final windowStartLte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than or equal to

try {
    final result = api_instance.launchPreviousList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchPreviousList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agencyLaunchAttemptCount** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYear** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **id** | [**List<String>**](String.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **includeSuborbital** | **bool**|  | [optional] 
 **isCrewed** | **bool**|  | [optional] 
 **lastUpdatedGte** | **DateTime**| Last Update is greater than or equal to | [optional] 
 **lastUpdatedLte** | **DateTime**| Last Update is less than or equal to | [optional] 
 **launcherConfigId** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **limit** | **int**| Number of results to return per page. | [optional] 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **locationLaunchAttemptCount** | **int**|  | [optional] 
 **locationLaunchAttemptCountGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountLte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYear** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **missionOrbitName** | **String**|  | [optional] 
 **missionOrbitNameIcontains** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **netGt** | **DateTime**| NET is greater than | [optional] 
 **netGte** | **DateTime**| NET is greater than or equal to | [optional] 
 **netLt** | **DateTime**| NET is less than | [optional] 
 **netLte** | **DateTime**| NET is less than or equal to | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **orbitalLaunchAttemptCount** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYear** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **pad** | **int**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **padLocation** | **int**|  | [optional] 
 **padLaunchAttemptCount** | **int**|  | [optional] 
 **padLaunchAttemptCountGt** | **int**|  | [optional] 
 **padLaunchAttemptCountGte** | **int**|  | [optional] 
 **padLaunchAttemptCountLt** | **int**|  | [optional] 
 **padLaunchAttemptCountLte** | **int**|  | [optional] 
 **padLaunchAttemptCountYear** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **rSpacexApiId** | **String**|  | [optional] 
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **rocketConfigurationFullName** | **String**|  | [optional] 
 **rocketConfigurationFullNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationId** | **int**|  | [optional] 
 **rocketConfigurationManufacturerName** | **String**|  | [optional] 
 **rocketConfigurationManufacturerNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftId** | **int**|  | [optional] 
 **rocketSpacecraftflightSpacecraftName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftNameIcontains** | **String**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **serialNumber** | [**List<String>**](String.md)| Comma-separated first stage booster serial numbers. | [optional] [default to const []]
 **slug** | **String**|  | [optional] 
 **spacecraftConfigIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **status** | **int**|  | [optional] 
 **statusIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 
 **windowEndGt** | **DateTime**| Window End is greater than | [optional] 
 **windowEndGte** | **DateTime**| Window End is greater than or equal to | [optional] 
 **windowEndLt** | **DateTime**| Window End is less than | [optional] 
 **windowEndLte** | **DateTime**| Window End is less than or equal to | [optional] 
 **windowStartGt** | **DateTime**| Window Start is greater than | [optional] 
 **windowStartGte** | **DateTime**| Window Start is greater than or equal to | [optional] 
 **windowStartLt** | **DateTime**| Window Start is less than | [optional] 
 **windowStartLte** | **DateTime**| Window Start is less than or equal to | [optional] 

### Return type

[**PaginatedLaunchSerializerCommonList**](PaginatedLaunchSerializerCommonList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchPreviousRetrieve**
> LaunchDetailed launchPreviousRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering)



API endpoint that returns previous Launch objects.  GET Return a list of previous Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed' EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Launch.
final locationIds = []; // List<int> | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final padIds = []; // List<int> | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.

try {
    final result = api_instance.launchPreviousRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchPreviousRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Launch. | 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 

### Return type

[**LaunchDetailed**](LaunchDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchRetrieve**
> LaunchDetailed launchRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering)



API endpoint that returns all Launch objects or a single launch.  EXAMPLE - /launch/\\<id\\>/ or /launch/?mode=list&search=SpaceX  GET Return a list of all Launch objects.  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids', 'pad__ids', 'status__ids'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency, mission name & spacecraft name.  EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Launch.
final locationIds = []; // List<int> | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final padIds = []; // List<int> | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.

try {
    final result = api_instance.launchRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Launch. | 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 

### Return type

[**LaunchDetailed**](LaunchDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchUpcomingList**
> PaginatedLaunchSerializerCommonList launchUpcomingList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, hideRecentPrevious, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte)



API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final agencyLaunchAttemptCount = 56; // int | 
final agencyLaunchAttemptCountGt = 56; // int | 
final agencyLaunchAttemptCountGte = 56; // int | 
final agencyLaunchAttemptCountLt = 56; // int | 
final agencyLaunchAttemptCountLte = 56; // int | 
final agencyLaunchAttemptCountYear = 56; // int | 
final agencyLaunchAttemptCountYearGt = 56; // int | 
final agencyLaunchAttemptCountYearGte = 56; // int | 
final agencyLaunchAttemptCountYearLt = 56; // int | 
final agencyLaunchAttemptCountYearLte = 56; // int | 
final hideRecentPrevious = true; // bool | Hide launches from the past 24 hours, which are included by default for convenience.
final id = []; // List<String> | Multiple values may be separated by commas.
final includeSuborbital = true; // bool | 
final isCrewed = true; // bool | 
final lastUpdatedGte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is greater than or equal to
final lastUpdatedLte = 2013-10-20T19:20:30+01:00; // DateTime | Last Update is less than or equal to
final launcherConfigId = []; // List<int> | Multiple values may be separated by commas.
final limit = 56; // int | Number of results to return per page.
final locationIds = []; // List<int> | 
final locationLaunchAttemptCount = 56; // int | 
final locationLaunchAttemptCountGt = 56; // int | 
final locationLaunchAttemptCountGte = 56; // int | 
final locationLaunchAttemptCountLt = 56; // int | 
final locationLaunchAttemptCountLte = 56; // int | 
final locationLaunchAttemptCountYear = 56; // int | 
final locationLaunchAttemptCountYearGt = 56; // int | 
final locationLaunchAttemptCountYearGte = 56; // int | 
final locationLaunchAttemptCountYearLt = 56; // int | 
final locationLaunchAttemptCountYearLte = 56; // int | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final missionOrbitName = missionOrbitName_example; // String | 
final missionOrbitNameIcontains = missionOrbitNameIcontains_example; // String | 
final name = name_example; // String | 
final netGt = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than
final netGte = 2013-10-20T19:20:30+01:00; // DateTime | NET is greater than or equal to
final netLt = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than
final netLte = 2013-10-20T19:20:30+01:00; // DateTime | NET is less than or equal to
final offset = 56; // int | The initial index from which to return the results.
final orbitalLaunchAttemptCount = 56; // int | 
final orbitalLaunchAttemptCountGt = 56; // int | 
final orbitalLaunchAttemptCountGte = 56; // int | 
final orbitalLaunchAttemptCountLt = 56; // int | 
final orbitalLaunchAttemptCountLte = 56; // int | 
final orbitalLaunchAttemptCountYear = 56; // int | 
final orbitalLaunchAttemptCountYearGt = 56; // int | 
final orbitalLaunchAttemptCountYearGte = 56; // int | 
final orbitalLaunchAttemptCountYearLt = 56; // int | 
final orbitalLaunchAttemptCountYearLte = 56; // int | 
final ordering = ordering_example; // String | Which field to use when ordering the results.
final pad = 56; // int | 
final padIds = []; // List<int> | 
final padLocation = 56; // int | 
final padLaunchAttemptCount = 56; // int | 
final padLaunchAttemptCountGt = 56; // int | 
final padLaunchAttemptCountGte = 56; // int | 
final padLaunchAttemptCountLt = 56; // int | 
final padLaunchAttemptCountLte = 56; // int | 
final padLaunchAttemptCountYear = 56; // int | 
final padLaunchAttemptCountYearGt = 56; // int | 
final padLaunchAttemptCountYearGte = 56; // int | 
final padLaunchAttemptCountYearLt = 56; // int | 
final padLaunchAttemptCountYearLte = 56; // int | 
final program = []; // List<int> | 
final rSpacexApiId = rSpacexApiId_example; // String | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final rocketConfigurationFullName = rocketConfigurationFullName_example; // String | 
final rocketConfigurationFullNameIcontains = rocketConfigurationFullNameIcontains_example; // String | 
final rocketConfigurationId = 56; // int | 
final rocketConfigurationManufacturerName = rocketConfigurationManufacturerName_example; // String | 
final rocketConfigurationManufacturerNameIcontains = rocketConfigurationManufacturerNameIcontains_example; // String | 
final rocketConfigurationName = rocketConfigurationName_example; // String | 
final rocketSpacecraftflightSpacecraftId = 56; // int | 
final rocketSpacecraftflightSpacecraftName = rocketSpacecraftflightSpacecraftName_example; // String | 
final rocketSpacecraftflightSpacecraftNameIcontains = rocketSpacecraftflightSpacecraftNameIcontains_example; // String | 
final search = search_example; // String | A search term.
final serialNumber = []; // List<String> | Comma-separated first stage booster serial numbers.
final slug = slug_example; // String | 
final spacecraftConfigIds = []; // List<int> | Multiple values may be separated by commas.
final status = 56; // int | 
final statusIds = []; // List<int> | Multiple values may be separated by commas.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.
final windowEndGt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than
final windowEndGte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is greater than or equal to
final windowEndLt = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than
final windowEndLte = 2013-10-20T19:20:30+01:00; // DateTime | Window End is less than or equal to
final windowStartGt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than
final windowStartGte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is greater than or equal to
final windowStartLt = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than
final windowStartLte = 2013-10-20T19:20:30+01:00; // DateTime | Window Start is less than or equal to

try {
    final result = api_instance.launchUpcomingList(agencyLaunchAttemptCount, agencyLaunchAttemptCountGt, agencyLaunchAttemptCountGte, agencyLaunchAttemptCountLt, agencyLaunchAttemptCountLte, agencyLaunchAttemptCountYear, agencyLaunchAttemptCountYearGt, agencyLaunchAttemptCountYearGte, agencyLaunchAttemptCountYearLt, agencyLaunchAttemptCountYearLte, hideRecentPrevious, id, includeSuborbital, isCrewed, lastUpdatedGte, lastUpdatedLte, launcherConfigId, limit, locationIds, locationLaunchAttemptCount, locationLaunchAttemptCountGt, locationLaunchAttemptCountGte, locationLaunchAttemptCountLt, locationLaunchAttemptCountLte, locationLaunchAttemptCountYear, locationLaunchAttemptCountYearGt, locationLaunchAttemptCountYearGte, locationLaunchAttemptCountYearLt, locationLaunchAttemptCountYearLte, lspId, lspIds, lspName, missionOrbitName, missionOrbitNameIcontains, name, netGt, netGte, netLt, netLte, offset, orbitalLaunchAttemptCount, orbitalLaunchAttemptCountGt, orbitalLaunchAttemptCountGte, orbitalLaunchAttemptCountLt, orbitalLaunchAttemptCountLte, orbitalLaunchAttemptCountYear, orbitalLaunchAttemptCountYearGt, orbitalLaunchAttemptCountYearGte, orbitalLaunchAttemptCountYearLt, orbitalLaunchAttemptCountYearLte, ordering, pad, padIds, padLocation, padLaunchAttemptCount, padLaunchAttemptCountGt, padLaunchAttemptCountGte, padLaunchAttemptCountLt, padLaunchAttemptCountLte, padLaunchAttemptCountYear, padLaunchAttemptCountYearGt, padLaunchAttemptCountYearGte, padLaunchAttemptCountYearLt, padLaunchAttemptCountYearLte, program, rSpacexApiId, related, rocketConfigurationFullName, rocketConfigurationFullNameIcontains, rocketConfigurationId, rocketConfigurationManufacturerName, rocketConfigurationManufacturerNameIcontains, rocketConfigurationName, rocketSpacecraftflightSpacecraftId, rocketSpacecraftflightSpacecraftName, rocketSpacecraftflightSpacecraftNameIcontains, search, serialNumber, slug, spacecraftConfigIds, status, statusIds, strictFiltering, windowEndGt, windowEndGte, windowEndLt, windowEndLte, windowStartGt, windowStartGte, windowStartLt, windowStartLte);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchUpcomingList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agencyLaunchAttemptCount** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountLte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYear** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **agencyLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **hideRecentPrevious** | **bool**| Hide launches from the past 24 hours, which are included by default for convenience. | [optional] 
 **id** | [**List<String>**](String.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **includeSuborbital** | **bool**|  | [optional] 
 **isCrewed** | **bool**|  | [optional] 
 **lastUpdatedGte** | **DateTime**| Last Update is greater than or equal to | [optional] 
 **lastUpdatedLte** | **DateTime**| Last Update is less than or equal to | [optional] 
 **launcherConfigId** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **limit** | **int**| Number of results to return per page. | [optional] 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **locationLaunchAttemptCount** | **int**|  | [optional] 
 **locationLaunchAttemptCountGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountLte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYear** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **locationLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **missionOrbitName** | **String**|  | [optional] 
 **missionOrbitNameIcontains** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **netGt** | **DateTime**| NET is greater than | [optional] 
 **netGte** | **DateTime**| NET is greater than or equal to | [optional] 
 **netLt** | **DateTime**| NET is less than | [optional] 
 **netLte** | **DateTime**| NET is less than or equal to | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 
 **orbitalLaunchAttemptCount** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountLte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYear** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **orbitalLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **pad** | **int**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **padLocation** | **int**|  | [optional] 
 **padLaunchAttemptCount** | **int**|  | [optional] 
 **padLaunchAttemptCountGt** | **int**|  | [optional] 
 **padLaunchAttemptCountGte** | **int**|  | [optional] 
 **padLaunchAttemptCountLt** | **int**|  | [optional] 
 **padLaunchAttemptCountLte** | **int**|  | [optional] 
 **padLaunchAttemptCountYear** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearGte** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLt** | **int**|  | [optional] 
 **padLaunchAttemptCountYearLte** | **int**|  | [optional] 
 **program** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **rSpacexApiId** | **String**|  | [optional] 
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **rocketConfigurationFullName** | **String**|  | [optional] 
 **rocketConfigurationFullNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationId** | **int**|  | [optional] 
 **rocketConfigurationManufacturerName** | **String**|  | [optional] 
 **rocketConfigurationManufacturerNameIcontains** | **String**|  | [optional] 
 **rocketConfigurationName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftId** | **int**|  | [optional] 
 **rocketSpacecraftflightSpacecraftName** | **String**|  | [optional] 
 **rocketSpacecraftflightSpacecraftNameIcontains** | **String**|  | [optional] 
 **search** | **String**| A search term. | [optional] 
 **serialNumber** | [**List<String>**](String.md)| Comma-separated first stage booster serial numbers. | [optional] [default to const []]
 **slug** | **String**|  | [optional] 
 **spacecraftConfigIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **status** | **int**|  | [optional] 
 **statusIds** | [**List<int>**](int.md)| Multiple values may be separated by commas. | [optional] [default to const []]
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 
 **windowEndGt** | **DateTime**| Window End is greater than | [optional] 
 **windowEndGte** | **DateTime**| Window End is greater than or equal to | [optional] 
 **windowEndLt** | **DateTime**| Window End is less than | [optional] 
 **windowEndLte** | **DateTime**| Window End is less than or equal to | [optional] 
 **windowStartGt** | **DateTime**| Window Start is greater than | [optional] 
 **windowStartGte** | **DateTime**| Window Start is greater than or equal to | [optional] 
 **windowStartLt** | **DateTime**| Window Start is less than | [optional] 
 **windowStartLte** | **DateTime**| Window Start is less than or equal to | [optional] 

### Return type

[**PaginatedLaunchSerializerCommonList**](PaginatedLaunchSerializerCommonList.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchUpcomingRetrieve**
> LaunchDetailed launchUpcomingRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering)



API endpoint that returns future Launch objects and launches from the last twenty-four hours.  GET Return a list of future Launches  FILTERS Fields - 'name', 'id(s)', 'lsp__id', 'lsp__name', 'serial_number', 'launcher_config__id',  'rocket__spacecraftflight__spacecraft__name', 'is_crewed', 'include_suborbital', 'spacecraft_config__ids',  'related', 'location__ids', 'lsp__ids,'pad__ids', 'status__ids', 'hide_recent_previous'  MODE 'normal', 'list', 'detailed'  EXAMPLE ?mode=list  SEARCH Searches through the launch name, rocket name, launch agency and mission name. EXAMPLE - ?search=SpaceX

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

final api_instance = LaunchApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A UUID string identifying this Launch.
final locationIds = []; // List<int> | 
final lspId = 56; // int | 
final lspIds = []; // List<int> | 
final lspName = lspName_example; // String | 
final padIds = []; // List<int> | 
final related = true; // bool | Include related agencies in the lsp__name and lsp__id filters.
final strictFiltering = true; // bool | Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility.

try {
    final result = api_instance.launchUpcomingRetrieve(id, locationIds, lspId, lspIds, lspName, padIds, related, strictFiltering);
    print(result);
} catch (e) {
    print('Exception when calling LaunchApi->launchUpcomingRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A UUID string identifying this Launch. | 
 **locationIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspId** | **int**|  | [optional] 
 **lspIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **lspName** | **String**|  | [optional] 
 **padIds** | [**List<int>**](int.md)|  | [optional] [default to const []]
 **related** | **bool**| Include related agencies in the lsp__name and lsp__id filters. | [optional] 
 **strictFiltering** | **bool**| Enforce strict filtering for lsp__ids, location__ids, and pad__ids. False by default for backwards-compatibility. | [optional] 

### Return type

[**LaunchDetailed**](LaunchDetailed.md)

### Authorization

[basicAuth](../README.md#basicAuth), [tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

