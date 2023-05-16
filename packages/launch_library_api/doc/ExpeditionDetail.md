# launch_library_api.model.ExpeditionDetail

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
**start** | [**DateTime**](DateTime.md) |  | 
**end** | [**DateTime**](DateTime.md) |  | [optional] 
**spacestation** | [**SpaceStationDetailedSerializerForExpedition**](SpaceStationDetailedSerializerForExpedition.md) |  | [readonly] 
**crew** | [**List<AstronautFlightForExpedition>**](AstronautFlightForExpedition.md) |  | [readonly] [default to const []]
**missionPatches** | [**List<MissionPatch>**](MissionPatch.md) |  | [readonly] [default to const []]
**spacewalks** | [**List<SpacewalkNormal>**](SpacewalkNormal.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


