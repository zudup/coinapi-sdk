# UniswapV3BundleV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** |  | [optional] 
**EthPriceUsd** | **String** | Price of ETH in usd. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV3BundleV3DTO = Initialize-PSOpenAPIToolsUniswapV3BundleV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -EthPriceUsd null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV3BundleV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

