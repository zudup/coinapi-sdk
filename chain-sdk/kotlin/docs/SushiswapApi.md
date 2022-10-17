# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


<a name="chainsChainIdDappsSushiswapPoolsCurrentGet"></a>
# **chainsChainIdDappsSushiswapPoolsCurrentGet**
> kotlin.collections.List&lt;PairDTO&gt; chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<PairDTO> = apiInstance.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#chainsChainIdDappsSushiswapPoolsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#chainsChainIdDappsSushiswapPoolsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsSushiswapSwapsCurrentGet"></a>
# **chainsChainIdDappsSushiswapSwapsCurrentGet**
> kotlin.collections.List&lt;SwapDTO&gt; chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<SwapDTO> = apiInstance.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#chainsChainIdDappsSushiswapSwapsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#chainsChainIdDappsSushiswapSwapsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsSushiswapTokensCurrentGet"></a>
# **chainsChainIdDappsSushiswapTokensCurrentGet**
> kotlin.collections.List&lt;TokenDTO&gt; chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<TokenDTO> = apiInstance.chainsChainIdDappsSushiswapTokensCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#chainsChainIdDappsSushiswapTokensCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#chainsChainIdDappsSushiswapTokensCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

