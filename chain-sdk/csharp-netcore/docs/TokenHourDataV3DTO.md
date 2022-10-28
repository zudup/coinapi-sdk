# CoinAPI.EMS.REST.V1.Model.TokenHourDataV3DTO
Token data aggregated across all pairs that include token.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** |  | [optional] 
**Id** | **string** | token address concatendated with date | [optional] 
**PeriodStartUnix** | **int** | unix timestamp for start of hour | [optional] 
**Token** | **string** | pointer to token | [optional] 
**Volume** | **string** | volume in token units | [optional] 
**VolumeUsd** | **string** | volume in derived USD | [optional] 
**UntrackedVolumeUsd** | **string** | volume in USD even on pools with less reliable USD values | [optional] 
**TotalValueLocked** | **string** | liquidity across all pools in token units | [optional] 
**TotalValueLockedUsd** | **string** | liquidity across all pools in derived USD | [optional] 
**PriceUsd** | **string** | price at end of period in USD | [optional] 
**FeesUsd** | **string** | fees in USD | [optional] 
**Open** | **string** | opening price USD | [optional] 
**High** | **string** | high price USD | [optional] 
**Low** | **string** | low price USD | [optional] 
**Close** | **string** | close price USD | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

