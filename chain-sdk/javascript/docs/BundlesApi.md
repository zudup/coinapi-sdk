# OnChainApi.BundlesApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 



## chainsChainIdDappsUniswapv3BundlesHistoricalGet

> chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.BundlesApi();
let chainId = "chainId_example"; // String | 
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

