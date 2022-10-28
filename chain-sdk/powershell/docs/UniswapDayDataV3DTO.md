# UniswapDayDataV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** | timestamp rounded to current day by dividing by 86400 | [optional] 
**Date** | **Int32** | timestamp rounded to current day by dividing by 86400 | [optional] 
**VolumeEth** | **String** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**VolumeUsd** | **String** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**VolumeUsdUntracked** | **String** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**FeesUsd** | **String** | fees in USD | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TvlUsd** | **String** | tvl in terms of USD | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapDayDataV3DTO = Initialize-PSOpenAPIToolsUniswapDayDataV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Date null `
 -VolumeEth null `
 -VolumeUsd null `
 -VolumeUsdUntracked null `
 -FeesUsd null `
 -TxCount null `
 -TvlUsd null
```

- Convert the resource to JSON
```powershell
$UniswapDayDataV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

