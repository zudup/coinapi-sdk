# UniswapDayDataV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Date** | **Int32** |  | [optional] 
**VolumeEth** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**VolumeUsdUntracked** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TvlUsd** | **String** |  | [optional] 

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

