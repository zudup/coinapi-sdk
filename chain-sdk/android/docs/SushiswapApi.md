# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetExchangesCurrent**](SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dexGetTradesCurrent**](SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥



## curveGetExchangesCurrent

> List&lt;CurveExchangeDTO&gt; curveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<CurveExchangeDTO> result = apiInstance.curveGetExchangesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#curveGetExchangesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTradesCurrent

> List&lt;DexTradeDTO&gt; dexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<DexTradeDTO> result = apiInstance.dexGetTradesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dexGetTradesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsCurrent

> List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapPairDTO> result = apiInstance.sushiswapGetPoolsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetSwapsCurrent

> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensCurrent

> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

