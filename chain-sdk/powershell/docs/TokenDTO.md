# TokenDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Factory** | **String** |  | [optional] 
**Symbol** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Decimals** | **String** |  | [optional] 
**TotalSupply** | **String** |  | [optional] 
**Volume** | **String** |  | [optional] 
**VolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**TxCount** | **String** |  | [optional] 
**Liquidity** | **String** |  | [optional] 
**DerivedEth** | **String** |  | [optional] 
**WhitelistPairs** | **String[]** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**TokenSymbol** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TokenDTO = Initialize-PSOpenAPIToolsTokenDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Factory null `
 -Symbol null `
 -Name null `
 -Decimals null `
 -TotalSupply null `
 -Volume null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -TxCount null `
 -Liquidity null `
 -DerivedEth null `
 -WhitelistPairs null `
 -Vid null `
 -TokenSymbol null
```

- Convert the resource to JSON
```powershell
$TokenDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

