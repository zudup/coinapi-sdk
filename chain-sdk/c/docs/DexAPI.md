# DexAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexAPI_dexGetBatchesHistorical**](DexAPI.md#DexAPI_dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | GetBatches (historical)
[**DexAPI_dexGetDepositsHistorical**](DexAPI.md#DexAPI_dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | GetDeposits (historical)
[**DexAPI_dexGetOrdersHistorical**](DexAPI.md#DexAPI_dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | GetOrders (historical)
[**DexAPI_dexGetPricesHistorical**](DexAPI.md#DexAPI_dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | GetPrices (historical)
[**DexAPI_dexGetSolutionsHistorical**](DexAPI.md#DexAPI_dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | GetSolutions (historical)
[**DexAPI_dexGetStatsHistorical**](DexAPI.md#DexAPI_dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | GetStats (historical)
[**DexAPI_dexGetTokensHistorical**](DexAPI.md#DexAPI_dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | GetTokens (historical) 🔥
[**DexAPI_dexGetTradesHistorical**](DexAPI.md#DexAPI_dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | GetTrades (historical) 🔥
[**DexAPI_dexGetUsersHistorical**](DexAPI.md#DexAPI_dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | GetUsers (historical)
[**DexAPI_dexGetWithdrawsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | GetWithdraws (historical)
[**DexAPI_dexGetWithdrawsRequestsHistorical**](DexAPI.md#DexAPI_dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | GetWithdrawsRequests (historical)


# **DexAPI_dexGetBatchesHistorical**
```c
// GetBatches (historical)
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

# **DexAPI_dexGetDepositsHistorical**
```c
// GetDeposits (historical)
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

# **DexAPI_dexGetOrdersHistorical**
```c
// GetOrders (historical)
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

# **DexAPI_dexGetPricesHistorical**
```c
// GetPrices (historical)
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

# **DexAPI_dexGetSolutionsHistorical**
```c
// GetSolutions (historical)
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

# **DexAPI_dexGetStatsHistorical**
```c
// GetStats (historical)
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

# **DexAPI_dexGetTokensHistorical**
```c
// GetTokens (historical) 🔥
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

# **DexAPI_dexGetTradesHistorical**
```c
// GetTrades (historical) 🔥
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

# **DexAPI_dexGetUsersHistorical**
```c
// GetUsers (historical)
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

# **DexAPI_dexGetWithdrawsHistorical**
```c
// GetWithdraws (historical)
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
// GetWithdrawsRequests (historical)
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

