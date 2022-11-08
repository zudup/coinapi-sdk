# UniswapV2LiquidityPositionV2DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | User address and pair address concatenated with a dash. | [optional] 
**User** | **String** | Reference to user. | [optional] 
**Pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] 
**LiquidityTokenBalance** | **String** | Amount of LP tokens minted for this position. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV2LiquidityPositionV2DTO = Initialize-PSOpenAPIToolsUniswapV2LiquidityPositionV2DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -User null `
 -Pair null `
 -LiquidityTokenBalance null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV2LiquidityPositionV2DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

