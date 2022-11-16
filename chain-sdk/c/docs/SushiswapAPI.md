# SushiswapAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SushiswapAPI_curveGetExchangesCurrent**](SushiswapAPI.md#SushiswapAPI_curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**SushiswapAPI_dexGetTradesCurrent**](SushiswapAPI.md#SushiswapAPI_dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**SushiswapAPI_sushiswapGetPoolsCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**SushiswapAPI_sushiswapGetSwapsCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**SushiswapAPI_sushiswapGetTokensCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


# **SushiswapAPI_curveGetExchangesCurrent**
```c
// Exchanges (current) 🔥
//
// Gets exchanges.
//
list_t* SushiswapAPI_curveGetExchangesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](curve_exchange_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_dexGetTradesCurrent**
```c
// Trades (current) 🔥
//
// Gets trades.
//
list_t* SushiswapAPI_dexGetTradesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](dex_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetPoolsCurrent**
```c
// Pools (current) 🔥
//
// Gets pools.
//
list_t* SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](sushiswap_pair_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetSwapsCurrent**
```c
// Swaps (current) 🔥
//
// Gets swaps.
//
list_t* SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](sushiswap_swap_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetTokensCurrent**
```c
// Tokens (current) 🔥
//
// Gets tokens.
//
list_t* SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](sushiswap_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

