# SushiswapAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SushiswapAPI_dappsSushiswapBundlesHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical | 
[**SushiswapAPI_dappsSushiswapBurnsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical | 
[**SushiswapAPI_dappsSushiswapDayDataHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical | 
[**SushiswapAPI_dappsSushiswapFactoryHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical | 
[**SushiswapAPI_dappsSushiswapHourDataHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical | 
[**SushiswapAPI_dappsSushiswapLiquidityPositionHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**SushiswapAPI_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**SushiswapAPI_dappsSushiswapMintsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical | 
[**SushiswapAPI_dappsSushiswapPoolDayDataHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**SushiswapAPI_dappsSushiswapPoolHourDataHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**SushiswapAPI_dappsSushiswapPoolsCurrentGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools
[**SushiswapAPI_dappsSushiswapPoolsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**SushiswapAPI_dappsSushiswapSwapsCurrentGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**SushiswapAPI_dappsSushiswapSwapsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**SushiswapAPI_dappsSushiswapTokensCurrentGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**SushiswapAPI_dappsSushiswapTokensHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**SushiswapAPI_dappsSushiswapTransactionsHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**SushiswapAPI_dappsSushiswapUsersHistoricalGet**](SushiswapAPI.md#SushiswapAPI_dappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 


# **SushiswapAPI_dappsSushiswapBundlesHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapBundlesHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

# **SushiswapAPI_dappsSushiswapBurnsHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapBurnsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapDayDataHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapDayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

# **SushiswapAPI_dappsSushiswapFactoryHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapFactoryHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

# **SushiswapAPI_dappsSushiswapHourDataHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapHourDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

# **SushiswapAPI_dappsSushiswapLiquidityPositionHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapLiquidityPositionHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapMintsHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapMintsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapPoolDayDataHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapPoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapPoolHourDataHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapPoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapPoolsCurrentGet**
```c
// GetPools
//
// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
//
list_t* SushiswapAPI_dappsSushiswapPoolsCurrentGet(apiClient_t *apiClient);
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

# **SushiswapAPI_dappsSushiswapPoolsHistoricalGet**
```c
// GetPools (historical)
//
list_t* SushiswapAPI_dappsSushiswapPoolsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapSwapsCurrentGet**
```c
// GetSwaps
//
list_t* SushiswapAPI_dappsSushiswapSwapsCurrentGet(apiClient_t *apiClient);
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

# **SushiswapAPI_dappsSushiswapSwapsHistoricalGet**
```c
// GetSwaps (historical)
//
list_t* SushiswapAPI_dappsSushiswapSwapsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

# **SushiswapAPI_dappsSushiswapTokensCurrentGet**
```c
// GetTokens
//
list_t* SushiswapAPI_dappsSushiswapTokensCurrentGet(apiClient_t *apiClient);
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

# **SushiswapAPI_dappsSushiswapTokensHistoricalGet**
```c
// GetTokens (historical)
//
list_t* SushiswapAPI_dappsSushiswapTokensHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

# **SushiswapAPI_dappsSushiswapTransactionsHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapTransactionsHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

# **SushiswapAPI_dappsSushiswapUsersHistoricalGet**
```c
void SushiswapAPI_dappsSushiswapUsersHistoricalGet(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

