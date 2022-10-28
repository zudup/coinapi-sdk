# TokenV2DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** | token address | [optional] 
**Symbol** | **String** | token symbol | [optional] 
**Name** | **String** | token name | [optional] 
**Decimals** | **Int32** | token decimals | [optional] 
**TotalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TradeVolume** | **String** | amount of token traded all time across all pairs | [optional] 
**TradeVolumeUsd** | **String** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) | [optional] 
**UntrackedVolumeUsd** | **String** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalLiquidity** | **String** | total amount of token provided as liquidity across all pairs | [optional] 
**DerivedEth** | **String** | ETH per token | [optional] 
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

