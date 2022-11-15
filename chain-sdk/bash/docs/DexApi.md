# DexApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical-manual | Batches (historical)
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical-manual | Deposits (historical)
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical-manual | Orders (historical)
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical-manual | Prices (historical)
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical-manual | Solutions (historical)
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical-manual | Stats (historical)
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical-manual | Trades (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical-manual | Users (historical)
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical-manual | Withdraws (historical)
[**dexGetWithdrawsRequestsHistorical**](DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical)



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

