# openapi.model.UniswapV3PoolHourDataV3DTO

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**DateTime**](DateTime.md) |  | [optional] 
**recvTime** | [**DateTime**](DateTime.md) |  | [optional] 
**blockNumber** | **int** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: <pool address>-<day id> | [optional] 
**periodStartUnix** | **int** | Unix timestamp for start of hour. | [optional] 
**pool** | **String** | Pointer to pool. | [optional] 
**liquidity** | **String** | In range liquidity at end of period. | [optional] 
**sqrtPrice** | **String** | Current price tracker at end of period. | [optional] 
**token0Price** | **String** | Price of token0 - derived from sqrtPrice. | [optional] 
**token1Price** | **String** | Price of token1 - derived from sqrtPrice. | [optional] 
**tick** | **String** | Current tick at end of period. | [optional] 
**feeGrowthGlobal0x128** | **String** | Tracker for global fee growth. | [optional] 
**feeGrowthGlobal1x128** | **String** | Tracker for global fee growth. | [optional] 
**tvlUsd** | **String** | Total value locked derived in USD at end of period. | [optional] 
**volumeToken0** | **String** | Volume in token0. | [optional] 
**volumeToken1** | **String** | Volume in token1. | [optional] 
**volumeUsd** | **String** | Volume in USD. | [optional] 
**feesUsd** | **String** | Fees in USD. | [optional] 
**txCount** | **String** | Number of transactions during period. | [optional] 
**open** | **String** | Opening price of token0. | [optional] 
**high** | **String** | High price of token0. | [optional] 
**low** | **String** | Low price of token0. | [optional] 
**close** | **String** | Close price of token0. | [optional] 
**vid** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

