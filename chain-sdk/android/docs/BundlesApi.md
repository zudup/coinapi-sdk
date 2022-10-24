# BundlesApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapBundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsSushiswapBundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/bundles/historical | 
[**chainsChainIdDappsUniswapv2BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv2BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/bundles/historical | 
[**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 



## chainsChainIdDappsSushiswapBundlesHistoricalGet

> chainsChainIdDappsSushiswapBundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.BundlesApi;

BundlesApi apiInstance = new BundlesApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsSushiswapBundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling BundlesApi#chainsChainIdDappsSushiswapBundlesHistoricalGet");
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


## chainsChainIdDappsUniswapv2BundlesHistoricalGet

> chainsChainIdDappsUniswapv2BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.BundlesApi;

BundlesApi apiInstance = new BundlesApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv2BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling BundlesApi#chainsChainIdDappsUniswapv2BundlesHistoricalGet");
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


## chainsChainIdDappsUniswapv3BundlesHistoricalGet

> chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.BundlesApi;

BundlesApi apiInstance = new BundlesApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling BundlesApi#chainsChainIdDappsUniswapv3BundlesHistoricalGet");
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

