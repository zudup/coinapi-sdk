# PairV2DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Token0** | **String** |  | [optional] 
**Token1** | **String** |  | [optional] 
**Reserve0** | **String** |  | [optional] 
**Reserve1** | **String** |  | [optional] 
**TotalSupply** | **String** |  | [optional] 
**ReserveEth** | **String** |  | [optional] 
**ReserveUsd** | **String** |  | [optional] 
**TrackedReserveEth** | **String** |  | [optional] 
**Token0Price** | **String** |  | [optional] 
**Token1Price** | **String** |  | [optional] 
**VolumeToken0** | **String** |  | [optional] 
**VolumeToken1** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**CreatedAtTimestamp** | **System.DateTime** |  | [optional] 
**LiquidityProviderCount** | **String** |  | [optional] 
**EvaluatedAsk** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PairV2DTO = Initialize-PSOpenAPIToolsPairV2DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Token0 null `
 -Token1 null `
 -Reserve0 null `
 -Reserve1 null `
 -TotalSupply null `
 -ReserveEth null `
 -ReserveUsd null `
 -TrackedReserveEth null `
 -Token0Price null `
 -Token1Price null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -TxCount null `
 -CreatedAtTimestamp null `
 -LiquidityProviderCount null `
 -EvaluatedAsk null
```

- Convert the resource to JSON
```powershell
$PairV2DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

