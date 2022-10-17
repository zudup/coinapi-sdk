# PositionSnapshotV3DTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**Owner** | **String** |  | [optional] 
**Pool** | **String** |  | [optional] 
**Position** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
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
$PositionSnapshotV3DTO = Initialize-PSOpenAPIToolsPositionSnapshotV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Owner null `
 -Pool null `
 -Position null `
 -Timestamp null `
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
$PositionSnapshotV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

