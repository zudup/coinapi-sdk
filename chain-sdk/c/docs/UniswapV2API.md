# UniswapV2API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2API_uniswapV2GetPoolsCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**UniswapV2API_uniswapV2GetSwapsCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**UniswapV2API_uniswapV2GetTokensCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


# **UniswapV2API_uniswapV2GetPoolsCurrent**
```c
// Pools (current) 🔥
//
// Gets pools.
//
list_t* UniswapV2API_uniswapV2GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v2_pair_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetSwapsCurrent**
```c
// Swaps (current) 🔥
//
// Gets swaps.
//
list_t* UniswapV2API_uniswapV2GetSwapsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](uniswap_v2_swap_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetTokensCurrent**
```c
// Tokens (current) 🔥
//
// Gets tokens.
//
list_t* UniswapV2API_uniswapV2GetTokensCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](uniswap_v2_token_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

