# TickDayDataV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Date** | **Int32** |  | [optional] 
**Pool** | **String** |  | [optional] 
**Tick** | **String** |  | [optional] 
**LiquidityGross** | **String** |  | [optional] 
**LiquidityNet** | **String** |  | [optional] 
**VolumeToken0** | **String** |  | [optional] 
**VolumeToken1** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**FeeGrowthOutside0x128** | **String** |  | [optional] 
**FeeGrowthOutside1x128** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TickDayDataV3DTO = Initialize-PSOpenAPIToolsTickDayDataV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -Pool null `
 -Tick null `
 -LiquidityGross null `
 -LiquidityNet null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -FeesUsd null `
 -FeeGrowthOutside0x128 null `
 -FeeGrowthOutside1x128 null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$TickDayDataV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

