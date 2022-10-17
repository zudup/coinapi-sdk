# MintV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Transaction** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**Pool** | **String** |  | [optional] 
**Token0** | **String** |  | [optional] 
**Token1** | **String** |  | [optional] 
**Owner** | **String** |  | [optional] 
**VarSender** | **String** |  | [optional] 
**Origin** | **String** |  | [optional] 
**Amount** | **String** |  | [optional] 
**Amount0** | **String** |  | [optional] 
**Amount1** | **String** |  | [optional] 
**AmountUsd** | **String** |  | [optional] 
**TickLower** | **String** |  | [optional] 
**TickUpper** | **String** |  | [optional] 
**LogIndex** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MintV3DTO = Initialize-PSOpenAPIToolsMintV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Transaction null `
 -Timestamp null `
 -Pool null `
 -Token0 null `
 -Token1 null `
 -Owner null `
 -VarSender null `
 -Origin null `
 -Amount null `
 -Amount0 null `
 -Amount1 null `
 -AmountUsd null `
 -TickLower null `
 -TickUpper null `
 -LogIndex null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$MintV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

