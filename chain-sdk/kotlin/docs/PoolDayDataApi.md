# PoolDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet**](PoolDayDataApi.md#chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | 


<a name="chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet**
> chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = PoolDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling PoolDayDataApi#chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PoolDayDataApi#chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet")
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

