# PSOpenAPITools.PSOpenAPITools/Api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


<a name="Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet**
> BundleV3DTO[] Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetBundles

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetBundles
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**BundleV3DTO[]**](BundleV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet**
> BurnV3DTO[] Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetBurns

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetBurns
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BurnV3DTO[]**](BurnV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet**
> FactoryV3DTO[] Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetFactory

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetFactory
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**FactoryV3DTO[]**](FactoryV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet**
> MintV3DTO[] Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetMints

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetMints
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**MintV3DTO[]**](MintV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet**
> PoolV3DTO[] Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPools

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPools
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**PoolV3DTO[]**](PoolV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> PoolDayDataV3DTO[] Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPoolsDayData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPoolsDayData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**PoolDayDataV3DTO[]**](PoolDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> PoolHourDataV3DTO[] Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPoolsHourData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPoolsHourData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**PoolHourDataV3DTO[]**](PoolHourDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> PositionSnapshotV3DTO[] Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPositionSnapshot

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPositionSnapshot
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**PositionSnapshotV3DTO[]**](PositionSnapshotV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet**
> PositionV3DTO[] Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPositions

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPositions
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**PositionV3DTO[]**](PositionV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet**
> SwapV3DTO[] Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetSwaps

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetSwaps
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**SwapV3DTO[]**](SwapV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet**
> TickV3DTO[] Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetTicks

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetTicks
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**TickV3DTO[]**](TickV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> TickDayDataV3DTO[] Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetTicksDayData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetTicksDayData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet -ChainId $ChainId -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**TickDayDataV3DTO[]**](TickDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet**
> TokenV3DTO[] Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

GetTokens

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# GetTokens
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet -ChainId $ChainId -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**TokenV3DTO[]**](TokenV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> TokenV3DayDataDTO[] Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

GetTokensDayData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# GetTokensDayData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet -ChainId $ChainId -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**TokenV3DayDataDTO[]**](TokenV3DayDataDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> TokenHourDataV3DTO[] Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterTokenId] <String><br>

GetTokensHourData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id
$FilterTokenId = "MyFilterTokenId" # String |  (optional)

# GetTokensHourData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet -ChainId $ChainId -FilterTokenId $FilterTokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 
 **FilterTokenId** | **String**|  | [optional] 

### Return type

[**TokenHourDataV3DTO[]**](TokenHourDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> UniswapDayDataV3DTO[] Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetUniswapDayData

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetUniswapDayData
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**UniswapDayDataV3DTO[]**](UniswapDayDataV3DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

