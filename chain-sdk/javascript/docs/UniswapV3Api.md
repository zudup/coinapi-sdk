# OnChainApi.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData



## chainsChainIdDappsUniswapv3BundleCurrentGet

> [BundleV3DTO] chainsChainIdDappsUniswapv3BundleCurrentGet(chainId)

GetBundles

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsUniswapv3BundleCurrentGet(chainId, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 

### Return type

[**[BundleV3DTO]**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3BurnsCurrentGet

> [BurnV3DTO] chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, opts)

GetBurns

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[BurnV3DTO]**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3FactoryCurrentGet

> [FactoryV3DTO] chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 

### Return type

[**[FactoryV3DTO]**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3MintsCurrentGet

> [MintV3DTO] chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, opts)

GetMints

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[MintV3DTO]**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3PoolsCurrentGet

> [PoolV3DTO] chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, opts)

GetPools

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[PoolV3DTO]**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet

> [PoolDayDataV3DTO] chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, opts)

GetPoolsDayData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[PoolDayDataV3DTO]**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet

> [PoolHourDataV3DTO] chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, opts)

GetPoolsHourData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[PoolHourDataV3DTO]**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet

> [PositionSnapshotV3DTO] chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, opts)

GetPositionSnapshot

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[PositionSnapshotV3DTO]**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3PositionsCurrentGet

> [PositionV3DTO] chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, opts)

GetPositions

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[PositionV3DTO]**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3SwapsCurrentGet

> [SwapV3DTO] chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, opts)

GetSwaps

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[SwapV3DTO]**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3TicksCurrentGet

> [TickV3DTO] chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, opts)

GetTicks

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[TickV3DTO]**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3TicksDayDataCurrentGet

> [TickDayDataV3DTO] chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, opts)

GetTicksDayData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterPoolId': "filterPoolId_example" // String | Filter pool id
};
apiInstance.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**[TickDayDataV3DTO]**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3TokensCurrentGet

> [TokenV3DTO] chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, opts)

GetTokens

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[TokenV3DTO]**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3TokensDayDataCurrentGet

> [TokenV3DayDataDTO] chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, opts)

GetTokensDayData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[TokenV3DayDataDTO]**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3TokensHourDataCurrentGet

> [TokenHourDataV3DTO] chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, opts)

GetTokensHourData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
let opts = {
  'filterTokenId': "filterTokenId_example" // String | 
};
apiInstance.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, opts, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**[TokenHourDataV3DTO]**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet

> [UniswapDayDataV3DTO] chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId)

GetUniswapDayData

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV3Api();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId, (error, data, response) => {
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
 **chainId** | **String**| Chain id | 

### Return type

[**[UniswapDayDataV3DTO]**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

