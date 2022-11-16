# SushiswapApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetExchangesCurrent**](SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dexGetTradesCurrent**](SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
[**sushiswapGetDayDatasHistorical**](SushiswapApi.md#sushiswapGetDayDatasHistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
[**sushiswapGetFactorysHistorical**](SushiswapApi.md#sushiswapGetFactorysHistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
[**sushiswapGetHourDatasHistorical**](SushiswapApi.md#sushiswapGetHourDatasHistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
[**sushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotsHistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
[**sushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionsHistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
[**sushiswapGetPairDayDatasHistorical**](SushiswapApi.md#sushiswapGetPairDayDatasHistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
[**sushiswapGetPairHourDatasHistorical**](SushiswapApi.md#sushiswapGetPairHourDatasHistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
[**sushiswapGetPairsHistorical**](SushiswapApi.md#sushiswapGetPairsHistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**sushiswapGetTokenDayDatasHistorical**](SushiswapApi.md#sushiswapGetTokenDayDatasHistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥



## curveGetExchangesCurrent

Exchanges (current) 🔥

Gets exchanges.

### Example

```bash
 curveGetExchangesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[CurveExchangeDTO]**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dexGetTradesCurrent

Trades (current) 🔥

Gets trades.

### Example

```bash
 dexGetTradesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetBundlesHistorical

Bundles (historical) 🔥

Gets bundles.

### Example

```bash
 sushiswapGetBundlesHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Hardcoded to '1'. | [optional] [default to null]

### Return type

[**array[SushiswapBundleDTO]**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetBurnsHistorical

Burns (historical) 🔥

Gets burns.

### Example

```bash
 sushiswapGetBurnsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapBurnDTO]**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetDayDatasHistorical

DayDatas (historical) 🔥

Gets daydatas.

### Example

```bash
 sushiswapGetDayDatasHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional] [default to null]

### Return type

[**array[SushiswapDayDataDTO]**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetFactorysHistorical

Factorys (historical) 🔥

Gets factorys.

### Example

```bash
 sushiswapGetFactorysHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Factory address. | [optional] [default to null]

### Return type

[**array[SushiswapFactoryDTO]**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetHourDatasHistorical

HourDatas (historical) 🔥

Gets hourdatas.

### Example

```bash
 sushiswapGetHourDatasHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Start of hour timestamp. | [optional] [default to null]

### Return type

[**array[SushiswapHourDataDTO]**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetLiquidityPositionSnapshotsHistorical

LiquidityPositionSnapshots (historical) 🔥

Gets liquiditypositionsnapshots.

### Example

```bash
 sushiswapGetLiquidityPositionSnapshotsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **user** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapLiquidityPositionSnapshotDTO]**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetLiquidityPositionsHistorical

LiquidityPositions (historical) 🔥

Gets liquiditypositions.

### Example

```bash
 sushiswapGetLiquidityPositionsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **user** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapLiquidityPositionDTO]**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetMintsHistorical

Mints (historical) 🔥

Gets mints.

### Example

```bash
 sushiswapGetMintsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapMintDTO]**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetPairDayDatasHistorical

PairDayDatas (historical) 🔥

Gets pairdaydatas.

### Example

```bash
 sushiswapGetPairDayDatasHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value  token_0=value  token_1=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]
 **token0** | **string** |  | [optional] [default to null]
 **token1** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapPairDayDataDTO]**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetPairHourDatasHistorical

PairHourDatas (historical) 🔥

Gets pairhourdatas.

### Example

```bash
 sushiswapGetPairHourDatasHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **pair** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapPairHourDataDTO]**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetPairsHistorical

Pairs (historical) 🔥

Gets pairs.

### Example

```bash
 sushiswapGetPairsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  name=value  token_0=value  token_1=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **name** | **string** |  | [optional] [default to null]
 **token0** | **string** |  | [optional] [default to null]
 **token1** | **string** |  | [optional] [default to null]

### Return type

[**array[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetPoolsCurrent

Pools (current) 🔥

Gets pools.

### Example

```bash
 sushiswapGetPoolsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetSwapsCurrent

Swaps (current) 🔥

Gets swaps.

### Example

```bash
 sushiswapGetSwapsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetSwapsHistorical

Swaps (historical) 🔥

Gets swaps.

### Example

```bash
 sushiswapGetSwapsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Transaction hash plus index in Transaction swap array. | [optional] [default to null]
 **pair** | **string** | Reference to pair. | [optional] [default to null]

### Return type

[**array[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetTokenDayDatasHistorical

TokenDayDatas (historical) 🔥

Gets tokendaydatas.

### Example

```bash
 sushiswapGetTokenDayDatasHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Identifier, day start timestamp in unix / 86400. | [optional] [default to null]

### Return type

[**array[SushiswapTokenDayDataDTO]**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetTokensCurrent

Tokens (current) 🔥

Gets tokens.

### Example

```bash
 sushiswapGetTokensCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetTokensHistorical

Tokens (historical) 🔥

Gets tokens.

### Example

```bash
 sushiswapGetTokensHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  symbol=value  name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Token address. | [optional] [default to null]
 **symbol** | **string** | Token symbol. | [optional] [default to null]
 **name** | **string** | Token name. | [optional] [default to null]

### Return type

[**array[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetTransactionsHistorical

Transactions (historical) 🔥

Gets transactions.

### Example

```bash
 sushiswapGetTransactionsHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Ethereum transaction hash. | [optional] [default to null]

### Return type

[**array[SushiswapTransactionDTO]**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sushiswapGetUsersHistorical

Users (historical) 🔥

Gets users.

### Example

```bash
 sushiswapGetUsersHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | User address. | [optional] [default to null]

### Return type

[**array[SushiswapUserDTO]**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

