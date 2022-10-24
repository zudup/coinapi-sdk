# UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/uniswapDayData/historical | 
[**chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/historical | 



## chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet

> chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapDayDataApi;

UniswapDayDataApi apiInstance = new UniswapDayDataApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet");
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

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet

> chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapDayDataApi;

UniswapDayDataApi apiInstance = new UniswapDayDataApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet");
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

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

