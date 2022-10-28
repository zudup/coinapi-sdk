# TokenV3DTO
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
**Volume** | **String** | volume in token units | [optional] 
**VolumeUsd** | **String** | volume in derived USD | [optional] 
**UntrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**FeesUsd** | **String** | fees in USD | [optional] 
**TxCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**PoolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**TotalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**TotalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**TotalValueLockedUsdUntracked** | **String** | TVL derived in USD untracked | [optional] 
**DerivedEth** | **String** | derived price in ETH | [optional] 
**WhitelistPools** | **String[]** | pools token is in that are white listed for USD pricing | [optional] 
**TokenSymbol** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TokenV3DTO = Initialize-PSOpenAPIToolsTokenV3DTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -Symbol null `
 -Name null `
 -Decimals null `
 -TotalSupply null `
 -Volume null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -FeesUsd null `
 -TxCount null `
 -PoolCount null `
 -TotalValueLocked null `
 -TotalValueLockedUsd null `
 -TotalValueLockedUsdUntracked null `
 -DerivedEth null `
 -WhitelistPools null `
 -TokenSymbol null
```

- Convert the resource to JSON
```powershell
$TokenV3DTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

