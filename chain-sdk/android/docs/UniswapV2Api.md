# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens



## chainsChainIdDappsUniswapv2PoolsCurrentGet

> List&lt;PairV2DTO&gt; chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)

GetPools

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String chainId = null; // String | Chain id
try {
    List<PairV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv2SwapsCurrentGet

> List&lt;SwapV2DTO&gt; chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)

GetSwaps

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String chainId = null; // String | Chain id
try {
    List<SwapV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv2TokensCurrentGet

> List&lt;TokenV2DTO&gt; chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)

GetTokens

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String chainId = null; // String | Chain id
try {
    List<TokenV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | [default to null]

### Return type

[**List&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

