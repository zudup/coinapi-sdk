# UniswapV2API

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2API_uniswapV2GetBundleV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetBundleV2sHistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetBurnV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetBurnV2sHistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetLiquidityPositionV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetLiquidityPositionV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetMintV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetMintV2sHistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetPairDayDataV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetPairDayDataV2sHistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetPairHourDataV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetPairHourDataV2sHistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetPairV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetPairV2sHistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetPoolsCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**UniswapV2API_uniswapV2GetSwapV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetSwapV2sHistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetSwapsCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**UniswapV2API_uniswapV2GetTokenDayDataV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetTokenDayDataV2sHistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetTokenV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetTokenV2sHistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetTokensCurrent**](UniswapV2API.md#UniswapV2API_uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**UniswapV2API_uniswapV2GetTransactionV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetTransactionV2sHistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetUniswapDayDataV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetUniswapDayDataV2sHistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetUniswapFactoryV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetUniswapFactoryV2sHistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**UniswapV2API_uniswapV2GetUserV2sHistorical**](UniswapV2API.md#UniswapV2API_uniswapV2GetUserV2sHistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥


# **UniswapV2API_uniswapV2GetBundleV2sHistorical**
```c
// BundleV2s (historical) 🔥
//
// Gets bundlev2s.
//
list_t* UniswapV2API_uniswapV2GetBundleV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Constant 1. | [optional] 

### Return type

[list_t](uniswap_v2_bundle_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetBurnV2sHistorical**
```c
// BurnV2s (historical) 🔥
//
// Gets burnv2s.
//
list_t* UniswapV2API_uniswapV2GetBurnV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Transaction hash plus index in the transaction burn array | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 

### Return type

[list_t](uniswap_v2_burn_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2sHistorical**
```c
// LiquidityPositionSnapshotV2s (historical) 🔥
//
// Gets liquiditypositionsnapshotv2s.
//
list_t* UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * user, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 
**id** | **char \*** |  | [optional] 
**user** | **char \*** |  | [optional] 
**pair** | **char \*** |  | [optional] 

### Return type

[list_t](uniswap_v2_liquidity_position_snapshot_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetLiquidityPositionV2sHistorical**
```c
// LiquidityPositionV2s (historical) 🔥
//
// Gets liquiditypositionv2s.
//
list_t* UniswapV2API_uniswapV2GetLiquidityPositionV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * user, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | User address and pair address concatenated with a dash. | [optional] 
**user** | **char \*** | Reference to user. | [optional] 
**pair** | **char \*** | Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[list_t](uniswap_v2_liquidity_position_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetMintV2sHistorical**
```c
// MintV2s (historical) 🔥
//
// Gets mintv2s.
//
list_t* UniswapV2API_uniswapV2GetMintV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Transaction hash plus index in the transaction mint array. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 

### Return type

[list_t](uniswap_v2_mint_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetPairDayDataV2sHistorical**
```c
// PairDayDataV2s (historical) 🔥
//
// Gets pairdaydatav2s.
//
list_t* UniswapV2API_uniswapV2GetPairDayDataV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * token_0, char * token_1);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 
**token_0** | **char \*** | Reference to token0. | [optional] 
**token_1** | **char \*** | Reference to token1. | [optional] 

### Return type

[list_t](uniswap_v2_pair_day_data_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetPairHourDataV2sHistorical**
```c
// PairHourDataV2s (historical) 🔥
//
// Gets pairhourdatav2s.
//
list_t* UniswapV2API_uniswapV2GetPairHourDataV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 
**pair** | **char \*** | Address for pair contract. | [optional] 

### Return type

[list_t](uniswap_v2_pair_hour_data_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetPairV2sHistorical**
```c
// PairV2s (historical) 🔥
//
// Gets pairv2s.
//
list_t* UniswapV2API_uniswapV2GetPairV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * token_0, char * token_1);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Pair contract address. | [optional] 
**token_0** | **char \*** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **char \*** | Reference to token1 as stored in pair contract. | [optional] 

### Return type

[list_t](uniswap_v2_pair_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **UniswapV2API_uniswapV2GetSwapV2sHistorical**
```c
// SwapV2s (historical) 🔥
//
// Gets swapv2s.
//
list_t* UniswapV2API_uniswapV2GetSwapV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * pair);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Transaction hash plus index in Transaction swap array. | [optional] 
**pair** | **char \*** | Reference to pair. | [optional] 

### Return type

[list_t](uniswap_v2_swap_v2_dto.md) *


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

# **UniswapV2API_uniswapV2GetTokenDayDataV2sHistorical**
```c
// TokenDayDataV2s (historical) 🔥
//
// Gets tokendaydatav2s.
//
list_t* UniswapV2API_uniswapV2GetTokenDayDataV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 

### Return type

[list_t](uniswap_v2_token_day_data_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetTokenV2sHistorical**
```c
// TokenV2s (historical) 🔥
//
// Gets tokenv2s.
//
list_t* UniswapV2API_uniswapV2GetTokenV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id, char * symbol, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Token address. | [optional] 
**symbol** | **char \*** | Token symbol. | [optional] 
**name** | **char \*** | Token name. | [optional] 

### Return type

[list_t](uniswap_v2_token_v2_dto.md) *


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

# **UniswapV2API_uniswapV2GetTransactionV2sHistorical**
```c
// TransactionV2s (historical) 🔥
//
// Gets transactionv2s.
//
list_t* UniswapV2API_uniswapV2GetTransactionV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Ethereum transaction hash. | [optional] 

### Return type

[list_t](uniswap_v2_transaction_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetUniswapDayDataV2sHistorical**
```c
// UniswapDayDataV2s (historical) 🔥
//
// Gets uniswapdaydatav2s.
//
list_t* UniswapV2API_uniswapV2GetUniswapDayDataV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

### Return type

[list_t](uniswap_v2_uniswap_day_data_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetUniswapFactoryV2sHistorical**
```c
// UniswapFactoryV2s (historical) 🔥
//
// Gets uniswapfactoryv2s.
//
list_t* UniswapV2API_uniswapV2GetUniswapFactoryV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | Factory address. | [optional] 

### Return type

[list_t](uniswap_v2_uniswap_factory_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UniswapV2API_uniswapV2GetUserV2sHistorical**
```c
// UserV2s (historical) 🔥
//
// Gets userv2s.
//
list_t* UniswapV2API_uniswapV2GetUserV2sHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** | User address. | [optional] 

### Return type

[list_t](uniswap_v2_user_v2_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

