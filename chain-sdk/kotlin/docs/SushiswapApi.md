# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetExchangesCurrent**](SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dexGetTradesCurrent**](SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


<a name="curveGetExchangesCurrent"></a>
# **curveGetExchangesCurrent**
> kotlin.collections.List&lt;CurveExchangeDTO&gt; curveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<CurveExchangeDTO> = apiInstance.curveGetExchangesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#curveGetExchangesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#curveGetExchangesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetTradesCurrent"></a>
# **dexGetTradesCurrent**
> kotlin.collections.List&lt;DexTradeDTO&gt; dexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<DexTradeDTO> = apiInstance.dexGetTradesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dexGetTradesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dexGetTradesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetPoolsCurrent"></a>
# **sushiswapGetPoolsCurrent**
> kotlin.collections.List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapPairDTO> = apiInstance.sushiswapGetPoolsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetPoolsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetPoolsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetSwapsCurrent"></a>
# **sushiswapGetSwapsCurrent**
> kotlin.collections.List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapSwapDTO> = apiInstance.sushiswapGetSwapsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetSwapsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetSwapsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetTokensCurrent"></a>
# **sushiswapGetTokensCurrent**
> kotlin.collections.List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapTokenDTO> = apiInstance.sushiswapGetTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetTokensCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

