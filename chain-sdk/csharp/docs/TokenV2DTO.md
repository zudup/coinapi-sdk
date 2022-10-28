
# CoinAPI.EMS.REST.V1.Model.TokenV2DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** |  | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | token address | [optional] 
**Symbol** | **string** | token symbol | [optional] 
**Name** | **string** | token name | [optional] 
**Decimals** | **int** | token decimals | [optional] 
**TotalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TradeVolume** | **string** | amount of token traded all time across all pairs | [optional] 
**TradeVolumeUsd** | **string** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) | [optional] 
**UntrackedVolumeUsd** | **string** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalLiquidity** | **string** | total amount of token provided as liquidity across all pairs | [optional] 
**DerivedEth** | **string** | ETH per token | [optional] 
**TokenSymbol** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

