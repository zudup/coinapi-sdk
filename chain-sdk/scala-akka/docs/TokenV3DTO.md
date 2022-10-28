

# TokenV3DTO

Stores aggregated information for a specific token across all pairs that token is included in.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **OffsetDateTime** |  |  [optional]
**recvTime** | **OffsetDateTime** |  |  [optional]
**blockNumber** | **Long** |  |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | token address |  [optional]
**symbol** | **String** | token symbol |  [optional]
**name** | **String** | token name |  [optional]
**decimals** | **Int** | token decimals |  [optional]
**totalSupply** | [**BigInteger**](BigInteger.md) |  |  [optional]
**volume** | **String** | volume in token units |  [optional]
**volumeUsd** | **String** | volume in derived USD |  [optional]
**untrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values |  [optional]
**feesUsd** | **String** | fees in USD |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**poolCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**totalValueLocked** | **String** | liquidity across all pools in token units |  [optional]
**totalValueLockedUsd** | **String** | liquidity across all pools in derived USD |  [optional]
**totalValueLockedUsdUntracked** | **String** | TVL derived in USD untracked |  [optional]
**derivedEth** | **String** | derived price in ETH |  [optional]
**whitelistPools** | **Seq&lt;String&gt;** | pools token is in that are white listed for USD pricing |  [optional]
**tokenSymbol** | **String** |  |  [optional] [readonly]



