# UniswapV3API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV3API_uniswapV3GetBundlesCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**UniswapV3API_uniswapV3GetBurnsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**UniswapV3API_uniswapV3GetDayDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**UniswapV3API_uniswapV3GetFactoryCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**UniswapV3API_uniswapV3GetMintsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**UniswapV3API_uniswapV3GetPoolsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**UniswapV3API_uniswapV3GetPoolsDayDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**UniswapV3API_uniswapV3GetPoolsHourDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**UniswapV3API_uniswapV3GetPositionsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**UniswapV3API_uniswapV3GetSwapsCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**UniswapV3API_uniswapV3GetTicksCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**UniswapV3API_uniswapV3GetTicksDayDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**UniswapV3API_uniswapV3GetTokensCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**UniswapV3API_uniswapV3GetTokensDayDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**UniswapV3API_uniswapV3GetTokensHourDataCurrent**](UniswapV3API.md#UniswapV3API_uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


# **UniswapV3API_uniswapV3GetBundlesCurrent**
```c
// Bundles (current)
//
// Gets bundles.
//
list_t* UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](uniswap_v3_bundle_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetBurnsCurrent**
```c
// Burns (current)
//
// Gets burns.
//
list_t* UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_burn_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetDayDataCurrent**
```c
// DayData (current)
//
// Gets uniswapv3 day data.
//
list_t* UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](uniswap_v3_uniswap_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetFactoryCurrent**
```c
// Factory (current)
//
// Gets factory.
//
list_t* UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](uniswap_v3_factory_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetMintsCurrent**
```c
// Mints (current)
//
// Gets mints.
//
list_t* UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_mint_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetPoolsCurrent**
```c
// Pools (current) 🔥
//
// Gets pools.
//
list_t* UniswapV3API_uniswapV3GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_pool_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetPoolsDayDataCurrent**
```c
// PoolsDayData (current)
//
// Gets pools day data.
//
list_t* UniswapV3API_uniswapV3GetPoolsDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_pool_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetPoolsHourDataCurrent**
```c
// PoolsHourData (current)
//
// Gets pools hour data.
//
list_t* UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_pool_hour_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetPositionsCurrent**
```c
// Positions (current)
//
// Gets positions.
//
list_t* UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_position_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent**
```c
// PositionsSnapshots (current)
//
// Gets positions snapshots.
//
list_t* UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_position_snapshot_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetSwapsCurrent**
```c
// Swaps (current) 🔥
//
// Gets swaps.
//
list_t* UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_swap_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetTicksCurrent**
```c
// Ticks (current)
//
// Gets ticks.
//
list_t* UniswapV3API_uniswapV3GetTicksCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_tick_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetTicksDayDataCurrent**
```c
// TicksDayData (current)
//
// Gets ticks day data.
//
list_t* UniswapV3API_uniswapV3GetTicksDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_tick_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetTokensCurrent**
```c
// Tokens (current) 🔥
//
// Gets tokens.
//
list_t* UniswapV3API_uniswapV3GetTokensCurrent(apiClient_t *apiClient, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_token_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetTokensDayDataCurrent**
```c
// TokensDayData (current)
//
// Gets tokens day data.
//
list_t* UniswapV3API_uniswapV3GetTokensDayDataCurrent(apiClient_t *apiClient, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_token_v3_day_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_uniswapV3GetTokensHourDataCurrent**
```c
// TokensHourData (current)
//
// Gets tokens hour data.
//
list_t* UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v3_token_hour_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

