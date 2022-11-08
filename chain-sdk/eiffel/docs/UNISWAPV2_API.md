# UNISWAPV2_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_bundles_historical**](UNISWAPV2_API.md#uniswap_v2_get_bundles_historical) | **Get** /dapps/uniswapv2/bundles/historical | Bundles (historical)
[**uniswap_v2_get_burns_historical**](UNISWAPV2_API.md#uniswap_v2_get_burns_historical) | **Get** /dapps/uniswapv2/burns/historical | Burns (historical)
[**uniswap_v2_get_day_data_historical**](UNISWAPV2_API.md#uniswap_v2_get_day_data_historical) | **Get** /dapps/uniswapv2/dayData/historical | DayData (historical)
[**uniswap_v2_get_factory_historical**](UNISWAPV2_API.md#uniswap_v2_get_factory_historical) | **Get** /dapps/uniswapv2/factory/historical | Factory (historical)
[**uniswap_v2_get_liquidity_positions_historical**](UNISWAPV2_API.md#uniswap_v2_get_liquidity_positions_historical) | **Get** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
[**uniswap_v2_get_liquidity_positions_snapshots_historical**](UNISWAPV2_API.md#uniswap_v2_get_liquidity_positions_snapshots_historical) | **Get** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
[**uniswap_v2_get_mints_historical**](UNISWAPV2_API.md#uniswap_v2_get_mints_historical) | **Get** /dapps/uniswapv2/mints/historical | Mints (historical)
[**uniswap_v2_get_pools_current**](UNISWAPV2_API.md#uniswap_v2_get_pools_current) | **Get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_pools_day_data_historical**](UNISWAPV2_API.md#uniswap_v2_get_pools_day_data_historical) | **Get** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
[**uniswap_v2_get_pools_historical**](UNISWAPV2_API.md#uniswap_v2_get_pools_historical) | **Get** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
[**uniswap_v2_get_pools_hour_data_historical**](UNISWAPV2_API.md#uniswap_v2_get_pools_hour_data_historical) | **Get** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
[**uniswap_v2_get_swaps_current**](UNISWAPV2_API.md#uniswap_v2_get_swaps_current) | **Get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_swaps_historical**](UNISWAPV2_API.md#uniswap_v2_get_swaps_historical) | **Get** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
[**uniswap_v2_get_tokens_current**](UNISWAPV2_API.md#uniswap_v2_get_tokens_current) | **Get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswap_v2_get_tokens_day_data_historical**](UNISWAPV2_API.md#uniswap_v2_get_tokens_day_data_historical) | **Get** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
[**uniswap_v2_get_tokens_historical**](UNISWAPV2_API.md#uniswap_v2_get_tokens_historical) | **Get** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
[**uniswap_v2_get_transactions_historical**](UNISWAPV2_API.md#uniswap_v2_get_transactions_historical) | **Get** /dapps/uniswapv2/transactions/historical | Transactions (historical)
[**uniswap_v2_get_users_historical**](UNISWAPV2_API.md#uniswap_v2_get_users_historical) | **Get** /dapps/uniswapv2/users/historical | Users (historical)


# **uniswap_v2_get_bundles_historical**
> uniswap_v2_get_bundles_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [UNISWAP_V2_BUNDLE_V2_DTO]


Bundles (historical)

Gets bundles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_BUNDLE_V2_DTO]**](UniswapV2.BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_burns_historical**
> uniswap_v2_get_burns_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_BURN_V2_DTO]


Burns (historical)

Gets burns.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_BURN_V2_DTO]**](UniswapV2.BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_day_data_historical**
> uniswap_v2_get_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]


DayData (historical)

Gets uniswapv2 day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_UNISWAP_DAY_DATA_V2_DTO]**](UniswapV2.UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_factory_historical**
> uniswap_v2_get_factory_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]


Factory (historical)

Gets factory.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_UNISWAP_FACTORY_V2_DTO]**](UniswapV2.UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_positions_historical**
> uniswap_v2_get_liquidity_positions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]


LiquidityPositions (historical)

Gets liquidity positions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_LIQUIDITY_POSITION_V2_DTO]**](UniswapV2.LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_positions_snapshots_historical**
> uniswap_v2_get_liquidity_positions_snapshots_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]


LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_LIQUIDITY_POSITION_SNAPSHOT_V2_DTO]**](UniswapV2.LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_mints_historical**
> uniswap_v2_get_mints_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_MINT_V2_DTO]


Mints (historical)

Gets mints.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_MINT_V2_DTO]**](UniswapV2.MintV2DTO.md)

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

# **uniswap_v2_get_pools_day_data_historical**
> uniswap_v2_get_pools_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]


PoolsDayData (historical)

Gets pools day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_DAY_DATA_V2_DTO]**](UniswapV2.PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools_historical**
> uniswap_v2_get_pools_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_V2_DTO]


Pools (historical) 🔥

Gets pools.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_V2_DTO]**](UniswapV2.PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools_hour_data_historical**
> uniswap_v2_get_pools_hour_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]


PoolsHourData (historical)

Gets pools tracked each our.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_HOUR_DATA_V2_DTO]**](UniswapV2.PairHourDataV2DTO.md)

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

# **uniswap_v2_get_swaps_historical**
> uniswap_v2_get_swaps_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_SWAP_V2_DTO]


Swaps (historical) 🔥

Gets swaps.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_SWAP_V2_DTO]**](UniswapV2.SwapV2DTO.md)

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

# **uniswap_v2_get_tokens_day_data_historical**
> uniswap_v2_get_tokens_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]


TokensDayData (historical)

Gets tokens day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TOKEN_DAY_DATA_V2_DTO]**](UniswapV2.TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens_historical**
> uniswap_v2_get_tokens_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_TOKEN_V2_DTO]


Tokens (historical) 🔥

Gets tokens.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TOKEN_V2_DTO]**](UniswapV2.TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_transactions_historical**
> uniswap_v2_get_transactions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [UNISWAP_V2_TRANSACTION_V2_DTO]


Transactions (historical)

Gets transactions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_TRANSACTION_V2_DTO]**](UniswapV2.TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_users_historical**
> uniswap_v2_get_users_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [UNISWAP_V2_USER_V2_DTO]


Users (historical)

Gets users.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_USER_V2_DTO]**](UniswapV2.UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

