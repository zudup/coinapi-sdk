# OnChainApi.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens



## chainsChainIdDappsSushiswapPoolsCurrentGet

> [PairDTO] chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId, (error, data, response) => {
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

[**[PairDTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsSushiswapSwapsCurrentGet

> [SwapDTO] chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId, (error, data, response) => {
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

[**[SwapDTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chainsChainIdDappsSushiswapTokensCurrentGet

> [TokenDTO] chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.SushiswapApi();
let chainId = "chainId_example"; // String | Chain id
apiInstance.chainsChainIdDappsSushiswapTokensCurrentGet(chainId, (error, data, response) => {
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

[**[TokenDTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

