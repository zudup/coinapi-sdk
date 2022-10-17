# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


<a name="chainsChainIdDappsUniswapv2PoolsCurrentGet"></a>
# **chainsChainIdDappsUniswapv2PoolsCurrentGet**
> kotlin.collections.List&lt;PairV2DTO&gt; chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)

GetPools

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<PairV2DTO> = apiInstance.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv2SwapsCurrentGet"></a>
# **chainsChainIdDappsUniswapv2SwapsCurrentGet**
> kotlin.collections.List&lt;SwapV2DTO&gt; chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)

GetSwaps

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<SwapV2DTO> = apiInstance.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv2TokensCurrentGet"></a>
# **chainsChainIdDappsUniswapv2TokensCurrentGet**
> kotlin.collections.List&lt;TokenV2DTO&gt; chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)

GetTokens

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<TokenV2DTO> = apiInstance.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

