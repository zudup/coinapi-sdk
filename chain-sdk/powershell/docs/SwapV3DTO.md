# SwapV3DTO
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
**Pool** | **String** |  | [optional] 
**Token0** | **String** |  | [optional] 
**Token1** | **String** |  | [optional] 
**VarSender** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Origin** | **String** |  | [optional] 
**Amount0** | **String** |  | [optional] 
**Amount1** | **String** |  | [optional] 
**AmountUsd** | **String** |  | [optional] 
**SqrtPriceX96** | [**BigInteger**](BigInteger.md) |  | [optional] 
**Tick** | [**BigInteger**](BigInteger.md) |  | [optional] 
**LogIndex** | [**BigInteger**](BigInteger.md) |  | [optional] 
**EvaluatedPrice** | **Double** |  | [optional] [readonly] 
**EvaluatedAmount** | **Double** |  | [optional] [readonly] 
**EvaluatedAggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**TransactionId** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SwapV3DTO = Initialize-PSOpenAPIToolsSwapV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pool null `
 -Token0 null `
 -Token1 null `
 -VarSender null `
 -Recipient null `
 -Origin null `
 -Amount0 null `
 -Amount1 null `
 -AmountUsd null `
 -SqrtPriceX96 null `
 -Tick null `
 -LogIndex null `
 -EvaluatedPrice null `
 -EvaluatedAmount null `
 -EvaluatedAggressor null `
 -PoolId null `
 -TransactionId null
```

- Convert the resource to JSON
```powershell
$SwapV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

