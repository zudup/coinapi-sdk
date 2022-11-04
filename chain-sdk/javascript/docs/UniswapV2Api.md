# OnChainApi.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**dappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**dappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**dappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#dappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**dappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**dappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**dappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**dappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#dappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**dappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**dappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#dappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**dappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**dappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**dappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#dappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**dappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**dappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**dappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#dappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 



## dappsUniswapv2BundlesHistoricalGet

> dappsUniswapv2BundlesHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsUniswapv2BundlesHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2BurnsHistoricalGet

> dappsUniswapv2BurnsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2BurnsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2DayDataHistoricalGet

> dappsUniswapv2DayDataHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsUniswapv2DayDataHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2FactoryHistoricalGet

> dappsUniswapv2FactoryHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsUniswapv2FactoryHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2LiquidityPositionHistoricalGet

> dappsUniswapv2LiquidityPositionHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2LiquidityPositionHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet

> dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2MintsHistoricalGet

> dappsUniswapv2MintsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2MintsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2PoolDayDataHistoricalGet

> dappsUniswapv2PoolDayDataHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2PoolDayDataHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2PoolHourDataHistoricalGet

> dappsUniswapv2PoolHourDataHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2PoolHourDataHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2PoolsCurrentGet

> [UniswapV2PairV2DTO] dappsUniswapv2PoolsCurrentGet(opts)

GetPools

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.dappsUniswapv2PoolsCurrentGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2PoolsHistoricalGet

> dappsUniswapv2PoolsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2PoolsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2SwapsCurrentGet

> [UniswapV2SwapV2DTO] dappsUniswapv2SwapsCurrentGet()

GetSwaps

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
apiInstance.dappsUniswapv2SwapsCurrentGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2SwapsHistoricalGet

> dappsUniswapv2SwapsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsUniswapv2SwapsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2TokenDayDataHistoricalGet

> dappsUniswapv2TokenDayDataHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'tokenId': "tokenId_example" // String | 
};
apiInstance.dappsUniswapv2TokenDayDataHistoricalGet(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsUniswapv2TokensCurrentGet

> [UniswapV2TokenV2DTO] dappsUniswapv2TokensCurrentGet()

GetTokens

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
apiInstance.dappsUniswapv2TokensCurrentGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2TokensHistoricalGet

> dappsUniswapv2TokensHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'tokenId': "tokenId_example" // String | 
};
apiInstance.dappsUniswapv2TokensHistoricalGet(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsUniswapv2TransactionsHistoricalGet

> dappsUniswapv2TransactionsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsUniswapv2TransactionsHistoricalGet(opts, (error, data, response) => {
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


## dappsUniswapv2UsersHistoricalGet

> dappsUniswapv2UsersHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsUniswapv2UsersHistoricalGet(opts, (error, data, response) => {
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

