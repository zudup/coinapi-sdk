# UniswapV2Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundleV2sHistorical**](UniswapV2Api.md#uniswapV2GetBundleV2sHistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**uniswapV2GetBurnV2sHistorical**](UniswapV2Api.md#uniswapV2GetBurnV2sHistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**uniswapV2GetMintV2sHistorical**](UniswapV2Api.md#uniswapV2GetMintV2sHistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**uniswapV2GetPairDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairDayDataV2sHistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**uniswapV2GetPairHourDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairHourDataV2sHistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**uniswapV2GetPairV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairV2sHistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapV2sHistorical**](UniswapV2Api.md#uniswapV2GetSwapV2sHistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokenDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenDayDataV2sHistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**uniswapV2GetTokenV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenV2sHistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswapV2GetTransactionV2sHistorical**](UniswapV2Api.md#uniswapV2GetTransactionV2sHistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**uniswapV2GetUniswapDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapDayDataV2sHistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**uniswapV2GetUniswapFactoryV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapFactoryV2sHistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**uniswapV2GetUserV2sHistorical**](UniswapV2Api.md#uniswapV2GetUserV2sHistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥



## uniswapV2GetBundleV2sHistorical

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example

```bash
 uniswapV2GetBundleV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Constant 1. | [optional] [default to null]

### Return type

[**array[UniswapV2BundleV2DTO]**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetBurnV2sHistorical

BurnV2s (historical) 🔥

Gets burnv2s.

### Example

```bash
 uniswapV2GetBurnV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Transaction hash plus index in the transaction burn array | [optional] [default to null]
 **pair** | **string** | Reference to pair. | [optional] [default to null]

### Return type

[**array[UniswapV2BurnV2DTO]**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetLiquidityPositionSnapshotV2sHistorical

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

### Example

```bash
 uniswapV2GetLiquidityPositionSnapshotV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value  pair=value
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

[**array[UniswapV2LiquidityPositionSnapshotV2DTO]**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetLiquidityPositionV2sHistorical

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example

```bash
 uniswapV2GetLiquidityPositionV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  user=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | User address and pair address concatenated with a dash. | [optional] [default to null]
 **user** | **string** | Reference to user. | [optional] [default to null]
 **pair** | **string** | Reference to the pair liquidity is being provided on. | [optional] [default to null]

### Return type

[**array[UniswapV2LiquidityPositionV2DTO]**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetMintV2sHistorical

MintV2s (historical) 🔥

Gets mintv2s.

### Example

```bash
 uniswapV2GetMintV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Transaction hash plus index in the transaction mint array. | [optional] [default to null]
 **pair** | **string** | Reference to pair. | [optional] [default to null]

### Return type

[**array[UniswapV2MintV2DTO]**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetPairDayDataV2sHistorical

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example

```bash
 uniswapV2GetPairDayDataV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  token_0=value  token_1=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **token0** | **string** | Reference to token0. | [optional] [default to null]
 **token1** | **string** | Reference to token1. | [optional] [default to null]

### Return type

[**array[UniswapV2PairDayDataV2DTO]**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetPairHourDataV2sHistorical

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example

```bash
 uniswapV2GetPairHourDataV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **pair** | **string** | Address for pair contract. | [optional] [default to null]

### Return type

[**array[UniswapV2PairHourDataV2DTO]**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetPairV2sHistorical

PairV2s (historical) 🔥

Gets pairv2s.

### Example

```bash
 uniswapV2GetPairV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  token_0=value  token_1=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Pair contract address. | [optional] [default to null]
 **token0** | **string** | Reference to token0 as stored in pair contract. | [optional] [default to null]
 **token1** | **string** | Reference to token1 as stored in pair contract. | [optional] [default to null]

### Return type

[**array[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetPoolsCurrent

Pools (current) 🔥

Gets pools.

### Example

```bash
 uniswapV2GetPoolsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetSwapV2sHistorical

SwapV2s (historical) 🔥

Gets swapv2s.

### Example

```bash
 uniswapV2GetSwapV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  pair=value
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

[**array[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetSwapsCurrent

Swaps (current) 🔥

Gets swaps.

### Example

```bash
 uniswapV2GetSwapsCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetTokenDayDataV2sHistorical

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example

```bash
 uniswapV2GetTokenDayDataV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **string** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **string** | The end date of timeframe. | [optional] [default to null]
 **id** | **string** | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] [default to null]

### Return type

[**array[UniswapV2TokenDayDataV2DTO]**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetTokenV2sHistorical

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example

```bash
 uniswapV2GetTokenV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value  symbol=value  name=value
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

[**array[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetTokensCurrent

Tokens (current) 🔥

Gets tokens.

### Example

```bash
 uniswapV2GetTokensCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetTransactionV2sHistorical

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example

```bash
 uniswapV2GetTransactionV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
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

[**array[UniswapV2TransactionV2DTO]**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetUniswapDayDataV2sHistorical

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example

```bash
 uniswapV2GetUniswapDayDataV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
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

[**array[UniswapV2UniswapDayDataV2DTO]**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetUniswapFactoryV2sHistorical

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example

```bash
 uniswapV2GetUniswapFactoryV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
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

[**array[UniswapV2UniswapFactoryV2DTO]**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV2GetUserV2sHistorical

UserV2s (historical) 🔥

Gets userv2s.

### Example

```bash
 uniswapV2GetUserV2sHistorical  startBlock=value  endBlock=value  startDate=value  endDate=value  id=value
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

[**array[UniswapV2UserV2DTO]**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

