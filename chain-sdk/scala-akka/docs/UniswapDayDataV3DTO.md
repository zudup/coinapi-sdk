

# UniswapDayDataV3DTO

Data accumulated and condensed into day stats for all of Uniswap

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **OffsetDateTime** |  |  [optional]
**recvTime** | **OffsetDateTime** |  |  [optional]
**blockNumber** | **Long** |  |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | timestamp rounded to current day by dividing by 86400 |  [optional]
**date** | **Int** | timestamp rounded to current day by dividing by 86400 |  [optional]
**volumeEth** | **String** | total volume across all pairs on this day, stored as a derived amount of ETH |  [optional]
**volumeUsd** | **String** | total volume across all pairs on this day, stored as a derived amount of USD |  [optional]
**volumeUsdUntracked** | **String** | total daily volume in Uniswap derived in terms of USD untracked |  [optional]
**feesUsd** | **String** | fees in USD |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**tvlUsd** | **String** | tvl in terms of USD |  [optional]



