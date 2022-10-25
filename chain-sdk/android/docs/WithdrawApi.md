# WithdrawApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsDexWithdrawHistoricalGet**](WithdrawApi.md#chainsChainIdDappsDexWithdrawHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/withdraw/historical | 



## chainsChainIdDappsDexWithdrawHistoricalGet

> chainsChainIdDappsDexWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.WithdrawApi;

WithdrawApi apiInstance = new WithdrawApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.chainsChainIdDappsDexWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling WithdrawApi#chainsChainIdDappsDexWithdrawHistoricalGet");
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
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

