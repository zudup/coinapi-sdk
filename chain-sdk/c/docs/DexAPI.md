# DexAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexAPI_dexGetBatchDTOsHistorical**](DexAPI.md#DexAPI_dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**DexAPI_dexGetBatchesHistorical**](DexAPI.md#DexAPI_dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**DexAPI_dexGetDepositDTOsHistorical**](DexAPI.md#DexAPI_dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**DexAPI_dexGetDepositsHistorical**](DexAPI.md#DexAPI_dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**DexAPI_dexGetOrderDTOsHistorical**](DexAPI.md#DexAPI_dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**DexAPI_dexGetOrdersHistorical**](DexAPI.md#DexAPI_dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**DexAPI_dexGetPriceDTOsHistorical**](DexAPI.md#DexAPI_dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**DexAPI_dexGetPricesHistorical**](DexAPI.md#DexAPI_dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**DexAPI_dexGetSolutionDTOsHistorical**](DexAPI.md#DexAPI_dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**DexAPI_dexGetSolutionsHistorical**](DexAPI.md#DexAPI_dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**DexAPI_dexGetStatsDTOsHistorical**](DexAPI.md#DexAPI_dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**DexAPI_dexGetStatsHistorical**](DexAPI.md#DexAPI_dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**DexAPI_dexGetTokenDTOsHistorical**](DexAPI.md#DexAPI_dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**DexAPI_dexGetTokensHistorical**](DexAPI.md#DexAPI_dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**DexAPI_dexGetTradeDTOsHistorical**](DexAPI.md#DexAPI_dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**DexAPI_dexGetTradesHistorical**](DexAPI.md#DexAPI_dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**DexAPI_dexGetUserDTOsHistorical**](DexAPI.md#DexAPI_dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**DexAPI_dexGetUsersHistorical**](DexAPI.md#DexAPI_dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**DexAPI_dexGetWithdrawDTOsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**DexAPI_dexGetWithdrawRequestDTOsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**DexAPI_dexGetWithdrawsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**DexAPI_dexGetWithdrawsRequestsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)


# **DexAPI_dexGetBatchDTOsHistorical**
```c
// BatchDTOs (historical) 🔥
//
// Gets BatchDTOs.
//
list_t* DexAPI_dexGetBatchDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_batch_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetBatchesHistorical**
```c
// Batches (historical)
//
// Gets batches.
//
list_t* DexAPI_dexGetBatchesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](dex_batch_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetDepositDTOsHistorical**
```c
// DepositDTOs (historical) 🔥
//
// Gets DepositDTOs.
//
list_t* DexAPI_dexGetDepositDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_deposit_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetDepositsHistorical**
```c
// Deposits (historical)
//
// Gets deposits.
//
list_t* DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_deposit_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetOrderDTOsHistorical**
```c
// OrderDTOs (historical) 🔥
//
// Gets OrderDTOs.
//
list_t* DexAPI_dexGetOrderDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetOrdersHistorical**
```c
// Orders (historical)
//
// Gets orders.
//
list_t* DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetPriceDTOsHistorical**
```c
// PriceDTOs (historical) 🔥
//
// Gets PriceDTOs.
//
list_t* DexAPI_dexGetPriceDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_price_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetPricesHistorical**
```c
// Prices (historical)
//
// Gets prices.
//
list_t* DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_price_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetSolutionDTOsHistorical**
```c
// SolutionDTOs (historical) 🔥
//
// Gets SolutionDTOs.
//
list_t* DexAPI_dexGetSolutionDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_solution_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetSolutionsHistorical**
```c
// Solutions (historical)
//
// Gets solutions.
//
list_t* DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_solution_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetStatsDTOsHistorical**
```c
// StatsDTOs (historical) 🔥
//
// Gets StatsDTOs.
//
list_t* DexAPI_dexGetStatsDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_stats_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetStatsHistorical**
```c
// Stats (historical)
//
// Gets stats.
//
list_t* DexAPI_dexGetStatsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](dex_stats_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTokenDTOsHistorical**
```c
// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t* DexAPI_dexGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTokensHistorical**
```c
// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t* DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTradeDTOsHistorical**
```c
// TradeDTOs (historical) 🔥
//
// Gets TradeDTOs.
//
list_t* DexAPI_dexGetTradeDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetTradesHistorical**
```c
// Trades (historical) 🔥
//
// Gets trades.
//
list_t* DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](dex_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetUserDTOsHistorical**
```c
// UserDTOs (historical) 🔥
//
// Gets UserDTOs.
//
list_t* DexAPI_dexGetUserDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetUsersHistorical**
```c
// Users (historical)
//
// Gets users.
//
list_t* DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](dex_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawDTOsHistorical**
```c
// WithdrawDTOs (historical) 🔥
//
// Gets WithdrawDTOs.
//
list_t* DexAPI_dexGetWithdrawDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_withdraw_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawRequestDTOsHistorical**
```c
// WithdrawRequestDTOs (historical) 🔥
//
// Gets WithdrawRequestDTOs.
//
list_t* DexAPI_dexGetWithdrawRequestDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](dex_withdraw_request_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawsHistorical**
```c
// Withdraws (historical)
//
// Gets withdraws.
//
list_t* DexAPI_dexGetWithdrawsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_withdraw_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DexAPI_dexGetWithdrawsRequestsHistorical**
```c
// WithdrawsRequests (historical)
//
// Gets withdraws requests.
//
list_t* DexAPI_dexGetWithdrawsRequestsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](dex_withdraw_request_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

