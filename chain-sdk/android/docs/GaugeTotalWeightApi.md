# GaugeTotalWeightApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet**](GaugeTotalWeightApi.md#chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeTotalWeight/historical | 



## chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet

> chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.GaugeTotalWeightApi;

GaugeTotalWeightApi apiInstance = new GaugeTotalWeightApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling GaugeTotalWeightApi#chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet");
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

