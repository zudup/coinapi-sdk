# PSOpenAPITools.PSOpenAPITools/Api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-UniswapV3GetBundlesCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**Invoke-UniswapV3GetBurnsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**Invoke-UniswapV3GetDayDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**Invoke-UniswapV3GetFactoryCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**Invoke-UniswapV3GetMintsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**Invoke-UniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**Invoke-UniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**Invoke-UniswapV3GetPoolsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**Invoke-UniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**Invoke-UniswapV3GetPositionsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**Invoke-UniswapV3GetSwapsCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**Invoke-UniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**Invoke-UniswapV3GetTicksCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**Invoke-UniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**Invoke-UniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
[**Invoke-UniswapV3GetTokensCurrent**](UniswapV3Api.md#Invoke-UniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥


<a name="Invoke-UniswapV3GetBundlesCurrent"></a>
# **Invoke-UniswapV3GetBundlesCurrent**
> UniswapV3BundleV3DTO[] Invoke-UniswapV3GetBundlesCurrent<br>

Bundles (current)

Gets bundles.

### Example
```powershell

# Bundles (current)
try {
    $Result = Invoke-UniswapV3GetBundlesCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetBundlesCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV3BundleV3DTO[]**](UniswapV3BundleV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetBurnsCurrent"></a>
# **Invoke-UniswapV3GetBurnsCurrent**
> UniswapV3BurnV3DTO[] Invoke-UniswapV3GetBurnsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Burns (current)

Gets burns.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Burns (current)
try {
    $Result = Invoke-UniswapV3GetBurnsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetBurnsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3BurnV3DTO[]**](UniswapV3BurnV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetDayDataCurrent"></a>
# **Invoke-UniswapV3GetDayDataCurrent**
> UniswapV3UniswapDayDataV3DTO[] Invoke-UniswapV3GetDayDataCurrent<br>

DayData (current)

Gets uniswapv3 day data.

### Example
```powershell

# DayData (current)
try {
    $Result = Invoke-UniswapV3GetDayDataCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetDayDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV3UniswapDayDataV3DTO[]**](UniswapV3UniswapDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetFactoryCurrent"></a>
# **Invoke-UniswapV3GetFactoryCurrent**
> UniswapV3FactoryV3DTO[] Invoke-UniswapV3GetFactoryCurrent<br>

Factory (current)

Gets factory.

### Example
```powershell

# Factory (current)
try {
    $Result = Invoke-UniswapV3GetFactoryCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetFactoryCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV3FactoryV3DTO[]**](UniswapV3FactoryV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetMintsCurrent"></a>
# **Invoke-UniswapV3GetMintsCurrent**
> UniswapV3MintV3DTO[] Invoke-UniswapV3GetMintsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Mints (current)

Gets mints.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Mints (current)
try {
    $Result = Invoke-UniswapV3GetMintsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetMintsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3MintV3DTO[]**](UniswapV3MintV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetPoolsDayDataCurrent"></a>
# **Invoke-UniswapV3GetPoolsDayDataCurrent**
> UniswapV3PoolDayDataV3DTO[] Invoke-UniswapV3GetPoolsDayDataCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

PoolsDayData (current)

Gets pools day data.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# PoolsDayData (current)
try {
    $Result = Invoke-UniswapV3GetPoolsDayDataCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetPoolsDayDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3PoolDayDataV3DTO[]**](UniswapV3PoolDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetPoolsHourDataCurrent"></a>
# **Invoke-UniswapV3GetPoolsHourDataCurrent**
> UniswapV3PoolHourDataV3DTO[] Invoke-UniswapV3GetPoolsHourDataCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

PoolsHourData (current)

Gets pools hour data.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# PoolsHourData (current)
try {
    $Result = Invoke-UniswapV3GetPoolsHourDataCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetPoolsHourDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3PoolHourDataV3DTO[]**](UniswapV3PoolHourDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetPoolsCurrent"></a>
# **Invoke-UniswapV3GetPoolsCurrent**
> UniswapV3PoolV3DTO[] Invoke-UniswapV3GetPoolsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Pools (current) 🔥

Gets pools.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Pools (current) 🔥
try {
    $Result = Invoke-UniswapV3GetPoolsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetPoolsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3PoolV3DTO[]**](UniswapV3PoolV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetPositionsSnapshotsCurrent"></a>
# **Invoke-UniswapV3GetPositionsSnapshotsCurrent**
> UniswapV3PositionSnapshotV3DTO[] Invoke-UniswapV3GetPositionsSnapshotsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

PositionsSnapshots (current)

Gets positions snapshots.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# PositionsSnapshots (current)
try {
    $Result = Invoke-UniswapV3GetPositionsSnapshotsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetPositionsSnapshotsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3PositionSnapshotV3DTO[]**](UniswapV3PositionSnapshotV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetPositionsCurrent"></a>
# **Invoke-UniswapV3GetPositionsCurrent**
> UniswapV3PositionV3DTO[] Invoke-UniswapV3GetPositionsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Positions (current)

Gets positions.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Positions (current)
try {
    $Result = Invoke-UniswapV3GetPositionsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetPositionsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3PositionV3DTO[]**](UniswapV3PositionV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetSwapsCurrent"></a>
# **Invoke-UniswapV3GetSwapsCurrent**
> UniswapV3SwapV3DTO[] Invoke-UniswapV3GetSwapsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Swaps (current) 🔥

Gets swaps.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Swaps (current) 🔥
try {
    $Result = Invoke-UniswapV3GetSwapsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetSwapsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3SwapV3DTO[]**](UniswapV3SwapV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetTicksDayDataCurrent"></a>
# **Invoke-UniswapV3GetTicksDayDataCurrent**
> UniswapV3TickDayDataV3DTO[] Invoke-UniswapV3GetTicksDayDataCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

TicksDayData (current)

Gets ticks day data.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# TicksDayData (current)
try {
    $Result = Invoke-UniswapV3GetTicksDayDataCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetTicksDayDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3TickDayDataV3DTO[]**](UniswapV3TickDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetTicksCurrent"></a>
# **Invoke-UniswapV3GetTicksCurrent**
> UniswapV3TickV3DTO[] Invoke-UniswapV3GetTicksCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Ticks (current)

Gets ticks.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Ticks (current)
try {
    $Result = Invoke-UniswapV3GetTicksCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetTicksCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV3TickV3DTO[]**](UniswapV3TickV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetTokensDayDataCurrent"></a>
# **Invoke-UniswapV3GetTokensDayDataCurrent**
> UniswapV3TokenV3DayDataDTO[] Invoke-UniswapV3GetTokensDayDataCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

TokensDayData (current)

Gets tokens day data.

### Example
```powershell
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# TokensDayData (current)
try {
    $Result = Invoke-UniswapV3GetTokensDayDataCurrent -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetTokensDayDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**UniswapV3TokenV3DayDataDTO[]**](UniswapV3TokenV3DayDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetTokensHourDataCurrent"></a>
# **Invoke-UniswapV3GetTokensHourDataCurrent**
> UniswapV3TokenHourDataV3DTO[] Invoke-UniswapV3GetTokensHourDataCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

TokensHourData (current)

Gets tokens hour data.

### Example
```powershell
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# TokensHourData (current)
try {
    $Result = Invoke-UniswapV3GetTokensHourDataCurrent -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetTokensHourDataCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**UniswapV3TokenHourDataV3DTO[]**](UniswapV3TokenHourDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV3GetTokensCurrent"></a>
# **Invoke-UniswapV3GetTokensCurrent**
> UniswapV3TokenV3DTO[] Invoke-UniswapV3GetTokensCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

Tokens (current) 🔥

Gets tokens.

### Example
```powershell
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# Tokens (current) 🔥
try {
    $Result = Invoke-UniswapV3GetTokensCurrent -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV3GetTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**UniswapV3TokenV3DTO[]**](UniswapV3TokenV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

