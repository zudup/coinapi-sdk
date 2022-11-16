# PSOpenAPITools.PSOpenAPITools/Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-UniswapV2GetPoolsCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**Invoke-UniswapV2GetSwapsCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**Invoke-UniswapV2GetTokensCurrent**](UniswapV2Api.md#Invoke-UniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


<a name="Invoke-UniswapV2GetPoolsCurrent"></a>
# **Invoke-UniswapV2GetPoolsCurrent**
> UniswapV2PairV2DTO[] Invoke-UniswapV2GetPoolsCurrent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

Pools (current) 🔥

Gets pools.

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String |  (optional)

# Pools (current) 🔥
try {
    $Result = Invoke-UniswapV2GetPoolsCurrent -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetPoolsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**|  | [optional] 

### Return type

[**UniswapV2PairV2DTO[]**](UniswapV2PairV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetSwapsCurrent"></a>
# **Invoke-UniswapV2GetSwapsCurrent**
> UniswapV2SwapV2DTO[] Invoke-UniswapV2GetSwapsCurrent<br>

Swaps (current) 🔥

Gets swaps.

### Example
```powershell

# Swaps (current) 🔥
try {
    $Result = Invoke-UniswapV2GetSwapsCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetSwapsCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV2SwapV2DTO[]**](UniswapV2SwapV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UniswapV2GetTokensCurrent"></a>
# **Invoke-UniswapV2GetTokensCurrent**
> UniswapV2TokenV2DTO[] Invoke-UniswapV2GetTokensCurrent<br>

Tokens (current) 🔥

Gets tokens.

### Example
```powershell

# Tokens (current) 🔥
try {
    $Result = Invoke-UniswapV2GetTokensCurrent
} catch {
    Write-Host ("Exception occurred when calling Invoke-UniswapV2GetTokensCurrent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UniswapV2TokenV2DTO[]**](UniswapV2TokenV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

