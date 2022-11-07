# SushiswapAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SushiswapAPI_sushiswapGetBundlesHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**SushiswapAPI_sushiswapGetBurnsHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**SushiswapAPI_sushiswapGetDayDataHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**SushiswapAPI_sushiswapGetFactoryHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**SushiswapAPI_sushiswapGetHourDataHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**SushiswapAPI_sushiswapGetLiquidityPositionHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**SushiswapAPI_sushiswapGetMintsHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**SushiswapAPI_sushiswapGetPoolsCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
[**SushiswapAPI_sushiswapGetPoolsDayDataHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**SushiswapAPI_sushiswapGetPoolsHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**SushiswapAPI_sushiswapGetPoolsHourDataHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**SushiswapAPI_sushiswapGetSwapsCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**SushiswapAPI_sushiswapGetSwapsHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**SushiswapAPI_sushiswapGetTokensCurrent**](SushiswapAPI.md#SushiswapAPI_sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
[**SushiswapAPI_sushiswapGetTokensDayDataHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**SushiswapAPI_sushiswapGetTokensHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**SushiswapAPI_sushiswapGetTransactionsHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**SushiswapAPI_sushiswapGetUsersHistorical**](SushiswapAPI.md#SushiswapAPI_sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)


# **SushiswapAPI_sushiswapGetBundlesHistorical**
```c
// GetBundles (historical)
//
// Gets bundles.
//
list_t* SushiswapAPI_sushiswapGetBundlesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_bundle_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetBurnsHistorical**
```c
// GetBurns (historical)
//
// Gets burns.
//
list_t* SushiswapAPI_sushiswapGetBurnsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_burn_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetDayDataHistorical**
```c
// GetDayData (historical)
//
// Gets day data.
//
list_t* SushiswapAPI_sushiswapGetDayDataHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_day_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetFactoryHistorical**
```c
// GetFactory (historical)
//
// Gets factory.
//
list_t* SushiswapAPI_sushiswapGetFactoryHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_factory_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetHourDataHistorical**
```c
// GetHourData (historical)
//
// Gets hour data.
//
list_t* SushiswapAPI_sushiswapGetHourDataHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_hour_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetLiquidityPositionHistorical**
```c
// GetLiquidityPosition (historical)
//
// Gets liquidity position.
//
list_t* SushiswapAPI_sushiswapGetLiquidityPositionHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_liquidity_position_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical**
```c
// GetLiquidityPositionSnapshot (historical)
//
// Gets liquidity position snapshot.
//
list_t* SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_liquidity_position_snapshot_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetMintsHistorical**
```c
// GetMints (historical)
//
// Gets mints.
//
list_t* SushiswapAPI_sushiswapGetMintsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_mint_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetPoolsCurrent**
```c
// GetPools (current)
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

# **SushiswapAPI_sushiswapGetPoolsDayDataHistorical**
```c
// GetPoolsDayData (historical)
//
// Gets pools day data.
//
list_t* SushiswapAPI_sushiswapGetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_pair_day_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetPoolsHistorical**
```c
// GetPools (historical)
//
// Gets list of pools for given filters.
//
list_t* SushiswapAPI_sushiswapGetPoolsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_pair_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetPoolsHourDataHistorical**
```c
// GetPoolsHourData (historical)
//
// Gets pools tracked each our.
//
list_t* SushiswapAPI_sushiswapGetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_pair_hour_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetSwapsCurrent**
```c
// GetSwaps (current)
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

# **SushiswapAPI_sushiswapGetSwapsHistorical**
```c
// GetSwaps (historical)
//
// Gets list of swaps for given filters.
//
list_t* SushiswapAPI_sushiswapGetSwapsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](sushiswap_swap_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetTokensCurrent**
```c
// GetTokens (current)
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

# **SushiswapAPI_sushiswapGetTokensDayDataHistorical**
```c
// GetTokensDayData (historical)
//
// Gets tokens day data.
//
list_t* SushiswapAPI_sushiswapGetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](sushiswap_token_day_data_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetTokensHistorical**
```c
// GetTokens (historical)
//
// Gets list of tokens for given filters.
//
list_t* SushiswapAPI_sushiswapGetTokensHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](sushiswap_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetTransactionsHistorical**
```c
// GetTransactions (historical)
//
// Gets transactions.
//
list_t* SushiswapAPI_sushiswapGetTransactionsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_transaction_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_sushiswapGetUsersHistorical**
```c
// GetUsers (historical)
//
// Gets users.
//
list_t* SushiswapAPI_sushiswapGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](sushiswap_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

