# launch_library_api.model.SpacecraftFlightDetailed

## Load the model package
```dart
import 'package:launch_library_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**url** | **String** |  | [readonly] 
**missionEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**destination** | **String** |  | [optional] 
**launchCrew** | [**List<AstronautFlight>**](AstronautFlight.md) |  | [readonly] [default to const []]
**onboardCrew** | [**List<AstronautFlight>**](AstronautFlight.md) |  | [readonly] [default to const []]
**landingCrew** | [**List<AstronautFlight>**](AstronautFlight.md) |  | [readonly] [default to const []]
**spacecraft** | [**SpacecraftDetailedNoFlights**](SpacecraftDetailedNoFlights.md) |  | [readonly] 
**launch** | [**LaunchSerializerCommon**](LaunchSerializerCommon.md) |  | [readonly] 
**landing** | [**Landing**](Landing.md) |  | [readonly] 
**dockingEvents** | [**List<DockingEventSerializerForSpacecraftFlight>**](DockingEventSerializerForSpacecraftFlight.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


