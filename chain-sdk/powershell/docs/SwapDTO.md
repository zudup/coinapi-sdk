# SwapDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Transaction** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**Pair** | **String** |  | [optional] 
**VarSender** | **String** |  | [optional] 
**Amount0In** | **String** |  | [optional] 
**Amount1In** | **String** |  | [optional] 
**Amount0Out** | **String** |  | [optional] 
**Amount1Out** | **String** |  | [optional] 
**To** | **String** |  | [optional] 
**LogIndex** | **String** |  | [optional] 
**AmountUsd** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**TransactionId** | **String** |  | [optional] [readonly] 
**EvaluatedPrice** | **Double** |  | [optional] [readonly] 
**EvaluatedAmount** | **Double** |  | [optional] [readonly] 
**EvaluatedAggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SwapDTO = Initialize-PSOpenAPIToolsSwapDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pair null `
 -VarSender null `
 -Amount0In null `
 -Amount1In null `
 -Amount0Out null `
 -Amount1Out null `
 -To null `
 -LogIndex null `
 -AmountUsd null `
 -Vid null `
 -PoolId null `
 -TransactionId null `
 -EvaluatedPrice null `
 -EvaluatedAmount null `
 -EvaluatedAggressor null
```

- Convert the resource to JSON
```powershell
$SwapDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

