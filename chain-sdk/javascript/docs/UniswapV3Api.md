# OnChainApi.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)



## uniswapV3GetBundlesCurrent

> [UniswapV3BundleV3DTO] uniswapV3GetBundlesCurrent()

Bundles (current)

Gets bundles.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
apiInstance.uniswapV3GetBundlesCurrent((error, data, response) => {
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

[**[UniswapV3BundleV3DTO]**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetBurnsCurrent

> [UniswapV3BurnV3DTO] uniswapV3GetBurnsCurrent(opts)

Burns (current)

Gets burns.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetBurnsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3BurnV3DTO]**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetDayDataCurrent

> [UniswapV3UniswapDayDataV3DTO] uniswapV3GetDayDataCurrent()

DayData (current)

Gets uniswapv3 day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
apiInstance.uniswapV3GetDayDataCurrent((error, data, response) => {
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

[**[UniswapV3UniswapDayDataV3DTO]**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetFactoryCurrent

> [UniswapV3FactoryV3DTO] uniswapV3GetFactoryCurrent()

Factory (current)

Gets factory.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
apiInstance.uniswapV3GetFactoryCurrent((error, data, response) => {
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

[**[UniswapV3FactoryV3DTO]**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetMintsCurrent

> [UniswapV3MintV3DTO] uniswapV3GetMintsCurrent(opts)

Mints (current)

Gets mints.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetMintsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3MintV3DTO]**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetPoolsCurrent

> [UniswapV3PoolV3DTO] uniswapV3GetPoolsCurrent(opts)

Pools (current) 🔥

Gets pools.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetPoolsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3PoolV3DTO]**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetPoolsDayDataCurrent

> [UniswapV3PoolDayDataV3DTO] uniswapV3GetPoolsDayDataCurrent(opts)

PoolsDayData (current)

Gets pools day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetPoolsDayDataCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3PoolDayDataV3DTO]**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetPoolsHourDataCurrent

> [UniswapV3PoolHourDataV3DTO] uniswapV3GetPoolsHourDataCurrent(opts)

PoolsHourData (current)

Gets pools hour data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetPoolsHourDataCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3PoolHourDataV3DTO]**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetPositionsCurrent

> [UniswapV3PositionV3DTO] uniswapV3GetPositionsCurrent(opts)

Positions (current)

Gets positions.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetPositionsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3PositionV3DTO]**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetPositionsSnapshotsCurrent

> [UniswapV3PositionSnapshotV3DTO] uniswapV3GetPositionsSnapshotsCurrent(opts)

PositionsSnapshots (current)

Gets positions snapshots.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetPositionsSnapshotsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3PositionSnapshotV3DTO]**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetSwapsCurrent

> [UniswapV3SwapV3DTO] uniswapV3GetSwapsCurrent(opts)

Swaps (current) 🔥

Gets swaps.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetSwapsCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3SwapV3DTO]**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetTicksCurrent

> [UniswapV3TickV3DTO] uniswapV3GetTicksCurrent(opts)

Ticks (current)

Gets ticks.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetTicksCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3TickV3DTO]**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetTicksDayDataCurrent

> [UniswapV3TickDayDataV3DTO] uniswapV3GetTicksDayDataCurrent(opts)

TicksDayData (current)

Gets ticks day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV3GetTicksDayDataCurrent(opts, (error, data, response) => {
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
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**[UniswapV3TickDayDataV3DTO]**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetTokensCurrent

> [UniswapV3TokenV3DTO] uniswapV3GetTokensCurrent(opts)

Tokens (current) 🔥

Gets tokens.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.uniswapV3GetTokensCurrent(opts, (error, data, response) => {
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
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[UniswapV3TokenV3DTO]**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetTokensDayDataCurrent

> [UniswapV3TokenV3DayDataDTO] uniswapV3GetTokensDayDataCurrent(opts)

TokensDayData (current)

Gets tokens day data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.uniswapV3GetTokensDayDataCurrent(opts, (error, data, response) => {
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
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[UniswapV3TokenV3DayDataDTO]**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV3GetTokensHourDataCurrent

> [UniswapV3TokenHourDataV3DTO] uniswapV3GetTokensHourDataCurrent(opts)

TokensHourData (current)

Gets tokens hour data.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.uniswapV3GetTokensHourDataCurrent(opts, (error, data, response) => {
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
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[UniswapV3TokenHourDataV3DTO]**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

