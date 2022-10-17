# UniswapV3API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV3API_chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**UniswapV3API_chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**UniswapV3API_chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**UniswapV3API_chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**UniswapV3API_chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**UniswapV3API_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**UniswapV3API_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**UniswapV3API_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**UniswapV3API_chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**UniswapV3API_chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**UniswapV3API_chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**UniswapV3API_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**UniswapV3API_chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**UniswapV3API_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**UniswapV3API_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**UniswapV3API_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3API.md#UniswapV3API_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **UniswapV3API_chainsChainIdDappsUniswapv3BundleCurrentGet**
```c
// GetBundles
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3BundleCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](bundle_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3BurnsCurrentGet**
```c
// GetBurns
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3BurnsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](burn_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3FactoryCurrentGet**
```c
// GetFactory
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3FactoryCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](factory_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3MintsCurrentGet**
```c
// GetMints
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3MintsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](mint_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3PoolsCurrentGet**
```c
// GetPools
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3PoolsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](pool_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
```c
// GetPoolsDayData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](pool_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
```c
// GetPoolsHourData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](pool_hour_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
```c
// GetPositionSnapshot
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](position_snapshot_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3PositionsCurrentGet**
```c
// GetPositions
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3PositionsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](position_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3SwapsCurrentGet**
```c
// GetSwaps
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3SwapsCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](swap_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3TicksCurrentGet**
```c
// GetTicks
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3TicksCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](tick_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
```c
// GetTicksDayData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](tick_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3TokensCurrentGet**
```c
// GetTokens
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3TokensCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](token_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
```c
// GetTokensDayData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](token_v3_day_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
```c
// GetTokensHourData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(apiClient_t *apiClient, char * chain_id, char * filter_token_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 
**filter_token_id** | **char \*** |  | [optional] 

### Return type

[list_t](token_hour_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV3API_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
```c
// GetUniswapDayData
//
list_t* UniswapV3API_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](uniswap_day_data_v3_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

