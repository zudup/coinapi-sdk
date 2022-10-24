# OnChainApi.UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
[**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 



## chainsChainIdDappsUniswapv2DayDataHistoricalGet

> chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapDayDataApi();
let chainId = "chainId_example"; // String | 
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, opts, (error, data, response) => {
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


## chainsChainIdDappsUniswapv3DayDataHistoricalGet

> chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapDayDataApi();
let chainId = "chainId_example"; // String | 
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, opts, (error, data, response) => {
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

