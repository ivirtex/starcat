# launch_library_api.model.LaunchDetailed

## Load the model package
```dart
import 'package:launch_library_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [readonly] 
**url** | **String** |  | [readonly] 
**slug** | **String** |  | 
**flightclubUrl** | **String** |  | [readonly] 
**rSpacexApiId** | **String** |  | [readonly] 
**name** | **String** |  | [readonly] 
**status** | [**LaunchStatus**](LaunchStatus.md) |  | [readonly] 
**lastUpdated** | [**DateTime**](DateTime.md) |  | [readonly] 
**updates** | [**List<Update>**](Update.md) |  | [readonly] [default to const []]
**net** | [**DateTime**](DateTime.md) |  | [readonly] 
**netPrecision** | [**NetPrecision**](NetPrecision.md) |  | [readonly] 
**windowEnd** | [**DateTime**](DateTime.md) |  | [readonly] 
**windowStart** | [**DateTime**](DateTime.md) |  | [readonly] 
**probability** | **int** |  | [readonly] 
**holdreason** | **String** |  | [readonly] 
**failreason** | **String** |  | [readonly] 
**hashtag** | **String** |  | [readonly] 
**launchServiceProvider** | [**AgencySerializerDetailedCommon**](AgencySerializerDetailedCommon.md) |  | [readonly] 
**rocket** | [**RocketDetailed**](RocketDetailed.md) |  | [readonly] 
**mission** | [**Mission**](Mission.md) |  | [readonly] 
**pad** | [**Pad**](Pad.md) |  | [readonly] 
**infoURLs** | [**List<InfoURL>**](InfoURL.md) |  | [readonly] [default to const []]
**vidURLs** | [**List<VidURL>**](VidURL.md) |  | [readonly] [default to const []]
**webcastLive** | **bool** |  | [readonly] 
**image** | **String** |  | [readonly] 
**infographic** | **String** |  | [optional] [readonly] 
**program** | [**List<Program>**](Program.md) |  | [readonly] [default to const []]
**orbitalLaunchAttemptCount** | **int** |  | [readonly] 
**locationLaunchAttemptCount** | **int** |  | [readonly] 
**padLaunchAttemptCount** | **int** |  | [readonly] 
**agencyLaunchAttemptCount** | **int** |  | [readonly] 
**orbitalLaunchAttemptCountYear** | **int** |  | [readonly] 
**locationLaunchAttemptCountYear** | **int** |  | [readonly] 
**padLaunchAttemptCountYear** | **int** |  | [readonly] 
**agencyLaunchAttemptCountYear** | **int** |  | [readonly] 
**missionPatches** | [**List<MissionPatch>**](MissionPatch.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


