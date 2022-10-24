# SettlementApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCowSettlementHistoricalGet**](SettlementApi.md#chainsChainIdDappsCowSettlementHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 



## chainsChainIdDappsCowSettlementHistoricalGet

> chainsChainIdDappsCowSettlementHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.SettlementApi;

SettlementApi apiInstance = new SettlementApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsCowSettlementHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SettlementApi#chainsChainIdDappsCowSettlementHistoricalGet");
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

