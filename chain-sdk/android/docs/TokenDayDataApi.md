# TokenDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
[**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
[**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 



## chainsChainIdDappsSushiswapTokenDayDataHistoricalGet

> chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TokenDayDataApi;

TokenDayDataApi apiInstance = new TokenDayDataApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenDayDataApi#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet

> chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TokenDayDataApi;

TokenDayDataApi apiInstance = new TokenDayDataApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenDayDataApi#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet

> chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TokenDayDataApi;

TokenDayDataApi apiInstance = new TokenDayDataApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenDayDataApi#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

