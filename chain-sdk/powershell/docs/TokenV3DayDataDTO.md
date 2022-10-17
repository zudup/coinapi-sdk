# TokenV3DayDataDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Date** | **Int32** |  | [optional] 
**Token** | **String** |  | [optional] 
**Volume** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**TotalValueLocked** | **String** |  | [optional] 
**TotalValueLockedUsd** | **String** |  | [optional] 
**PriceUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**Open** | **String** |  | [optional] 
**High** | **String** |  | [optional] 
**Low** | **String** |  | [optional] 
**Close** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TokenV3DayDataDTO = Initialize-PSOpenAPIToolsTokenV3DayDataDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Date null `
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
 -Close null
```

- Convert the resource to JSON
```powershell
$TokenV3DayDataDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

