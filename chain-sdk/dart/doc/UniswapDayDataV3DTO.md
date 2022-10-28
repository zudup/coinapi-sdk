# openapi.model.UniswapDayDataV3DTO

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
**id** | **String** | timestamp rounded to current day by dividing by 86400 | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**volumeEth** | **String** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**volumeUsd** | **String** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**volumeUsdUntracked** | **String** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**feesUsd** | **String** | fees in USD | [optional] 
**txCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**tvlUsd** | **String** | tvl in terms of USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


