
# UniswapDayDataV3DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** |  |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | timestamp rounded to current day by dividing by 86400 |  [optional]
**date** | **kotlin.Int** | timestamp rounded to current day by dividing by 86400 |  [optional]
**volumeEth** | **kotlin.String** | total volume across all pairs on this day, stored as a derived amount of ETH |  [optional]
**volumeUsd** | **kotlin.String** | total volume across all pairs on this day, stored as a derived amount of USD |  [optional]
**volumeUsdUntracked** | **kotlin.String** | total daily volume in Uniswap derived in terms of USD untracked |  [optional]
**feesUsd** | **kotlin.String** | fees in USD |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**tvlUsd** | **kotlin.String** | tvl in terms of USD |  [optional]



