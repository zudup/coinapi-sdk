
# CoinAPI.EMS.REST.V1.Model.TokenV3DTO

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
**Volume** | **string** | volume in token units | [optional] 
**VolumeUsd** | **string** | volume in derived USD | [optional] 
**UntrackedVolumeUsd** | **string** | volume in USD even on pools with less reliable USD values | [optional] 
**FeesUsd** | **string** | fees in USD | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**PoolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalValueLocked** | **string** | liquidity across all pools in token units | [optional] 
**TotalValueLockedUsd** | **string** | liquidity across all pools in derived USD | [optional] 
**TotalValueLockedUsdUntracked** | **string** | TVL derived in USD untracked | [optional] 
**DerivedEth** | **string** | derived price in ETH | [optional] 
**WhitelistPools** | **List&lt;string&gt;** | pools token is in that are white listed for USD pricing | [optional] 
**TokenSymbol** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

