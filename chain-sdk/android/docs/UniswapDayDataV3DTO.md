

# UniswapDayDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**Date**](Date.md) |  |  [optional]
**recvTime** | [**Date**](Date.md) |  |  [optional]
**blockNumber** | **Long** |  |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | timestamp rounded to current day by dividing by 86400 |  [optional]
**date** | **Integer** | timestamp rounded to current day by dividing by 86400 |  [optional]
**volumeEth** | **String** | total volume across all pairs on this day, stored as a derived amount of ETH |  [optional]
**volumeUsd** | **String** | total volume across all pairs on this day, stored as a derived amount of USD |  [optional]
**volumeUsdUntracked** | **String** | total daily volume in Uniswap derived in terms of USD untracked |  [optional]
**feesUsd** | **String** | fees in USD |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**tvlUsd** | **String** | tvl in terms of USD |  [optional]




