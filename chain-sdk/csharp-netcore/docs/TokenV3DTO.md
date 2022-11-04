# CoinAPI.EMS.REST.V1.Model.TokenV3DTO
Stores aggregated information for a specific token across all pairs that token is included in.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | Token address. | [optional] 
**Symbol** | **string** | Token symbol. | [optional] 
**Name** | **string** | Token name. | [optional] 
**Decimals** | **int** | Token decimals. | [optional] 
**TotalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Volume** | **string** | Volume in token units. | [optional] 
**VolumeUsd** | **string** | Volume in derived USD. | [optional] 
**UntrackedVolumeUsd** | **string** | Volume in USD even on pools with less reliable USD values. | [optional] 
**FeesUsd** | **string** | Fees in USD. | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**PoolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalValueLocked** | **string** | Liquidity across all pools in token units. | [optional] 
**TotalValueLockedUsd** | **string** | Liquidity across all pools in derived USD. | [optional] 
**TotalValueLockedUsdUntracked** | **string** | TVL derived in USD untracked. | [optional] 
**DerivedEth** | **string** | Derived price in ETH. | [optional] 
**WhitelistPools** | **List&lt;string&gt;** | Pools token is in that are white listed for USD pricing. | [optional] 
**TokenSymbol** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

