# UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
[**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 



## chainsChainIdDappsUniswapv2DayDataHistoricalGet

> chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



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
    apiInstance.chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv2DayDataHistoricalGet");
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


## chainsChainIdDappsUniswapv3DayDataHistoricalGet

> chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



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
    apiInstance.chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv3DayDataHistoricalGet");
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

