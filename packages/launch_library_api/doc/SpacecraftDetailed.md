# launch_library_api.model.SpacecraftDetailed

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
**serialNumber** | **String** |  | [optional] 
**status** | [**SpacecraftStatus**](SpacecraftStatus.md) |  | [readonly] 
**description** | **String** |  | 
**spacecraftConfig** | [**SpacecraftConfigurationDetail**](SpacecraftConfigurationDetail.md) |  | [readonly] 
**flights** | [**List<SpacecraftFlight>**](SpacecraftFlight.md) |  | [optional] [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


