# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens



## chainsChainIdDappsSushiswapPoolsCurrentGet

> List&lt;PairDTO&gt; chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
String chainId = null; // String | Chain id
try {
    List<PairDTO> result = apiInstance.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapPoolsCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsSushiswapSwapsCurrentGet

> List&lt;SwapDTO&gt; chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
String chainId = null; // String | Chain id
try {
    List<SwapDTO> result = apiInstance.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapSwapsCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsSushiswapTokensCurrentGet

> List&lt;TokenDTO&gt; chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
String chainId = null; // String | Chain id
try {
    List<TokenDTO> result = apiInstance.chainsChainIdDappsSushiswapTokensCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapTokensCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

