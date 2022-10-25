# AdminFeeChangeLogApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet**](AdminFeeChangeLogApi.md#chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | 



## chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet

> chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AdminFeeChangeLogApi;

AdminFeeChangeLogApi apiInstance = new AdminFeeChangeLogApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling AdminFeeChangeLogApi#chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet");
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

