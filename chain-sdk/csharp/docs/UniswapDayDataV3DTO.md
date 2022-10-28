
# CoinAPI.EMS.REST.V1.Model.UniswapDayDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** |  | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | timestamp rounded to current day by dividing by 86400 | [optional] 
**Date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**VolumeEth** | **string** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**VolumeUsd** | **string** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**VolumeUsdUntracked** | **string** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**FeesUsd** | **string** | fees in USD | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TvlUsd** | **string** | tvl in terms of USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

