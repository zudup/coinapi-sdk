# TickV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**PoolAddress** | **String** |  | [optional] 
**TickIdx** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Pool** | **String** |  | [optional] 
**LiquidityGross** | [**BigInteger**](BigInteger.md) |  | [optional] 
**LiquidityNet** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Price0** | **String** |  | [optional] 
**Price1** | **String** |  | [optional] 
**VolumeToken0** | **String** |  | [optional] 
**VolumeToken1** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**CollectedFeesToken0** | **String** |  | [optional] 
**CollectedFeesToken1** | **String** |  | [optional] 
**CollectedFeesUsd** | **String** |  | [optional] 
**CreatedAtTimestamp** | **System.DateTime** |  | [optional] 
**LiquidityProviderCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside0x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthOutside1x128** | [**BigInteger**](BigInteger.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TickV3DTO = Initialize-PSOpenAPIToolsTickV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -PoolAddress null `
 -TickIdx null `
 -Pool null `
 -LiquidityGross null `
 -LiquidityNet null `
 -Price0 null `
 -Price1 null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -FeesUsd null `
 -CollectedFeesToken0 null `
 -CollectedFeesToken1 null `
 -CollectedFeesUsd null `
 -CreatedAtTimestamp null `
 -LiquidityProviderCount null `
 -FeeGrowthOutside0x128 null `
 -FeeGrowthOutside1x128 null
```

- Convert the resource to JSON
```powershell
$TickV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

