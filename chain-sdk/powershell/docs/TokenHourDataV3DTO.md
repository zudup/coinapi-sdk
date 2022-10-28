# TokenHourDataV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** | token address concatendated with date | [optional] 
**PeriodStartUnix** | **Int32** | unix timestamp for start of hour | [optional] 
**Token** | **String** | pointer to token | [optional] 
**Volume** | **String** | volume in token units | [optional] 
**VolumeUsd** | **String** | volume in derived USD | [optional] 
**UntrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**TotalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**TotalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**PriceUsd** | **String** | price at end of period in USD | [optional] 
**FeesUsd** | **String** | fees in USD | [optional] 
**Open** | **String** | opening price USD | [optional] 
**High** | **String** | high price USD | [optional] 
**Low** | **String** | low price USD | [optional] 
**Close** | **String** | close price USD | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TokenHourDataV3DTO = Initialize-PSOpenAPIToolsTokenHourDataV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -PeriodStartUnix null `
 -Token null `
 -Volume null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -TotalValueLocked null `
 -TotalValueLockedUsd null `
 -PriceUsd null `
 -FeesUsd null `
 -Open null `
 -High null `
 -Low null `
 -Close null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$TokenHourDataV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

