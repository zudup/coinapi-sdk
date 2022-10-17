# UniswapV2API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2API_chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2API.md#UniswapV2API_chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**UniswapV2API_chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2API.md#UniswapV2API_chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**UniswapV2API_chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2API.md#UniswapV2API_chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


# **UniswapV2API_chainsChainIdDappsUniswapv2PoolsCurrentGet**
```c
// GetPools
//
list_t* UniswapV2API_chainsChainIdDappsUniswapv2PoolsCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](pair_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_chainsChainIdDappsUniswapv2SwapsCurrentGet**
```c
// GetSwaps
//
list_t* UniswapV2API_chainsChainIdDappsUniswapv2SwapsCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](swap_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_chainsChainIdDappsUniswapv2TokensCurrentGet**
```c
// GetTokens
//
list_t* UniswapV2API_chainsChainIdDappsUniswapv2TokensCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](token_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

