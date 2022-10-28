# openapi.model.TokenV2DTO

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
**id** | **String** | token address | [optional] 
**symbol** | **String** | token symbol | [optional] 
**name** | **String** | token name | [optional] 
**decimals** | **int** | token decimals | [optional] 
**totalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**tradeVolume** | **String** | amount of token traded all time across all pairs | [optional] 
**tradeVolumeUsd** | **String** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) | [optional] 
**untrackedVolumeUsd** | **String** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) | [optional] 
**txCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**totalLiquidity** | **String** | total amount of token provided as liquidity across all pairs | [optional] 
**derivedEth** | **String** | ETH per token | [optional] 
**tokenSymbol** | **String** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


