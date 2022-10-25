# RemoveLiquidityEventApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet**](RemoveLiquidityEventApi.md#chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/removeLiquidityEvent/historical | 


<a name="chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet"></a>
# **chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet**
> chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = RemoveLiquidityEventApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling RemoveLiquidityEventApi#chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoveLiquidityEventApi#chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**|  |
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined
