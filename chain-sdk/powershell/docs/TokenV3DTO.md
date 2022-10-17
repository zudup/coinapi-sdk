# TokenV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Symbol** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Decimals** | **Int32** |  | [optional] 
**TotalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Volume** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**FeesUsd** | **String** |  | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**PoolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalValueLocked** | **String** |  | [optional] 
**TotalValueLockedUsd** | **String** |  | [optional] 
**TotalValueLockedUsdUntracked** | **String** |  | [optional] 
**DerivedEth** | **String** |  | [optional] 
**WhitelistPools** | **String[]** |  | [optional] 
**TokenSymbol** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TokenV3DTO = Initialize-PSOpenAPIToolsTokenV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Symbol null `
 -Name null `
 -Decimals null `
 -TotalSupply null `
 -Volume null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -FeesUsd null `
 -TxCount null `
 -PoolCount null `
 -TotalValueLocked null `
 -TotalValueLockedUsd null `
 -TotalValueLockedUsdUntracked null `
 -DerivedEth null `
 -WhitelistPools null `
 -TokenSymbol null
```

- Convert the resource to JSON
```powershell
$TokenV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

