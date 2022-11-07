# OnChainApi.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)



## sushiswapGetBundlesHistorical

> [SushiswapBundleDTO] sushiswapGetBundlesHistorical(opts)

GetBundles (historical)

Gets bundles.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetBundlesHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapBundleDTO]**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetBurnsHistorical

> [SushiswapBurnDTO] sushiswapGetBurnsHistorical(opts)

GetBurns (historical)

Gets burns.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetBurnsHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapBurnDTO]**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetDayDataHistorical

> [SushiswapDayDataDTO] sushiswapGetDayDataHistorical(opts)

GetDayData (historical)

Gets day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetDayDataHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapDayDataDTO]**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetFactoryHistorical

> [SushiswapFactoryDTO] sushiswapGetFactoryHistorical(opts)

GetFactory (historical)

Gets factory.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetFactoryHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapFactoryDTO]**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetHourDataHistorical

> [SushiswapHourDataDTO] sushiswapGetHourDataHistorical(opts)

GetHourData (historical)

Gets hour data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetHourDataHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapHourDataDTO]**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetLiquidityPositionHistorical

> [SushiswapLiquidityPositionDTO] sushiswapGetLiquidityPositionHistorical(opts)

GetLiquidityPosition (historical)

Gets liquidity position.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetLiquidityPositionHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapLiquidityPositionDTO]**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetLiquidityPositionSnapshotHistorical

> [SushiswapLiquidityPositionSnapshotDTO] sushiswapGetLiquidityPositionSnapshotHistorical(opts)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetLiquidityPositionSnapshotHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapLiquidityPositionSnapshotDTO]**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetMintsHistorical

> [SushiswapMintDTO] sushiswapGetMintsHistorical(opts)

GetMints (historical)

Gets mints.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetMintsHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapMintDTO]**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsCurrent

> [SushiswapPairDTO] sushiswapGetPoolsCurrent()

GetPools (current)

Gets pools.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
apiInstance.sushiswapGetPoolsCurrent((error, data, response) => {
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

[**[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsDayDataHistorical

> [SushiswapPairDayDataDTO] sushiswapGetPoolsDayDataHistorical(opts)

GetPoolsDayData (historical)

Gets pools day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetPoolsDayDataHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapPairDayDataDTO]**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsHistorical

> [SushiswapPairDTO] sushiswapGetPoolsHistorical(opts)

GetPools (historical)

Gets list of pools for given filters.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetPoolsHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsHourDataHistorical

> [SushiswapPairHourDataDTO] sushiswapGetPoolsHourDataHistorical(opts)

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetPoolsHourDataHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapPairHourDataDTO]**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetSwapsCurrent

> [SushiswapSwapDTO] sushiswapGetSwapsCurrent()

GetSwaps (current)

Gets swaps.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
apiInstance.sushiswapGetSwapsCurrent((error, data, response) => {
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

[**[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetSwapsHistorical

> [SushiswapSwapDTO] sushiswapGetSwapsHistorical(opts)

GetSwaps (historical)

Gets list of swaps for given filters.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.sushiswapGetSwapsHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensCurrent

> [SushiswapTokenDTO] sushiswapGetTokensCurrent()

GetTokens (current)

Gets tokens.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
apiInstance.sushiswapGetTokensCurrent((error, data, response) => {
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

[**[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensDayDataHistorical

> [SushiswapTokenDayDataDTO] sushiswapGetTokensDayDataHistorical(opts)

GetTokensDayData (historical)

Gets tokens day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'tokenId': "tokenId_example" // String | 
};
apiInstance.sushiswapGetTokensDayDataHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

[**[SushiswapTokenDayDataDTO]**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensHistorical

> [SushiswapTokenDTO] sushiswapGetTokensHistorical(opts)

GetTokens (historical)

Gets list of tokens for given filters.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'tokenId': "tokenId_example" // String | 
};
apiInstance.sushiswapGetTokensHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

[**[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTransactionsHistorical

> [SushiswapTransactionDTO] sushiswapGetTransactionsHistorical(opts)

GetTransactions (historical)

Gets transactions.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetTransactionsHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapTransactionDTO]**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetUsersHistorical

> [SushiswapUserDTO] sushiswapGetUsersHistorical(opts)

GetUsers (historical)

Gets users.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.sushiswapGetUsersHistorical(opts, (error, data, response) => {
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
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

[**[SushiswapUserDTO]**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

