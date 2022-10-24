# PSOpenAPITools.PSOpenAPITools/Api.UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet**](UniswapDayDataApi.md#Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
[**Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet**](UniswapDayDataApi.md#Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 


<a name="Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$ChainId = "MyChainId" # String | 
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2DayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$ChainId = "MyChainId" # String | 
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3DayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

