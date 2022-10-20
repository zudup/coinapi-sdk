# MintsApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3MintsHistoricalGet**](MintsApi.md#chainsChainIdDappsUniswapv3MintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/historical | 



## chainsChainIdDappsUniswapv3MintsHistoricalGet

> chainsChainIdDappsUniswapv3MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.MintsApi;

MintsApi apiInstance = new MintsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsUniswapv3MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling MintsApi#chainsChainIdDappsUniswapv3MintsHistoricalGet");
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

