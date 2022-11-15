# DexApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchDTOsHistorical**](DexApi.md#dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositDTOsHistorical**](DexApi.md#dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrderDTOsHistorical**](DexApi.md#dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPriceDTOsHistorical**](DexApi.md#dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionDTOsHistorical**](DexApi.md#dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsDTOsHistorical**](DexApi.md#dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokenDTOsHistorical**](DexApi.md#dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradeDTOsHistorical**](DexApi.md#dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUserDTOsHistorical**](DexApi.md#dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawDTOsHistorical**](DexApi.md#dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**dexGetWithdrawRequestDTOsHistorical**](DexApi.md#dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexGetWithdrawsRequestsHistorical**](DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)



## dexGetBatchDTOsHistorical

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example

```bash
 dexGetBatchDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetBatchesHistorical

Batches (historical)

Gets batches.

### Example

```bash
 dexGetBatchesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

[**array[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetDepositDTOsHistorical

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example

```bash
 dexGetDepositDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetDepositsHistorical

Deposits (historical)

Gets deposits.

### Example

```bash
 dexGetDepositsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetOrderDTOsHistorical

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```bash
 dexGetOrderDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetOrdersHistorical

Orders (historical)

Gets orders.

### Example

```bash
 dexGetOrdersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetPriceDTOsHistorical

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example

```bash
 dexGetPriceDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetPricesHistorical

Prices (historical)

Gets prices.

### Example

```bash
 dexGetPricesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetSolutionDTOsHistorical

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example

```bash
 dexGetSolutionDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetSolutionsHistorical

Solutions (historical)

Gets solutions.

### Example

```bash
 dexGetSolutionsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetStatsDTOsHistorical

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example

```bash
 dexGetStatsDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetStatsHistorical

Stats (historical)

Gets stats.

### Example

```bash
 dexGetStatsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

[**array[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTokenDTOsHistorical

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```bash
 dexGetTokenDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTokensHistorical

Tokens (historical) 🔥

Gets tokens.

### Example

```bash
 dexGetTokensHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTradeDTOsHistorical

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```bash
 dexGetTradeDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTradesHistorical

Trades (historical) 🔥

Gets trades.

### Example

```bash
 dexGetTradesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

[**array[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetUserDTOsHistorical

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```bash
 dexGetUserDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetUsersHistorical

Users (historical)

Gets users.

### Example

```bash
 dexGetUsersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

[**array[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawDTOsHistorical

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example

```bash
 dexGetWithdrawDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawRequestDTOsHistorical

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example

```bash
 dexGetWithdrawRequestDTOsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawsHistorical

Withdraws (historical)

Gets withdraws.

### Example

```bash
 dexGetWithdrawsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetWithdrawsRequestsHistorical

WithdrawsRequests (historical)

Gets withdraws requests.

### Example

```bash
 dexGetWithdrawsRequestsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

