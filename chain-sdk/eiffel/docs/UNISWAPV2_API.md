# UNISWAPV2_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_bundle_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_bundle_v2s_historical) | **Get** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**uniswap_v2_get_burn_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_burn_v2s_historical) | **Get** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**uniswap_v2_get_liquidity_position_snapshot_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_liquidity_position_snapshot_v2s_historical) | **Get** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**uniswap_v2_get_liquidity_position_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_liquidity_position_v2s_historical) | **Get** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**uniswap_v2_get_mint_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_mint_v2s_historical) | **Get** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**uniswap_v2_get_pair_day_data_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_pair_day_data_v2s_historical) | **Get** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**uniswap_v2_get_pair_hour_data_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_pair_hour_data_v2s_historical) | **Get** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**uniswap_v2_get_pair_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_pair_v2s_historical) | **Get** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**uniswap_v2_get_pools_current**](UNISWAPV2_API.md#uniswap_v2_get_pools_current) | **Get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_swap_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_swap_v2s_historical) | **Get** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**uniswap_v2_get_swaps_current**](UNISWAPV2_API.md#uniswap_v2_get_swaps_current) | **Get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_token_day_data_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_token_day_data_v2s_historical) | **Get** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**uniswap_v2_get_token_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_token_v2s_historical) | **Get** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**uniswap_v2_get_tokens_current**](UNISWAPV2_API.md#uniswap_v2_get_tokens_current) | **Get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswap_v2_get_transaction_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_transaction_v2s_historical) | **Get** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**uniswap_v2_get_uniswap_day_data_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_uniswap_day_data_v2s_historical) | **Get** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**uniswap_v2_get_uniswap_factory_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_uniswap_factory_v2s_historical) | **Get** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**uniswap_v2_get_user_v2s_historical**](UNISWAPV2_API.md#uniswap_v2_get_user_v2s_historical) | **Get** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥


# **uniswap_v2_get_bundle_v2s_historical**
> uniswap_v2_get_bundle_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_BUNDLE_V2_DTO]


BundleV2s (historical) 🔥

Gets bundlev2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Constant 1. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_BUNDLE_V2_DTO]**](UniswapV2.BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_burn_v2s_historical**
> uniswap_v2_get_burn_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_BURN_V2_DTO]


BurnV2s (historical) 🔥

Gets burnv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Transaction hash plus index in the transaction burn array | [optional] [default to null]
 **pair** | **STRING_32**| Reference to pair. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_BURN_V2_DTO]**](UniswapV2.BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_position_snapshot_v2s_historical**
> uniswap_v2_get_liquidity_position_snapshot_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]


LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **user** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]**](UniswapV2.LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_position_v2s_historical**
> uniswap_v2_get_liquidity_position_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]


LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| User address and pair address concatenated with a dash. | [optional] [default to null]
 **user** | **STRING_32**| Reference to user. | [optional] [default to null]
 **pair** | **STRING_32**| Reference to the pair liquidity is being provided on. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]**](UniswapV2.LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_mint_v2s_historical**
> uniswap_v2_get_mint_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_MINT_V2_DTO]


MintV2s (historical) 🔥

Gets mintv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Transaction hash plus index in the transaction mint array. | [optional] [default to null]
 **pair** | **STRING_32**| Reference to pair. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_MINT_V2_DTO]**](UniswapV2.MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_day_data_v2s_historical**
> uniswap_v2_get_pair_day_data_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; token_0:  detachable STRING_32 ; token_1:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]


PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **token_0** | **STRING_32**| Reference to token0. | [optional] [default to null]
 **token_1** | **STRING_32**| Reference to token1. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]**](UniswapV2.PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_hour_data_v2s_historical**
> uniswap_v2_get_pair_hour_data_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]


PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**| Address for pair contract. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]**](UniswapV2.PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_v2s_historical**
> uniswap_v2_get_pair_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; token_0:  detachable STRING_32 ; token_1:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_V2_DTO]


PairV2s (historical) 🔥

Gets pairv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Pair contract address. | [optional] [default to null]
 **token_0** | **STRING_32**| Reference to token0 as stored in pair contract. | [optional] [default to null]
 **token_1** | **STRING_32**| Reference to token1 as stored in pair contract. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_V2_DTO]**](UniswapV2.PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools_current**
> uniswap_v2_get_pools_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_V2_DTO]


Pools (current) 🔥

Gets pools.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_V2_DTO]**](UniswapV2.PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swap_v2s_historical**
> uniswap_v2_get_swap_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_SWAP_V2_DTO]


SwapV2s (historical) 🔥

Gets swapv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Transaction hash plus index in Transaction swap array. | [optional] [default to null]
 **pair** | **STRING_32**| Reference to pair. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_SWAP_V2_DTO]**](UniswapV2.SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swaps_current**
> uniswap_v2_get_swaps_current : detachable LIST [UNISWAP_V2_SWAP_V2_DTO]


Swaps (current) 🔥

Gets swaps.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [UNISWAP_V2_SWAP_V2_DTO]**](UniswapV2.SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_token_day_data_v2s_historical**
> uniswap_v2_get_token_day_data_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]


TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]**](UniswapV2.TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_token_v2s_historical**
> uniswap_v2_get_token_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; symbol:  detachable STRING_32 ; name:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_TOKEN_V2_DTO]


TokenV2s (historical) 🔥

Gets tokenv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Token address. | [optional] [default to null]
 **symbol** | **STRING_32**| Token symbol. | [optional] [default to null]
 **name** | **STRING_32**| Token name. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TOKEN_V2_DTO]**](UniswapV2.TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens_current**
> uniswap_v2_get_tokens_current : detachable LIST [UNISWAP_V2_TOKEN_V2_DTO]


Tokens (current) 🔥

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [UNISWAP_V2_TOKEN_V2_DTO]**](UniswapV2.TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_transaction_v2s_historical**
> uniswap_v2_get_transaction_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_TRANSACTION_V2_DTO]


TransactionV2s (historical) 🔥

Gets transactionv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Ethereum transaction hash. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TRANSACTION_V2_DTO]**](UniswapV2.TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_day_data_v2s_historical**
> uniswap_v2_get_uniswap_day_data_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]


UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]**](UniswapV2.UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_factory_v2s_historical**
> uniswap_v2_get_uniswap_factory_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]


UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Factory address. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]**](UniswapV2.UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_user_v2s_historical**
> uniswap_v2_get_user_v2s_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_USER_V2_DTO]


UserV2s (historical) 🔥

Gets userv2s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| User address. | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_USER_V2_DTO]**](UniswapV2.UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

