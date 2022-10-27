# SushiswapApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#dappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical | 
[**dappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#dappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical | 
[**dappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical | 
[**dappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#dappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical | 
[**dappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#dappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical | 
[**dappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#dappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**dappsSushiswapMintsHistoricalGet**](SushiswapApi.md#dappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical | 
[**dappsSushiswapPoiHistoricalGet**](SushiswapApi.md#dappsSushiswapPoiHistoricalGet) | **GET** /dapps/sushiswap/poi/historical | 
[**dappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**dappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**dappsSushiswapPoolsCurrentGet**](SushiswapApi.md#dappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools
[**dappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | 
[**dappsSushiswapSwapsCurrentGet**](SushiswapApi.md#dappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**dappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#dappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | 
[**dappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**dappsSushiswapTokensCurrentGet**](SushiswapApi.md#dappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**dappsSushiswapTokensHistoricalGet**](SushiswapApi.md#dappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | 
[**dappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#dappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**dappsSushiswapUsersHistoricalGet**](SushiswapApi.md#dappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 



## dappsSushiswapBundlesHistoricalGet



### Example

```bash
 dappsSushiswapBundlesHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapBurnsHistoricalGet



### Example

```bash
 dappsSushiswapBurnsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapDayDataHistoricalGet



### Example

```bash
 dappsSushiswapDayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapFactoryHistoricalGet



### Example

```bash
 dappsSushiswapFactoryHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapHourDataHistoricalGet



### Example

```bash
 dappsSushiswapHourDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapLiquidityPositionHistoricalGet



### Example

```bash
 dappsSushiswapLiquidityPositionHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapLiquidityPositionSnapshotsHistoricalGet



### Example

```bash
 dappsSushiswapLiquidityPositionSnapshotsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapMintsHistoricalGet



### Example

```bash
 dappsSushiswapMintsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapPoiHistoricalGet



### Example

```bash
 dappsSushiswapPoiHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapPoolDayDataHistoricalGet



### Example

```bash
 dappsSushiswapPoolDayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapPoolHourDataHistoricalGet



### Example

```bash
 dappsSushiswapPoolHourDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapPoolsCurrentGet

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example

```bash
 dappsSushiswapPoolsCurrentGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[PairDTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsSushiswapPoolsHistoricalGet



### Example

```bash
 dappsSushiswapPoolsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapSwapsCurrentGet

GetSwaps

### Example

```bash
 dappsSushiswapSwapsCurrentGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SwapDTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsSushiswapSwapsHistoricalGet



### Example

```bash
 dappsSushiswapSwapsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
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


## dappsSushiswapTokenDayDataHistoricalGet



### Example

```bash
 dappsSushiswapTokenDayDataHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
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


## dappsSushiswapTokensCurrentGet

GetTokens

### Example

```bash
 dappsSushiswapTokensCurrentGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[TokenDTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsSushiswapTokensHistoricalGet



### Example

```bash
 dappsSushiswapTokensHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
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


## dappsSushiswapTransactionsHistoricalGet



### Example

```bash
 dappsSushiswapTransactionsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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


## dappsSushiswapUsersHistoricalGet



### Example

```bash
 dappsSushiswapUsersHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
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

