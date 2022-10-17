# SwapV2DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Transaction** | **String** |  | [optional] 
**Timestamp** | **System.DateTime** |  | [optional] 
**Pair** | **String** |  | [optional] 
**VarSender** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Amount0In** | **String** |  | [optional] 
**Amount1In** | **String** |  | [optional] 
**Amount0Out** | **String** |  | [optional] 
**Amount1Out** | **String** |  | [optional] 
**To** | **String** |  | [optional] 
**LogIndex** | [**BigInteger**](BigInteger.md) |  | [optional] 
**AmountUsd** | **String** |  | [optional] 
**EvaluatedPrice** | **Double** |  | [optional] [readonly] 
**EvaluatedAmount** | **Double** |  | [optional] [readonly] 
**EvaluatedAggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**TransactionId** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SwapV2DTO = Initialize-PSOpenAPIToolsSwapV2DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pair null `
 -VarSender null `
 -VarFrom null `
 -Amount0In null `
 -Amount1In null `
 -Amount0Out null `
 -Amount1Out null `
 -To null `
 -LogIndex null `
 -AmountUsd null `
 -EvaluatedPrice null `
 -EvaluatedAmount null `
 -EvaluatedAggressor null `
 -PoolId null `
 -TransactionId null
```

- Convert the resource to JSON
```powershell
$SwapV2DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

