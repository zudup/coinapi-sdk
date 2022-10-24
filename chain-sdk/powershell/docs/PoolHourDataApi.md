# PSOpenAPITools.PSOpenAPITools/Api.PoolHourDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet**](PoolHourDataApi.md#Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | 
[**Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet**](PoolHourDataApi.md#Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | 
[**Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet**](PoolHourDataApi.md#Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | 


<a name="Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet**
> void Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$ChainId = "MyChainId" # String | 
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsSushiswapPoolHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**|  | 
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$ChainId = "MyChainId" # String | 
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2PoolHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**|  | 
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$ChainId = "MyChainId" # String | 
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3PoolHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ChainId** | **String**|  | 
 **StartBlock** | **Int64**|  | [optional] 
 **EndBlock** | **Int64**|  | [optional] 
 **StartDate** | **System.DateTime**|  | [optional] 
 **EndDate** | **System.DateTime**|  | [optional] 
 **PoolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

