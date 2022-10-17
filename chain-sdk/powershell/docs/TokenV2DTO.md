# TokenV2DTO
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
**TradeVolume** | **String** |  | [optional] 
**TradeVolumeUsd** | **String** |  | [optional] 
**UntrackedVolumeUsd** | **String** |  | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalLiquidity** | **String** |  | [optional] 
**DerivedEth** | **String** |  | [optional] 
**TokenSymbol** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TokenV2DTO = Initialize-PSOpenAPIToolsTokenV2DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Symbol null `
 -Name null `
 -Decimals null `
 -TotalSupply null `
 -TradeVolume null `
 -TradeVolumeUsd null `
 -UntrackedVolumeUsd null `
 -TxCount null `
 -TotalLiquidity null `
 -DerivedEth null `
 -TokenSymbol null
```

- Convert the resource to JSON
```powershell
$TokenV2DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

