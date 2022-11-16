# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


<a name="uniswapV2GetPoolsCurrent"></a>
# **uniswapV2GetPoolsCurrent**
> kotlin.collections.List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2PairV2DTO> = apiInstance.uniswapV2GetPoolsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPoolsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPoolsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetSwapsCurrent"></a>
# **uniswapV2GetSwapsCurrent**
> kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
try {
    val result : kotlin.collections.List<UniswapV2SwapV2DTO> = apiInstance.uniswapV2GetSwapsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetSwapsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetSwapsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokensCurrent"></a>
# **uniswapV2GetTokensCurrent**
> kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
try {
    val result : kotlin.collections.List<UniswapV2TokenV2DTO> = apiInstance.uniswapV2GetTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokensCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

