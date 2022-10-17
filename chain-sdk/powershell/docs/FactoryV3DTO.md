# FactoryV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**PoolCount** | **String** |  | [optional] 
**TxCount** | **String** |  | [optional] 
**TotalVolumeUsd** | **String** |  | [optional] 
**TotalVolumeEth** | **String** |  | [optional] 
**TotalFeesUsd** | **String** |  | [optional] 
**TotalFeesEth** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**TotalValueLockedUsd** | **String** |  | [optional] 
**TotalValueLockedEth** | **String** |  | [optional] 
**TotalValueLockedUsdUntracked** | **String** |  | [optional] 
**TotalValueLockedEthUntracked** | **String** |  | [optional] 
**Owner** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FactoryV3DTO = Initialize-PSOpenAPIToolsFactoryV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -PoolCount null `
 -TxCount null `
 -TotalVolumeUsd null `
 -TotalVolumeEth null `
 -TotalFeesUsd null `
 -TotalFeesEth null `
 -UntrackedVolumeUsd null `
 -TotalValueLockedUsd null `
 -TotalValueLockedEth null `
 -TotalValueLockedUsdUntracked null `
 -TotalValueLockedEthUntracked null `
 -Owner null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$FactoryV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

