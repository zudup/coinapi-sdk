# PSOpenAPITools.PSOpenAPITools/Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CurveGetExchangesCurrent**](SushiswapApi.md#Invoke-CurveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**Invoke-DexGetTradesCurrent**](SushiswapApi.md#Invoke-DexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**Invoke-SushiswapGetBundlesHistorical**](SushiswapApi.md#Invoke-SushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical-manual | Bundles (historical)
[**Invoke-SushiswapGetBurnsHistorical**](SushiswapApi.md#Invoke-SushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical-manual | Burns (historical)
[**Invoke-SushiswapGetDayDataHistorical**](SushiswapApi.md#Invoke-SushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical-manual | DayData (historical)
[**Invoke-SushiswapGetFactoryHistorical**](SushiswapApi.md#Invoke-SushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical-manual | Factory (historical)
[**Invoke-SushiswapGetHourDataHistorical**](SushiswapApi.md#Invoke-SushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical-manual | HourData (historical)
[**Invoke-SushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#Invoke-SushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical)
[**Invoke-SushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#Invoke-SushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical)
[**Invoke-SushiswapGetMintsHistorical**](SushiswapApi.md#Invoke-SushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical-manual | Mints (historical)
[**Invoke-SushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#Invoke-SushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical)
[**Invoke-SushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#Invoke-SushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical)
[**Invoke-SushiswapGetPoolsCurrent**](SushiswapApi.md#Invoke-SushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**Invoke-SushiswapGetPoolsHistorical**](SushiswapApi.md#Invoke-SushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥
[**Invoke-SushiswapGetSwapsCurrent**](SushiswapApi.md#Invoke-SushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**Invoke-SushiswapGetSwapsHistorical**](SushiswapApi.md#Invoke-SushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥
[**Invoke-SushiswapGetTokensDayDataHistorical**](SushiswapApi.md#Invoke-SushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical)
[**Invoke-SushiswapGetTokensCurrent**](SushiswapApi.md#Invoke-SushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**Invoke-SushiswapGetTokensHistorical**](SushiswapApi.md#Invoke-SushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥
[**Invoke-SushiswapGetTransactionsHistorical**](SushiswapApi.md#Invoke-SushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical-manual | Transactions (historical)
[**Invoke-SushiswapGetUsersHistorical**](SushiswapApi.md#Invoke-SushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical-manual | Users (historical)


<a name="Invoke-CurveGetExchangesCurrent"></a>
# **Invoke-CurveGetExchangesCurrent**
> CurveExchangeDTO[] Invoke-CurveGetExchangesCurrent<br>

Exchanges (current) 🔥

Gets exchanges.

### Example
```powershell

# Exchanges (current) 🔥
try {
    $Result = Invoke-CurveGetExchangesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-CurveGetExchangesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurveExchangeDTO[]**](CurveExchangeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DexGetTradesCurrent"></a>
# **Invoke-DexGetTradesCurrent**
> DexTradeDTO[] Invoke-DexGetTradesCurrent<br>

Trades (current) 🔥

Gets trades.

### Example
```powershell

# Trades (current) 🔥
try {
    $Result = Invoke-DexGetTradesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-DexGetTradesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DexTradeDTO[]**](DexTradeDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetBundlesHistorical"></a>
# **Invoke-SushiswapGetBundlesHistorical**
> SushiswapBundleDTO[] Invoke-SushiswapGetBundlesHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Bundles (historical)

Gets bundles.

### Example
```powershell
$StartBlock = 789 # Int64 | AAAAAAAAAA (optional)
$EndBlock = 789 # Int64 | BBBBBBBBBBBB (optional)
$StartDate = (Get-Date) # System.DateTime | CCCCCCCCC (optional)
$EndDate = (Get-Date) # System.DateTime | DDDDDDDDDDD (optional)

# Bundles (historical)
try {
    $Result = Invoke-SushiswapGetBundlesHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetBundlesHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| AAAAAAAAAA | [optional] 
 **EndBlock** | **Int64**| BBBBBBBBBBBB | [optional] 
 **StartDate** | **System.DateTime**| CCCCCCCCC | [optional] 
 **EndDate** | **System.DateTime**| DDDDDDDDDDD | [optional] 

### Return type

[**SushiswapBundleDTO[]**](SushiswapBundleDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetBurnsHistorical"></a>
# **Invoke-SushiswapGetBurnsHistorical**
> SushiswapBurnDTO[] Invoke-SushiswapGetBurnsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Burns (historical)

Gets burns.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# Burns (historical)
try {
    $Result = Invoke-SushiswapGetBurnsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetBurnsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapBurnDTO[]**](SushiswapBurnDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetDayDataHistorical"></a>
# **Invoke-SushiswapGetDayDataHistorical**
> SushiswapDayDataDTO[] Invoke-SushiswapGetDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

DayData (historical)

Gets day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# DayData (historical)
try {
    $Result = Invoke-SushiswapGetDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**SushiswapDayDataDTO[]**](SushiswapDayDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetFactoryHistorical"></a>
# **Invoke-SushiswapGetFactoryHistorical**
> SushiswapFactoryDTO[] Invoke-SushiswapGetFactoryHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Factory (historical)

Gets factory.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# Factory (historical)
try {
    $Result = Invoke-SushiswapGetFactoryHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetFactoryHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**SushiswapFactoryDTO[]**](SushiswapFactoryDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetHourDataHistorical"></a>
# **Invoke-SushiswapGetHourDataHistorical**
> SushiswapHourDataDTO[] Invoke-SushiswapGetHourDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

HourData (historical)

Gets hour data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# HourData (historical)
try {
    $Result = Invoke-SushiswapGetHourDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetHourDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**SushiswapHourDataDTO[]**](SushiswapHourDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetLiquidityPositionSnapshotHistorical"></a>
# **Invoke-SushiswapGetLiquidityPositionSnapshotHistorical**
> SushiswapLiquidityPositionSnapshotDTO[] Invoke-SushiswapGetLiquidityPositionSnapshotHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

LiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# LiquidityPositionSnapshot (historical)
try {
    $Result = Invoke-SushiswapGetLiquidityPositionSnapshotHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetLiquidityPositionSnapshotHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapLiquidityPositionSnapshotDTO[]**](SushiswapLiquidityPositionSnapshotDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetLiquidityPositionHistorical"></a>
# **Invoke-SushiswapGetLiquidityPositionHistorical**
> SushiswapLiquidityPositionDTO[] Invoke-SushiswapGetLiquidityPositionHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

LiquidityPosition (historical)

Gets liquidity position.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# LiquidityPosition (historical)
try {
    $Result = Invoke-SushiswapGetLiquidityPositionHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetLiquidityPositionHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapLiquidityPositionDTO[]**](SushiswapLiquidityPositionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetMintsHistorical"></a>
# **Invoke-SushiswapGetMintsHistorical**
> SushiswapMintDTO[] Invoke-SushiswapGetMintsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Mints (historical)

Gets mints.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# Mints (historical)
try {
    $Result = Invoke-SushiswapGetMintsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetMintsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapMintDTO[]**](SushiswapMintDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetPoolsDayDataHistorical"></a>
# **Invoke-SushiswapGetPoolsDayDataHistorical**
> SushiswapPairDayDataDTO[] Invoke-SushiswapGetPoolsDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

PoolsDayData (historical)

Gets pools day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# PoolsDayData (historical)
try {
    $Result = Invoke-SushiswapGetPoolsDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetPoolsDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapPairDayDataDTO[]**](SushiswapPairDayDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetPoolsHourDataHistorical"></a>
# **Invoke-SushiswapGetPoolsHourDataHistorical**
> SushiswapPairHourDataDTO[] Invoke-SushiswapGetPoolsHourDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

PoolsHourData (historical)

Gets pools tracked each our.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# PoolsHourData (historical)
try {
    $Result = Invoke-SushiswapGetPoolsHourDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetPoolsHourDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

[**SushiswapPairHourDataDTO[]**](SushiswapPairHourDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetPoolsCurrent"></a>
# **Invoke-SushiswapGetPoolsCurrent**
> SushiswapPairDTO[] Invoke-SushiswapGetPoolsCurrent<br>

Pools (current) 🔥

Gets pools.

### Example
```powershell

# Pools (current) 🔥
try {
    $Result = Invoke-SushiswapGetPoolsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetPoolsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SushiswapPairDTO[]**](SushiswapPairDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetPoolsHistorical"></a>
# **Invoke-SushiswapGetPoolsHistorical**
> SushiswapPairDTO[] Invoke-SushiswapGetPoolsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Pools (historical) 🔥

Gets list of pools for given filters.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe (optional)
$PoolId = "MyPoolId" # String | The pool address. (optional)

# Pools (historical) 🔥
try {
    $Result = Invoke-SushiswapGetPoolsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetPoolsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe | [optional] 
 **PoolId** | **String**| The pool address. | [optional] 

### Return type

[**SushiswapPairDTO[]**](SushiswapPairDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetSwapsCurrent"></a>
# **Invoke-SushiswapGetSwapsCurrent**
> SushiswapSwapDTO[] Invoke-SushiswapGetSwapsCurrent<br>

Swaps (current) 🔥

Gets swaps.

### Example
```powershell

# Swaps (current) 🔥
try {
    $Result = Invoke-SushiswapGetSwapsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetSwapsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SushiswapSwapDTO[]**](SushiswapSwapDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetSwapsHistorical"></a>
# **Invoke-SushiswapGetSwapsHistorical**
> SushiswapSwapDTO[] Invoke-SushiswapGetSwapsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Swaps (historical) 🔥

Gets list of swaps for given filters.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe (optional)
$PoolId = "MyPoolId" # String | The pool address. (optional)

# Swaps (historical) 🔥
try {
    $Result = Invoke-SushiswapGetSwapsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetSwapsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe | [optional] 
 **PoolId** | **String**| The pool address. | [optional] 

### Return type

[**SushiswapSwapDTO[]**](SushiswapSwapDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetTokensDayDataHistorical"></a>
# **Invoke-SushiswapGetTokensDayDataHistorical**
> SushiswapTokenDayDataDTO[] Invoke-SushiswapGetTokensDayDataHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

TokensDayData (historical)

Gets tokens day data.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

# TokensDayData (historical)
try {
    $Result = Invoke-SushiswapGetTokensDayDataHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetTokensDayDataHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **TokenId** | **String**|  | [optional] 

### Return type

[**SushiswapTokenDayDataDTO[]**](SushiswapTokenDayDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetTokensCurrent"></a>
# **Invoke-SushiswapGetTokensCurrent**
> SushiswapTokenDTO[] Invoke-SushiswapGetTokensCurrent<br>

Tokens (current) 🔥

Gets tokens.

### Example
```powershell

# Tokens (current) 🔥
try {
    $Result = Invoke-SushiswapGetTokensCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SushiswapTokenDTO[]**](SushiswapTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetTokensHistorical"></a>
# **Invoke-SushiswapGetTokensHistorical**
> SushiswapTokenDTO[] Invoke-SushiswapGetTokensHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Tokens (historical) 🔥

Gets list of tokens for given filters.

### Example
```powershell
$StartBlock = 789 # Int64 | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional)
$EndBlock = 789 # Int64 | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional)
$StartDate = (Get-Date) # System.DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional)
$EndDate = (Get-Date) # System.DateTime | The end date of timeframe (optional)
$TokenId = "MyTokenId" # String | The token address. (optional)

# Tokens (historical) 🔥
try {
    $Result = Invoke-SushiswapGetTokensHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetTokensHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **EndBlock** | **Int64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **StartDate** | **System.DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **EndDate** | **System.DateTime**| The end date of timeframe | [optional] 
 **TokenId** | **String**| The token address. | [optional] 

### Return type

[**SushiswapTokenDTO[]**](SushiswapTokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetTransactionsHistorical"></a>
# **Invoke-SushiswapGetTransactionsHistorical**
> SushiswapTransactionDTO[] Invoke-SushiswapGetTransactionsHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Transactions (historical)

Gets transactions.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# Transactions (historical)
try {
    $Result = Invoke-SushiswapGetTransactionsHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetTransactionsHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**SushiswapTransactionDTO[]**](SushiswapTransactionDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SushiswapGetUsersHistorical"></a>
# **Invoke-SushiswapGetUsersHistorical**
> SushiswapUserDTO[] Invoke-SushiswapGetUsersHistorical<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>

Users (historical)

Gets users.

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

# Users (historical)
try {
    $Result = Invoke-SushiswapGetUsersHistorical -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-SushiswapGetUsersHistorical: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 

### Return type

[**SushiswapUserDTO[]**](SushiswapUserDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

