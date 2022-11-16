# PSOpenAPITools.PSOpenAPITools/Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CurveGetExchangesCurrent**](SushiswapApi.md#Invoke-CurveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**Invoke-DexGetTradesCurrent**](SushiswapApi.md#Invoke-DexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**Invoke-SushiswapGetPoolsCurrent**](SushiswapApi.md#Invoke-SushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**Invoke-SushiswapGetSwapsCurrent**](SushiswapApi.md#Invoke-SushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**Invoke-SushiswapGetTokensCurrent**](SushiswapApi.md#Invoke-SushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


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

