# BundlesApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapBundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsSushiswapBundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/bundles/historical | 
[**chainsChainIdDappsUniswapv2BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv2BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/bundles/historical | 
[**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 


<a name="chainsChainIdDappsSushiswapBundlesHistoricalGet"></a>
# **chainsChainIdDappsSushiswapBundlesHistoricalGet**
> chainsChainIdDappsSushiswapBundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BundlesApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsSushiswapBundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling BundlesApi#chainsChainIdDappsSushiswapBundlesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BundlesApi#chainsChainIdDappsSushiswapBundlesHistoricalGet")
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

<a name="chainsChainIdDappsUniswapv2BundlesHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2BundlesHistoricalGet**
> chainsChainIdDappsUniswapv2BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BundlesApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsUniswapv2BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling BundlesApi#chainsChainIdDappsUniswapv2BundlesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BundlesApi#chainsChainIdDappsUniswapv2BundlesHistoricalGet")
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

<a name="chainsChainIdDappsUniswapv3BundlesHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3BundlesHistoricalGet**
> chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BundlesApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling BundlesApi#chainsChainIdDappsUniswapv3BundlesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BundlesApi#chainsChainIdDappsUniswapv3BundlesHistoricalGet")
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

