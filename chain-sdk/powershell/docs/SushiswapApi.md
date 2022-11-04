# PSOpenAPITools.PSOpenAPITools/Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical | 
[**Invoke-DappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical | 
[**Invoke-DappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical | 
[**Invoke-DappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical | 
[**Invoke-DappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical | 
[**Invoke-DappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**Invoke-DappsSushiswapMintsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical | 
[**Invoke-DappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**Invoke-DappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**Invoke-DappsSushiswapPoolsCurrentGet**](SushiswapApi.md#Invoke-DappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools
[**Invoke-DappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**Invoke-DappsSushiswapSwapsCurrentGet**](SushiswapApi.md#Invoke-DappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**Invoke-DappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**Invoke-DappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**Invoke-DappsSushiswapTokensCurrentGet**](SushiswapApi.md#Invoke-DappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**Invoke-DappsSushiswapTokensHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**Invoke-DappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**Invoke-DappsSushiswapUsersHistoricalGet**](SushiswapApi.md#Invoke-DappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 


<a name="Invoke-DappsSushiswapBundlesHistoricalGet"></a>
# **Invoke-DappsSushiswapBundlesHistoricalGet**
> void Invoke-DappsSushiswapBundlesHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapBundlesHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapBundlesHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapBurnsHistoricalGet"></a>
# **Invoke-DappsSushiswapBurnsHistoricalGet**
> void Invoke-DappsSushiswapBurnsHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapBurnsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapBurnsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapDayDataHistoricalGet"></a>
# **Invoke-DappsSushiswapDayDataHistoricalGet**
> void Invoke-DappsSushiswapDayDataHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapDayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapDayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapFactoryHistoricalGet"></a>
# **Invoke-DappsSushiswapFactoryHistoricalGet**
> void Invoke-DappsSushiswapFactoryHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapFactoryHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapFactoryHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapHourDataHistoricalGet"></a>
# **Invoke-DappsSushiswapHourDataHistoricalGet**
> void Invoke-DappsSushiswapHourDataHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapHourDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapLiquidityPositionHistoricalGet"></a>
# **Invoke-DappsSushiswapLiquidityPositionHistoricalGet**
> void Invoke-DappsSushiswapLiquidityPositionHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapLiquidityPositionHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapLiquidityPositionHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet"></a>
# **Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> void Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapLiquidityPositionSnapshotsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapMintsHistoricalGet"></a>
# **Invoke-DappsSushiswapMintsHistoricalGet**
> void Invoke-DappsSushiswapMintsHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapMintsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapMintsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapPoolDayDataHistoricalGet"></a>
# **Invoke-DappsSushiswapPoolDayDataHistoricalGet**
> void Invoke-DappsSushiswapPoolDayDataHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapPoolDayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapPoolDayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapPoolHourDataHistoricalGet"></a>
# **Invoke-DappsSushiswapPoolHourDataHistoricalGet**
> void Invoke-DappsSushiswapPoolHourDataHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapPoolHourDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapPoolHourDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapPoolsCurrentGet"></a>
# **Invoke-DappsSushiswapPoolsCurrentGet**
> PairDTO[] Invoke-DappsSushiswapPoolsCurrentGet<br>

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```powershell

# GetPools
try {
    $Result = Invoke-DappsSushiswapPoolsCurrentGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapPoolsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PairDTO[]**](PairDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapPoolsHistoricalGet"></a>
# **Invoke-DappsSushiswapPoolsHistoricalGet**
> PairDTO[] Invoke-DappsSushiswapPoolsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetPools (historical)

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetPools (historical)
try {
    $Result = Invoke-DappsSushiswapPoolsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapPoolsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**PairDTO[]**](PairDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapSwapsCurrentGet"></a>
# **Invoke-DappsSushiswapSwapsCurrentGet**
> SwapDTO[] Invoke-DappsSushiswapSwapsCurrentGet<br>

GetSwaps

### Example
```powershell

# GetSwaps
try {
    $Result = Invoke-DappsSushiswapSwapsCurrentGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapSwapsCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwapDTO[]**](SwapDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapSwapsHistoricalGet"></a>
# **Invoke-DappsSushiswapSwapsHistoricalGet**
> SwapDTO[] Invoke-DappsSushiswapSwapsHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

GetSwaps (historical)

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$PoolId = "MyPoolId" # String |  (optional)

# GetSwaps (historical)
try {
    $Result = Invoke-DappsSushiswapSwapsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapSwapsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**SwapDTO[]**](SwapDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapTokenDayDataHistoricalGet"></a>
# **Invoke-DappsSushiswapTokenDayDataHistoricalGet**
> void Invoke-DappsSushiswapTokenDayDataHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapTokenDayDataHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapTokenDayDataHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapTokensCurrentGet"></a>
# **Invoke-DappsSushiswapTokensCurrentGet**
> TokenDTO[] Invoke-DappsSushiswapTokensCurrentGet<br>

GetTokens

### Example
```powershell

# GetTokens
try {
    $Result = Invoke-DappsSushiswapTokensCurrentGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapTokensCurrentGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDTO[]**](TokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapTokensHistoricalGet"></a>
# **Invoke-DappsSushiswapTokensHistoricalGet**
> TokenDTO[] Invoke-DappsSushiswapTokensHistoricalGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndBlock] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EndDate] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

GetTokens (historical)

### Example
```powershell
$StartBlock = 789 # Int64 |  (optional)
$EndBlock = 789 # Int64 |  (optional)
$StartDate = (Get-Date) # System.DateTime |  (optional)
$EndDate = (Get-Date) # System.DateTime |  (optional)
$TokenId = "MyTokenId" # String |  (optional)

# GetTokens (historical)
try {
    $Result = Invoke-DappsSushiswapTokensHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapTokensHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**TokenDTO[]**](TokenDTO.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DappsSushiswapTransactionsHistoricalGet"></a>
# **Invoke-DappsSushiswapTransactionsHistoricalGet**
> void Invoke-DappsSushiswapTransactionsHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapTransactionsHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapTransactionsHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DappsSushiswapUsersHistoricalGet"></a>
# **Invoke-DappsSushiswapUsersHistoricalGet**
> void Invoke-DappsSushiswapUsersHistoricalGet<br>
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
    $Result = Invoke-DappsSushiswapUsersHistoricalGet -StartBlock $StartBlock -EndBlock $EndBlock -StartDate $StartDate -EndDate $EndDate
} catch {
    Write-Host ("Exception occurred when calling Invoke-DappsSushiswapUsersHistoricalGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

