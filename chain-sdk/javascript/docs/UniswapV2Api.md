# OnChainApi.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥



## uniswapV2GetPoolsCurrent

> [UniswapV2PairV2DTO] uniswapV2GetPoolsCurrent(opts)

Pools (current) 🔥

Gets pools.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
let opts = {
  'filterPoolId': "filterPoolId_example" // String | 
};
apiInstance.uniswapV2GetPoolsCurrent(opts, (error, data, response) => {
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

[**[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetSwapsCurrent

> [UniswapV2SwapV2DTO] uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
apiInstance.uniswapV2GetSwapsCurrent((error, data, response) => {
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


## uniswapV2GetTokensCurrent

> [UniswapV2TokenV2DTO] uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.UniswapV2Api();
apiInstance.uniswapV2GetTokensCurrent((error, data, response) => {
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

