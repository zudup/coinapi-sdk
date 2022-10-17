# PairDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Factory** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
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
**TxCount** | **String** |  | [optional] 
**LiquidityProviderCount** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**Block** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**EvaluatedAsk** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PairDTO = Initialize-PSOpenAPIToolsPairDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Factory null `
 -Name null `
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
 -LiquidityProviderCount null `
 -Timestamp null `
 -Block null `
 -Vid null `
 -EvaluatedAsk null
```

- Convert the resource to JSON
```powershell
$PairDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

