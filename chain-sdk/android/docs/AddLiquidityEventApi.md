# AddLiquidityEventApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveAddLiquidityEventHistoricalGet**](AddLiquidityEventApi.md#chainsChainIdDappsCurveAddLiquidityEventHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/addLiquidityEvent/historical | 



## chainsChainIdDappsCurveAddLiquidityEventHistoricalGet

> chainsChainIdDappsCurveAddLiquidityEventHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AddLiquidityEventApi;

AddLiquidityEventApi apiInstance = new AddLiquidityEventApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.chainsChainIdDappsCurveAddLiquidityEventHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling AddLiquidityEventApi#chainsChainIdDappsCurveAddLiquidityEventHistoricalGet");
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

