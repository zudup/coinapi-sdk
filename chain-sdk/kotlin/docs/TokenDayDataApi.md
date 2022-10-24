# TokenDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
[**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
[**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 


<a name="chainsChainIdDappsSushiswapTokenDayDataHistoricalGet"></a>
# **chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**
> chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TokenDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    apiInstance.chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling TokenDayDataApi#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TokenDayDataApi#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet")
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
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**
> chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TokenDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    apiInstance.chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling TokenDayDataApi#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TokenDayDataApi#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet")
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
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**
> chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TokenDayDataApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    apiInstance.chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling TokenDayDataApi#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TokenDayDataApi#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet")
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
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

