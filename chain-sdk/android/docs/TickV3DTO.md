

# TickV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**Date**](Date.md) |  |  [optional]
**recvTime** | [**Date**](Date.md) |  |  [optional]
**blockNumber** | **Long** | Number of block in which entity was recorded. |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | Identifier, format: &lt;pool address&gt;#&lt;tick index&gt; |  [optional]
**poolAddress** | **String** | Pool address. |  [optional]
**tickIdx** | [**BigInteger**](BigInteger.md) |  |  [optional]
**pool** | **String** | Pool address. |  [optional]
**liquidityGross** | [**BigInteger**](BigInteger.md) |  |  [optional]
**liquidityNet** | [**BigInteger**](BigInteger.md) |  |  [optional]
**price0** | **String** | Calculated price of token0 of tick within this pool - constant. |  [optional]
**price1** | **String** | Calculated price of token1 of tick within this pool - constant. |  [optional]
**volumeToken0** | **String** | Lifetime volume of token0 with this tick in range. |  [optional]
**volumeToken1** | **String** | Lifetime volume of token1 with this tick in range. |  [optional]
**volumeUsd** | **String** | Lifetime volume in derived USD with this tick in range. |  [optional]
**untrackedVolumeUsd** | **String** | Lifetime volume in untracked USD with this tick in range. |  [optional]
**feesUsd** | **String** | Fees in USD. |  [optional]
**collectedFeesToken0** | **String** | All time collected fees in token0. |  [optional]
**collectedFeesToken1** | **String** | All time collected fees in token1. |  [optional]
**collectedFeesUsd** | **String** | All time collected fees in USD. |  [optional]
**createdAtTimestamp** | [**Date**](Date.md) | Created time. |  [optional]
**liquidityProviderCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**feeGrowthOutside0x128** | [**BigInteger**](BigInteger.md) |  |  [optional]
**feeGrowthOutside1x128** | [**BigInteger**](BigInteger.md) |  |  [optional]




