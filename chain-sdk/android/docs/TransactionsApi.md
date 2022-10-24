# TransactionsApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapTransactionsHistoricalGet**](TransactionsApi.md#chainsChainIdDappsSushiswapTransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
[**chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](TransactionsApi.md#chainsChainIdDappsUniswapv2TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
[**chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](TransactionsApi.md#chainsChainIdDappsUniswapv3TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 



## chainsChainIdDappsSushiswapTransactionsHistoricalGet

> chainsChainIdDappsSushiswapTransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TransactionsApi;

TransactionsApi apiInstance = new TransactionsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsSushiswapTransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionsApi#chainsChainIdDappsSushiswapTransactionsHistoricalGet");
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


## chainsChainIdDappsUniswapv2TransactionsHistoricalGet

> chainsChainIdDappsUniswapv2TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TransactionsApi;

TransactionsApi apiInstance = new TransactionsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv2TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionsApi#chainsChainIdDappsUniswapv2TransactionsHistoricalGet");
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


## chainsChainIdDappsUniswapv3TransactionsHistoricalGet

> chainsChainIdDappsUniswapv3TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.TransactionsApi;

TransactionsApi apiInstance = new TransactionsApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv3TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling TransactionsApi#chainsChainIdDappsUniswapv3TransactionsHistoricalGet");
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

