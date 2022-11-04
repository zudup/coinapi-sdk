# UniswapV2Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**dappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**dappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**dappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#dappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**dappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**dappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**dappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**dappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#dappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**dappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**dappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#dappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**dappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**dappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**dappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#dappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**dappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**dappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**dappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#dappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 



## dappsUniswapv2BundlesHistoricalGet



### Example

```bash
 dappsUniswapv2BundlesHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2BurnsHistoricalGet



### Example

```bash
 dappsUniswapv2BurnsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2DayDataHistoricalGet



### Example

```bash
 dappsUniswapv2DayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2FactoryHistoricalGet



### Example

```bash
 dappsUniswapv2FactoryHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2LiquidityPositionHistoricalGet



### Example

```bash
 dappsUniswapv2LiquidityPositionHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet



### Example

```bash
 dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2MintsHistoricalGet



### Example

```bash
 dappsUniswapv2MintsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2PoolDayDataHistoricalGet



### Example

```bash
 dappsUniswapv2PoolDayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2PoolHourDataHistoricalGet



### Example

```bash
 dappsUniswapv2PoolHourDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2PoolsCurrentGet

GetPools

### Example

```bash
 dappsUniswapv2PoolsCurrentGet  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PairV2DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2PoolsHistoricalGet



### Example

```bash
 dappsUniswapv2PoolsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2SwapsCurrentGet

GetSwaps

### Example

```bash
 dappsUniswapv2SwapsCurrentGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SwapV2DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2SwapsHistoricalGet



### Example

```bash
 dappsUniswapv2SwapsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2TokenDayDataHistoricalGet



### Example

```bash
 dappsUniswapv2TokenDayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2TokensCurrentGet

GetTokens

### Example

```bash
 dappsUniswapv2TokensCurrentGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[TokenV2DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2TokensHistoricalGet



### Example

```bash
 dappsUniswapv2TokensHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
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

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2TransactionsHistoricalGet



### Example

```bash
 dappsUniswapv2TransactionsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsUniswapv2UsersHistoricalGet



### Example

```bash
 dappsUniswapv2UsersHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

