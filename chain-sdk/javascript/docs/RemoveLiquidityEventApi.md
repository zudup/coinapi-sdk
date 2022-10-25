# OnChainApi.RemoveLiquidityEventApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet**](RemoveLiquidityEventApi.md#chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/removeLiquidityEvent/historical | 



## chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet

> chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet(chainId, opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.RemoveLiquidityEventApi();
let chainId = "chainId_example"; // String | 
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet(chainId, opts, (error, data, response) => {
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
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

