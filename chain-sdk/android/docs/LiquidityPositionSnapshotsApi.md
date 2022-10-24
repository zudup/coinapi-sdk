# LiquidityPositionSnapshotsApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsApi.md#chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsApi.md#chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | 



## chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet

> chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.LiquidityPositionSnapshotsApi;

LiquidityPositionSnapshotsApi apiInstance = new LiquidityPositionSnapshotsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling LiquidityPositionSnapshotsApi#chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet");
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


## chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet

> chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.LiquidityPositionSnapshotsApi;

LiquidityPositionSnapshotsApi apiInstance = new LiquidityPositionSnapshotsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling LiquidityPositionSnapshotsApi#chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet");
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

