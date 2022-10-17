# PositionV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Owner** | **String** |  | [optional] 
**Pool** | **String** |  | [optional] 
**Token0** | **String** |  | [optional] 
**Token1** | **String** |  | [optional] 
**TickLower** | **String** |  | [optional] 
**TickUpper** | **String** |  | [optional] 
**Liquidity** | **String** |  | [optional] 
**DepositedToken0** | **String** |  | [optional] 
**DepositedToken1** | **String** |  | [optional] 
**WithdrawnToken0** | **String** |  | [optional] 
**WithdrawnToken1** | **String** |  | [optional] 
**CollectedFeesToken0** | **String** |  | [optional] 
**CollectedFeesToken1** | **String** |  | [optional] 
**Transaction** | **String** |  | [optional] 
**FeeGrowthInside0LastX128** | **String** |  | [optional] 
**FeeGrowthInside1LastX128** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PositionV3DTO = Initialize-PSOpenAPIToolsPositionV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Owner null `
 -Pool null `
 -Token0 null `
 -Token1 null `
 -TickLower null `
 -TickUpper null `
 -Liquidity null `
 -DepositedToken0 null `
 -DepositedToken1 null `
 -WithdrawnToken0 null `
 -WithdrawnToken1 null `
 -CollectedFeesToken0 null `
 -CollectedFeesToken1 null `
 -Transaction null `
 -FeeGrowthInside0LastX128 null `
 -FeeGrowthInside1LastX128 null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$PositionV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

