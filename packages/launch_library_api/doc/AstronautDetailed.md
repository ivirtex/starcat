# launch_library_api.model.AstronautDetailed

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
**status** | [**AstronautStatus**](AstronautStatus.md) |  | [readonly] 
**type** | [**AstronautType**](AstronautType.md) |  | [readonly] 
**inSpace** | **bool** |  | [optional] 
**timeInSpace** | **String** |  | [readonly] 
**evaTime** | **String** |  | [readonly] 
**agency** | [**AgencySerializerMini**](AgencySerializerMini.md) |  | [readonly] 
**age** | **int** |  | [optional] 
**dateOfBirth** | [**DateTime**](DateTime.md) |  | [optional] 
**dateOfDeath** | [**DateTime**](DateTime.md) |  | [optional] 
**nationality** | **String** |  | 
**twitter** | **String** |  | [optional] 
**instagram** | **String** |  | [optional] 
**bio** | **String** |  | 
**profileImage** | **String** |  | [optional] 
**profileImageThumbnail** | **String** |  | [optional] 
**wiki** | **String** |  | [optional] 
**flights** | [**List<LaunchSerializerCommon>**](LaunchSerializerCommon.md) |  | [readonly] [default to const []]
**landings** | [**List<SpacecraftFlight>**](SpacecraftFlight.md) |  | [readonly] [default to const []]
**flightsCount** | **int** |  | [optional] 
**landingsCount** | **int** |  | [optional] 
**spacewalksCount** | **int** |  | [optional] 
**lastFlight** | [**DateTime**](DateTime.md) |  | [optional] 
**firstFlight** | [**DateTime**](DateTime.md) |  | [optional] 
**spacewalks** | [**List<SpacewalkNormal>**](SpacewalkNormal.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


