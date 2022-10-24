# LiquidityPositionApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**](LiquidityPositionApi.md#chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | 
[**chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](LiquidityPositionApi.md#chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 



## chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet

> chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.LiquidityPositionApi;

LiquidityPositionApi apiInstance = new LiquidityPositionApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling LiquidityPositionApi#chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet

> chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.LiquidityPositionApi;

LiquidityPositionApi apiInstance = new LiquidityPositionApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling LiquidityPositionApi#chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

