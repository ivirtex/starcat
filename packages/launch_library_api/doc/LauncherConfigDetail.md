# launch_library_api.model.LauncherConfigDetail

## Load the model package
```dart
import 'package:launch_library_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**url** | **String** |  | [readonly] 
**name** | **String** |  | 
**active** | **bool** |  | [optional] 
**reusable** | **bool** |  | [optional] 
**description** | **String** |  | [optional] 
**family** | **String** |  | [optional] 
**fullName** | **String** |  | [optional] 
**manufacturer** | [**AgencySerializerDetailedCommon**](AgencySerializerDetailedCommon.md) |  | [readonly] 
**program** | [**List<Program>**](Program.md) |  | [readonly] [default to const []]
**variant** | **String** |  | [optional] 
**alias** | **String** |  | [optional] 
**minStage** | **int** |  | [optional] 
**maxStage** | **int** |  | [optional] 
**length** | **double** |  | [optional] 
**diameter** | **double** |  | [optional] 
**maidenFlight** | [**DateTime**](DateTime.md) |  | [optional] 
**launchCost** | **String** |  | [optional] 
**launchMass** | **int** |  | [optional] 
**leoCapacity** | **int** |  | [optional] 
**gtoCapacity** | **int** |  | [optional] 
**toThrust** | **int** |  | [optional] 
**apogee** | **int** |  | [optional] 
**vehicleRange** | **int** |  | [optional] 
**imageUrl** | **String** |  | [optional] 
**infoUrl** | **String** |  | [optional] 
**wikiUrl** | **String** |  | [optional] 
**totalLaunchCount** | **int** |  | [optional] 
**consecutiveSuccessfulLaunches** | **int** |  | [optional] 
**successfulLaunches** | **int** |  | [optional] 
**failedLaunches** | **int** |  | [optional] 
**pendingLaunches** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


