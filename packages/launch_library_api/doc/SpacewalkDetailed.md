# launch_library_api.model.SpacewalkDetailed

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
**start** | [**DateTime**](DateTime.md) |  | [optional] 
**end** | [**DateTime**](DateTime.md) |  | [optional] 
**duration** | **String** |  | [readonly] 
**location** | **String** |  | [optional] 
**crew** | [**List<AstronautFlight>**](AstronautFlight.md) |  | [readonly] [default to const []]
**spacestation** | [**SpaceStationSerializerForCommon**](SpaceStationSerializerForCommon.md) |  | [readonly] 
**expedition** | [**ExpeditionDetailedSerializerForSpacewalk**](ExpeditionDetailedSerializerForSpacewalk.md) |  | [readonly] 
**spacecraftFlight** | [**SpacecraftFlightDetailed**](SpacecraftFlightDetailed.md) |  | [readonly] 
**event** | [**EventDetailedSerializerForSpacewalk**](EventDetailedSerializerForSpacewalk.md) |  | [readonly] 
**program** | [**List<Program>**](Program.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


