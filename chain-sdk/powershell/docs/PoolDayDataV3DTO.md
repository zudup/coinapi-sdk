# PoolDayDataV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Date** | **Int32** |  | [optional] 
**Pool** | **String** |  | [optional] 
**Liquidity** | **String** |  | [optional] 
**SqrtPrice** | **String** |  | [optional] 
**Token0Price** | **String** |  | [optional] 
**Token1Price** | **String** |  | [optional] 
**Tick** | **String** |  | [optional] 
**FeeGrowthGlobal0x128** | **String** |  | [optional] 
**FeeGrowthGlobal1x128** | **String** |  | [optional] 
**TvlUsd** | **String** |  | [optional] 
**VolumeToken0** | **String** |  | [optional] 
**VolumeToken1** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**TxCount** | **String** |  | [optional] 
**Open** | **String** |  | [optional] 
**High** | **String** |  | [optional] 
**Low** | **String** |  | [optional] 
**Close** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoolDayDataV3DTO = Initialize-PSOpenAPIToolsPoolDayDataV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -Pool null `
 -Liquidity null `
 -SqrtPrice null `
 -Token0Price null `
 -Token1Price null `
 -Tick null `
 -FeeGrowthGlobal0x128 null `
 -FeeGrowthGlobal1x128 null `
 -TvlUsd null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -FeesUsd null `
 -TxCount null `
 -Open null `
 -High null `
 -Low null `
 -Close null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$PoolDayDataV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

