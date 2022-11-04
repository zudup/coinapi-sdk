# UniswapV2API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2API_dappsUniswapv2BundlesHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**UniswapV2API_dappsUniswapv2BurnsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**UniswapV2API_dappsUniswapv2DayDataHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**UniswapV2API_dappsUniswapv2FactoryHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**UniswapV2API_dappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**UniswapV2API_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**UniswapV2API_dappsUniswapv2MintsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**UniswapV2API_dappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**UniswapV2API_dappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**UniswapV2API_dappsUniswapv2PoolsCurrentGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**UniswapV2API_dappsUniswapv2PoolsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**UniswapV2API_dappsUniswapv2SwapsCurrentGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**UniswapV2API_dappsUniswapv2SwapsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**UniswapV2API_dappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**UniswapV2API_dappsUniswapv2TokensCurrentGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**UniswapV2API_dappsUniswapv2TokensHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**UniswapV2API_dappsUniswapv2TransactionsHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**UniswapV2API_dappsUniswapv2UsersHistoricalGet**](UniswapV2API.md#UniswapV2API_dappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 


# **UniswapV2API_dappsUniswapv2BundlesHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2BundlesHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2BurnsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2BurnsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2DayDataHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2DayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2FactoryHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2FactoryHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2LiquidityPositionHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2LiquidityPositionHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2MintsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2MintsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2PoolDayDataHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2PoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2PoolHourDataHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2PoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2PoolsCurrentGet**
```c
// GetPools
//
list_t* UniswapV2API_dappsUniswapv2PoolsCurrentGet(apiClient_t *apiClient, char * filter_pool_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**filter_pool_id** | **char \*** | Filter pool id | [optional] 

### Return type

[list_t](uniswap_v2_pair_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2PoolsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2PoolsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2SwapsCurrentGet**
```c
// GetSwaps
//
list_t* UniswapV2API_dappsUniswapv2SwapsCurrentGet(apiClient_t *apiClient);
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

# **UniswapV2API_dappsUniswapv2SwapsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2SwapsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2TokenDayDataHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2TokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**tokenId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2TokensCurrentGet**
```c
// GetTokens
//
list_t* UniswapV2API_dappsUniswapv2TokensCurrentGet(apiClient_t *apiClient);
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

# **UniswapV2API_dappsUniswapv2TokensHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2TokensHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**tokenId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2TransactionsHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2TransactionsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_dappsUniswapv2UsersHistoricalGet**
```c
void UniswapV2API_dappsUniswapv2UsersHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

