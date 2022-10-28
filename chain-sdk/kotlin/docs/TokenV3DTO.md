
# TokenV3DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** |  |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | token address |  [optional]
**symbol** | **kotlin.String** | token symbol |  [optional]
**name** | **kotlin.String** | token name |  [optional]
**decimals** | **kotlin.Int** | token decimals |  [optional]
**totalSupply** | [**BigInteger**](BigInteger.md) |  |  [optional]
**volume** | **kotlin.String** | volume in token units |  [optional]
**volumeUsd** | **kotlin.String** | volume in derived USD |  [optional]
**untrackedVolumeUsd** | **kotlin.String** | volume in USD even on pools with less reliable USD values |  [optional]
**feesUsd** | **kotlin.String** | fees in USD |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**poolCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**totalValueLocked** | **kotlin.String** | liquidity across all pools in token units |  [optional]
**totalValueLockedUsd** | **kotlin.String** | liquidity across all pools in derived USD |  [optional]
**totalValueLockedUsdUntracked** | **kotlin.String** | TVL derived in USD untracked |  [optional]
**derivedEth** | **kotlin.String** | derived price in ETH |  [optional]
**whitelistPools** | **kotlin.collections.List&lt;kotlin.String&gt;** | pools token is in that are white listed for USD pricing |  [optional]
**tokenSymbol** | **kotlin.String** |  |  [optional] [readonly]



