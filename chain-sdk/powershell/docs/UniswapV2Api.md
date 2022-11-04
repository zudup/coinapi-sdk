# PSOpenAPITools.PSOpenAPITools/Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**Invoke-DappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**Invoke-DappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**Invoke-DappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**Invoke-DappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**Invoke-DappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**Invoke-DappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**Invoke-DappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**Invoke-DappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#Invoke-DappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**Invoke-DappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**Invoke-DappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#Invoke-DappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**Invoke-DappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**Invoke-DappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**Invoke-DappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#Invoke-DappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**Invoke-DappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**Invoke-DappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**Invoke-DappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#Invoke-DappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 


<a name="Invoke-DappsUniswapv2BundlesHistoricalGet"></a>
# **Invoke-DappsUniswapv2BundlesHistoricalGet**
> void Invoke-DappsUniswapv2BundlesHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-DappsUniswapv2BundlesHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2BundlesHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2BurnsHistoricalGet"></a>
# **Invoke-DappsUniswapv2BurnsHistoricalGet**
> void Invoke-DappsUniswapv2BurnsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2BurnsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2BurnsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2DayDataHistoricalGet"></a>
# **Invoke-DappsUniswapv2DayDataHistoricalGet**
> void Invoke-DappsUniswapv2DayDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-DappsUniswapv2DayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2DayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2FactoryHistoricalGet"></a>
# **Invoke-DappsUniswapv2FactoryHistoricalGet**
> void Invoke-DappsUniswapv2FactoryHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-DappsUniswapv2FactoryHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2FactoryHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2LiquidityPositionHistoricalGet"></a>
# **Invoke-DappsUniswapv2LiquidityPositionHistoricalGet**
> void Invoke-DappsUniswapv2LiquidityPositionHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2LiquidityPositionHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2LiquidityPositionHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet"></a>
# **Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
> void Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2MintsHistoricalGet"></a>
# **Invoke-DappsUniswapv2MintsHistoricalGet**
> void Invoke-DappsUniswapv2MintsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2MintsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2MintsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2PoolDayDataHistoricalGet"></a>
# **Invoke-DappsUniswapv2PoolDayDataHistoricalGet**
> void Invoke-DappsUniswapv2PoolDayDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2PoolDayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2PoolDayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2PoolHourDataHistoricalGet"></a>
# **Invoke-DappsUniswapv2PoolHourDataHistoricalGet**
> void Invoke-DappsUniswapv2PoolHourDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2PoolHourDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2PoolHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2PoolsCurrentGet"></a>
# **Invoke-DappsUniswapv2PoolsCurrentGet**
> UniswapV2PairV2DTO[] Invoke-DappsUniswapv2PoolsCurrentGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterPoolId] <String><br>

GetPools

### Example
```powershell
$FilterPoolId = "MyFilterPoolId" # String | Filter pool id (optional)

# GetPools
try {
    $Result = Invoke-DappsUniswapv2PoolsCurrentGet -FilterPoolId $FilterPoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2PoolsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**UniswapV2PairV2DTO[]**](UniswapV2PairV2DTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2PoolsHistoricalGet"></a>
# **Invoke-DappsUniswapv2PoolsHistoricalGet**
> void Invoke-DappsUniswapv2PoolsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2PoolsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2PoolsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2SwapsCurrentGet"></a>
# **Invoke-DappsUniswapv2SwapsCurrentGet**
> UniswapV2SwapV2DTO[] Invoke-DappsUniswapv2SwapsCurrentGet<br>

GetSwaps

### Example
```powershell

# GetSwaps
try {
    $Result = Invoke-DappsUniswapv2SwapsCurrentGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2SwapsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsUniswapv2SwapsHistoricalGet"></a>
# **Invoke-DappsUniswapv2SwapsHistoricalGet**
> void Invoke-DappsUniswapv2SwapsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2SwapsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2SwapsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2TokenDayDataHistoricalGet"></a>
# **Invoke-DappsUniswapv2TokenDayDataHistoricalGet**
> void Invoke-DappsUniswapv2TokenDayDataHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2TokenDayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2TokenDayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2TokensCurrentGet"></a>
# **Invoke-DappsUniswapv2TokensCurrentGet**
> UniswapV2TokenV2DTO[] Invoke-DappsUniswapv2TokensCurrentGet<br>

GetTokens

### Example
```powershell

# GetTokens
try {
    $Result = Invoke-DappsUniswapv2TokensCurrentGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2TokensCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsUniswapv2TokensHistoricalGet"></a>
# **Invoke-DappsUniswapv2TokensHistoricalGet**
> void Invoke-DappsUniswapv2TokensHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

try {
    $Result = Invoke-DappsUniswapv2TokensHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2TokensHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2TransactionsHistoricalGet"></a>
# **Invoke-DappsUniswapv2TransactionsHistoricalGet**
> void Invoke-DappsUniswapv2TransactionsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-DappsUniswapv2TransactionsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2TransactionsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsUniswapv2UsersHistoricalGet"></a>
# **Invoke-DappsUniswapv2UsersHistoricalGet**
> void Invoke-DappsUniswapv2UsersHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>



### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-DappsUniswapv2UsersHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsUniswapv2UsersHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

