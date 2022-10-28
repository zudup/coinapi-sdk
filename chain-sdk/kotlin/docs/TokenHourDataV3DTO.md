
# TokenHourDataV3DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | token address concatendated with date |  [optional]
**periodStartUnix** | **kotlin.Int** | unix timestamp for start of hour |  [optional]
**token** | **kotlin.String** | pointer to token |  [optional]
**volume** | **kotlin.String** | volume in token units |  [optional]
**volumeUsd** | **kotlin.String** | volume in derived USD |  [optional]
**untrackedVolumeUsd** | **kotlin.String** | volume in USD even on pools with less reliable USD values |  [optional]
**totalValueLocked** | **kotlin.String** | liquidity across all pools in token units |  [optional]
**totalValueLockedUsd** | **kotlin.String** | liquidity across all pools in derived USD |  [optional]
**priceUsd** | **kotlin.String** | price at end of period in USD |  [optional]
**feesUsd** | **kotlin.String** | fees in USD |  [optional]
**&#x60;open&#x60;** | **kotlin.String** | opening price USD |  [optional]
**high** | **kotlin.String** | high price USD |  [optional]
**low** | **kotlin.String** | low price USD |  [optional]
**close** | **kotlin.String** | close price USD |  [optional]
**vid** | **kotlin.Long** |  |  [optional]



