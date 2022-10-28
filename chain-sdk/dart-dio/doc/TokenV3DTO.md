# openapi.model.TokenV3DTO

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
**volume** | **String** | volume in token units | [optional] 
**volumeUsd** | **String** | volume in derived USD | [optional] 
**untrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**feesUsd** | **String** | fees in USD | [optional] 
**txCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**poolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**totalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**totalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**totalValueLockedUsdUntracked** | **String** | TVL derived in USD untracked | [optional] 
**derivedEth** | **String** | derived price in ETH | [optional] 
**whitelistPools** | **BuiltList&lt;String&gt;** | pools token is in that are white listed for USD pricing | [optional] 
**tokenSymbol** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


