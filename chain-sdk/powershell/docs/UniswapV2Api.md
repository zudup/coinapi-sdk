# PSOpenAPITools.PSOpenAPITools/Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


<a name="Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet**
> PairV2DTO[] Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetPools

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetPools
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**PairV2DTO[]**](PairV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet**
> SwapV2DTO[] Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetSwaps

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetSwaps
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**SwapV2DTO[]**](SwapV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet**
> TokenV2DTO[] Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetTokens

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetTokens
try {
    $Result = Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**TokenV2DTO[]**](TokenV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

