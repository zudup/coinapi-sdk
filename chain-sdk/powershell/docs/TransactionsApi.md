# PSOpenAPITools.PSOpenAPITools/Api.TransactionsApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet**](TransactionsApi.md#Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
[**Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet**](TransactionsApi.md#Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 


<a name="Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet<br>
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
    $Result = Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv2TransactionsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet"></a>
# **Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet**
> void Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet<br>
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
    $Result = Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet -ChainId $ChainId -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ChainsChainIdDappsUniswapv3TransactionsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

