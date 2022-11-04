# CoinAPI.EMS.REST.V1.Model.TickV3DTO
Ticks are the boundaries between discrete areas in price space.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | Identifier, format: &lt;pool address&gt;#&lt;tick index&gt; | [optional] 
**PoolAddress** | **string** | Pool address. | [optional] 
**TickIdx** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Pool** | **string** | Pool address. | [optional] 
**LiquidityGross** | [**BigInteger**](BigInteger.md) |  | [optional] 
**LiquidityNet** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Price0** | **string** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**Price1** | **string** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**VolumeToken0** | **string** | Lifetime volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | **string** | Lifetime volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | **string** | Lifetime volume in derived USD with this tick in range. | [optional] 
**UntrackedVolumeUsd** | **string** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**FeesUsd** | **string** | Fees in USD. | [optional] 
**CollectedFeesToken0** | **string** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | **string** | All time collected fees in token1. | [optional] 
**CollectedFeesUsd** | **string** | All time collected fees in USD. | [optional] 
**CreatedAtTimestamp** | **DateTime** | Created time. | [optional] 
**LiquidityProviderCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside0x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside1x128** | [**BigInteger**](BigInteger.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

