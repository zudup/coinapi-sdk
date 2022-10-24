# UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
[**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 


<a name="chainsChainIdDappsUniswapv2DayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2DayDataHistoricalGet**
> chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling UniswapDayDataApi#chainsChainIdDappsUniswapv2DayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapDayDataApi#chainsChainIdDappsUniswapv2DayDataHistoricalGet")
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

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="chainsChainIdDappsUniswapv3DayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3DayDataHistoricalGet**
> chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling UniswapDayDataApi#chainsChainIdDappsUniswapv3DayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapDayDataApi#chainsChainIdDappsUniswapv3DayDataHistoricalGet")
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

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

