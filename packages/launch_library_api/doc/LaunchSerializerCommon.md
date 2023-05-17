# launch_library_api.model.LaunchSerializerCommon

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
**name** | **String** |  | [optional] 
**status** | [**LaunchStatus**](LaunchStatus.md) |  | [readonly] 
**lastUpdated** | [**DateTime**](DateTime.md) |  | [optional] 
**net** | [**DateTime**](DateTime.md) |  | [optional] 
**windowEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**windowStart** | [**DateTime**](DateTime.md) |  | [optional] 
**netPrecision** | [**NetPrecision**](NetPrecision.md) |  | [readonly] 
**probability** | **int** |  | [optional] 
**holdreason** | **String** |  | [optional] 
**failreason** | **String** |  | [optional] 
**hashtag** | **String** |  | [optional] 
**launchServiceProvider** | [**AgencySerializerMini**](AgencySerializerMini.md) |  | [readonly] 
**rocket** | [**RocketSerializerCommon**](RocketSerializerCommon.md) |  | [readonly] 
**mission** | [**Mission**](Mission.md) |  | [readonly] 
**pad** | [**Pad**](Pad.md) |  | [readonly] 
**webcastLive** | **bool** |  | [optional] 
**image** | **String** |  | [readonly] 
**infographic** | **String** |  | [optional] [readonly] 
**program** | [**List<Program>**](Program.md) |  | [readonly] [default to const []]
**orbitalLaunchAttemptCount** | **int** |  | [optional] 
**locationLaunchAttemptCount** | **int** |  | [optional] 
**padLaunchAttemptCount** | **int** |  | [optional] 
**agencyLaunchAttemptCount** | **int** |  | [optional] 
**orbitalLaunchAttemptCountYear** | **int** |  | [optional] 
**locationLaunchAttemptCountYear** | **int** |  | [optional] 
**padLaunchAttemptCountYear** | **int** |  | [optional] 
**agencyLaunchAttemptCountYear** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


