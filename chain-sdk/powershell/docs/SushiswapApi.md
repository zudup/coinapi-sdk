# PSOpenAPITools.PSOpenAPITools/Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


<a name="Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet**
> PairDTO[] Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetPools
try {
    $Result = Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**PairDTO[]**](PairDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet"></a>
# **Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet**
> SwapDTO[] Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetSwaps

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetSwaps
try {
    $Result = Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**SwapDTO[]**](SwapDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet"></a>
# **Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet**
> TokenDTO[] Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>

GetTokens

### Example
```powershell
$ChainId = "MyChainId" # String | Chain id

# GetTokens
try {
    $Result = Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet -ChainId $ChainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**| Chain id | 

### Return type

[**TokenDTO[]**](TokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

