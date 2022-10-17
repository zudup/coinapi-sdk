# PoolV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**CreatedAtTimestamp** | **System.DateTime** |  | [optional] 
**Token0** | **String** |  | [optional] 
**Token1** | **String** |  | [optional] 
**FeeTier** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Liquidity** | [**BigInteger**](BigInteger.md) |  | [optional] 
**SqrtPrice** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthGlobal0x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**FeeGrowthGlobal1x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Token0Price** | **String** |  | [optional] 
**Token1Price** | **String** |  | [optional] 
**Tick** | [**BigInteger**](BigInteger.md) |  | [optional] 
**ObservationIndex** | [**BigInteger**](BigInteger.md) |  | [optional] 
**VolumeToken0** | **String** |  | [optional] 
**VolumeToken1** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**CollectedFeesToken0** | **String** |  | [optional] 
**CollectedFeesToken1** | **String** |  | [optional] 
**CollectedFeesUsd** | **String** |  | [optional] 
**TotalValueLockedToken0** | **String** |  | [optional] 
**TotalValueLockedToken1** | **String** |  | [optional] 
**TotalValueLockedEth** | **String** |  | [optional] 
**TotalValueLockedUsd** | **String** |  | [optional] 
**TotalValueLockedUsdUntracked** | **String** |  | [optional] 
**LiquidityProviderCount** | **String** |  | [optional] 
**EvaluatedAsk** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PoolV3DTO = Initialize-PSOpenAPIToolsPoolV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -CreatedAtTimestamp null `
 -Token0 null `
 -Token1 null `
 -FeeTier null `
 -Liquidity null `
 -SqrtPrice null `
 -FeeGrowthGlobal0x128 null `
 -FeeGrowthGlobal1x128 null `
 -Token0Price null `
 -Token1Price null `
 -Tick null `
 -ObservationIndex null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -FeesUsd null `
 -TxCount null `
 -CollectedFeesToken0 null `
 -CollectedFeesToken1 null `
 -CollectedFeesUsd null `
 -TotalValueLockedToken0 null `
 -TotalValueLockedToken1 null `
 -TotalValueLockedEth null `
 -TotalValueLockedUsd null `
 -TotalValueLockedUsdUntracked null `
 -LiquidityProviderCount null `
 -EvaluatedAsk null
```

- Convert the resource to JSON
```powershell
$PoolV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

