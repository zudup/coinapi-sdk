# openapi.model.TokenV3DayDataDTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**DateTime**](DateTime.md) |  | [optional] 
**recvTime** | [**DateTime**](DateTime.md) |  | [optional] 
**blockNumber** | **int** |  | [optional] 
**vid** | **int** |  | [optional] 
**id** | **String** | token address concatendated with date | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**token** | **String** | pointer to token | [optional] 
**volume** | **String** | volume in token units | [optional] 
**volumeUsd** | **String** | volume in derived USD | [optional] 
**untrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**totalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**totalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**priceUsd** | **String** | price at end of period in USD | [optional] 
**feesUsd** | **String** | fees in USD | [optional] 
**open** | **String** | opening price USD | [optional] 
**high** | **String** | high price USD | [optional] 
**low** | **String** | low price USD | [optional] 
**close** | **String** | close price USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


