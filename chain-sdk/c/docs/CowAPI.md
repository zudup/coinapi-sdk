# CowAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowAPI_cowGetOrderDTOsHistorical**](CowAPI.md#CowAPI_cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**CowAPI_cowGetOrdersHistorical**](CowAPI.md#CowAPI_cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**CowAPI_cowGetSettlementDTOsHistorical**](CowAPI.md#CowAPI_cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**CowAPI_cowGetSettlementsHistorical**](CowAPI.md#CowAPI_cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**CowAPI_cowGetTokenDTOsHistorical**](CowAPI.md#CowAPI_cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**CowAPI_cowGetTokensHistorical**](CowAPI.md#CowAPI_cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**CowAPI_cowGetTradeDTOsHistorical**](CowAPI.md#CowAPI_cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**CowAPI_cowGetTradesHistorical**](CowAPI.md#CowAPI_cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**CowAPI_cowGetUserDTOsHistorical**](CowAPI.md#CowAPI_cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**CowAPI_cowGetUsersHistorical**](CowAPI.md#CowAPI_cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)


# **CowAPI_cowGetOrderDTOsHistorical**
```c
// OrderDTOs (historical) 🔥
//
// Gets OrderDTOs.
//
list_t* CowAPI_cowGetOrderDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](cow_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetOrdersHistorical**
```c
// Orders (historical)
//
// Gets orders.
//
list_t* CowAPI_cowGetOrdersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](cow_order_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetSettlementDTOsHistorical**
```c
// SettlementDTOs (historical) 🔥
//
// Gets SettlementDTOs.
//
list_t* CowAPI_cowGetSettlementDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](cow_settlement_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetSettlementsHistorical**
```c
// Settlements (historical)
//
// Gets settlements.
//
list_t* CowAPI_cowGetSettlementsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](cow_settlement_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTokenDTOsHistorical**
```c
// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t* CowAPI_cowGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](cow_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTokensHistorical**
```c
// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t* CowAPI_cowGetTokensHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * tokenId);
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

[list_t](cow_token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTradeDTOsHistorical**
```c
// TradeDTOs (historical) 🔥
//
// Gets TradeDTOs.
//
list_t* CowAPI_cowGetTradeDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](cow_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetTradesHistorical**
```c
// Trades (historical) 🔥
//
// Gets trades.
//
list_t* CowAPI_cowGetTradesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](cow_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetUserDTOsHistorical**
```c
// UserDTOs (historical) 🔥
//
// Gets UserDTOs.
//
list_t* CowAPI_cowGetUserDTOsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

[list_t](cow_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CowAPI_cowGetUsersHistorical**
```c
// Users (historical)
//
// Gets users.
//
list_t* CowAPI_cowGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
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

[list_t](cow_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

