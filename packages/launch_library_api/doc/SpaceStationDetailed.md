# launch_library_api.model.SpaceStationDetailed

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
**status** | [**SpaceStationStatus**](SpaceStationStatus.md) |  | [readonly] 
**type** | [**SpaceStationType**](SpaceStationType.md) |  | [readonly] 
**founded** | [**DateTime**](DateTime.md) |  | 
**deorbited** | [**DateTime**](DateTime.md) |  | [optional] 
**height** | **double** |  | [optional] 
**width** | **double** |  | [optional] 
**mass** | **double** |  | [optional] 
**volume** | **int** |  | [optional] 
**description** | **String** |  | 
**orbit** | **String** |  | [readonly] 
**onboardCrew** | **int** |  | [optional] 
**dockedVehicles** | **int** |  | [optional] 
**owners** | [**List<Agency>**](Agency.md) |  | [readonly] [default to const []]
**activeExpeditions** | [**List<ExpeditionDetailedSerializerForSpacestation>**](ExpeditionDetailedSerializerForSpacestation.md) |  | [readonly] [default to const []]
**dockingLocation** | [**List<DockingLocationSerializerForSpacestation>**](DockingLocationSerializerForSpacestation.md) |  | [readonly] [default to const []]
**imageUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


