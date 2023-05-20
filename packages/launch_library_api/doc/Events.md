# launch_library_api.model.Events

## Load the model package
```dart
import 'package:launch_library_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**url** | **String** |  | [readonly] 
**slug** | **String** |  | 
**name** | **String** |  | 
**updates** | [**List<Update>**](Update.md) |  | [readonly] [default to const []]
**type** | [**EventType**](EventType.md) |  | [readonly] 
**description** | **String** |  | [optional] 
**webcastLive** | **bool** |  | [optional] 
**location** | **String** |  | [optional] 
**newsUrl** | **String** |  | [optional] 
**videoUrl** | **String** |  | [optional] 
**featureImage** | **String** |  | [optional] 
**date** | [**DateTime**](DateTime.md) |  | [optional] 
**datePrecision** | [**NetPrecision**](NetPrecision.md) |  | [readonly] 
**launches** | [**List<LaunchSerializerCommon>**](LaunchSerializerCommon.md) |  | [default to const []]
**expeditions** | [**List<Expedition>**](Expedition.md) |  | [default to const []]
**spacestations** | [**List<SpaceStationSerializerForCommon>**](SpaceStationSerializerForCommon.md) |  | [default to const []]
**program** | [**List<Program>**](Program.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

