# GaugeWithdrawApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveGaugeWithdrawHistoricalGet**](GaugeWithdrawApi.md#chainsChainIdDappsCurveGaugeWithdrawHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeWithdraw/historical | 



## chainsChainIdDappsCurveGaugeWithdrawHistoricalGet

> chainsChainIdDappsCurveGaugeWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.GaugeWithdrawApi;

GaugeWithdrawApi apiInstance = new GaugeWithdrawApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsCurveGaugeWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling GaugeWithdrawApi#chainsChainIdDappsCurveGaugeWithdrawHistoricalGet");
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

