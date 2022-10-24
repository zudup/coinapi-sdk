# OrdersApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCowOrdersHistoricalGet**](OrdersApi.md#chainsChainIdDappsCowOrdersHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 



## chainsChainIdDappsCowOrdersHistoricalGet

> chainsChainIdDappsCowOrdersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsCowOrdersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#chainsChainIdDappsCowOrdersHistoricalGet");
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

