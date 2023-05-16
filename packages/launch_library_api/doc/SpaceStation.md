# launch_library_api.model.SpaceStation

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
**description** | **String** |  | 
**orbit** | **String** |  | [readonly] 
**owners** | [**List<AgencyList>**](AgencyList.md) |  | [readonly] [default to const []]
**activeExpedition** | [**List<ExpeditionSerializerForSpacestation>**](ExpeditionSerializerForSpacestation.md) |  | [readonly] [default to const []]
**imageUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


