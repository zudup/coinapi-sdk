# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_exchanges_current**](SUSHISWAP_API.md#curve_get_exchanges_current) | **Get** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dex_get_trades_current**](SUSHISWAP_API.md#dex_get_trades_current) | **Get** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswap_get_bundles_historical**](SUSHISWAP_API.md#sushiswap_get_bundles_historical) | **Get** /dapps/sushiswap/bundles/historical | Bundles (historical)
[**sushiswap_get_burns_historical**](SUSHISWAP_API.md#sushiswap_get_burns_historical) | **Get** /dapps/sushiswap/burns/historical | Burns (historical)
[**sushiswap_get_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_day_data_historical) | **Get** /dapps/sushiswap/dayData/historical | DayData (historical)
[**sushiswap_get_factory_historical**](SUSHISWAP_API.md#sushiswap_get_factory_historical) | **Get** /dapps/sushiswap/factory/historical | Factory (historical)
[**sushiswap_get_hour_data_historical**](SUSHISWAP_API.md#sushiswap_get_hour_data_historical) | **Get** /dapps/sushiswap/hourData/historical | HourData (historical)
[**sushiswap_get_liquidity_position_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_position_historical) | **Get** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
[**sushiswap_get_liquidity_position_snapshot_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_position_snapshot_historical) | **Get** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
[**sushiswap_get_mints_historical**](SUSHISWAP_API.md#sushiswap_get_mints_historical) | **Get** /dapps/sushiswap/mints/historical | Mints (historical)
[**sushiswap_get_pools_current**](SUSHISWAP_API.md#sushiswap_get_pools_current) | **Get** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswap_get_pools_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_pools_day_data_historical) | **Get** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
[**sushiswap_get_pools_historical**](SUSHISWAP_API.md#sushiswap_get_pools_historical) | **Get** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
[**sushiswap_get_pools_hour_data_historical**](SUSHISWAP_API.md#sushiswap_get_pools_hour_data_historical) | **Get** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
[**sushiswap_get_swaps_current**](SUSHISWAP_API.md#sushiswap_get_swaps_current) | **Get** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswap_get_swaps_historical**](SUSHISWAP_API.md#sushiswap_get_swaps_historical) | **Get** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**sushiswap_get_tokens_current**](SUSHISWAP_API.md#sushiswap_get_tokens_current) | **Get** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**sushiswap_get_tokens_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_day_data_historical) | **Get** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
[**sushiswap_get_tokens_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_historical) | **Get** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**sushiswap_get_transactions_historical**](SUSHISWAP_API.md#sushiswap_get_transactions_historical) | **Get** /dapps/sushiswap/transactions/historical | Transactions (historical)
[**sushiswap_get_users_historical**](SUSHISWAP_API.md#sushiswap_get_users_historical) | **Get** /dapps/sushiswap/users/historical | Users (historical)


# **curve_get_exchanges_current**
> curve_get_exchanges_current : detachable LIST [CURVE_EXCHANGE_DTO]


Exchanges (current) 🔥

Gets exchanges.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [CURVE_EXCHANGE_DTO]**](Curve.ExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades_current**
> dex_get_trades_current : detachable LIST [DEX_TRADE_DTO]


Trades (current) 🔥

Gets trades.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_TRADE_DTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_bundles_historical**
> sushiswap_get_bundles_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_BUNDLE_DTO]


Bundles (historical)

Gets bundles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| AAAAAAAAAA | [optional] [default to null]
 **end_block** | **INTEGER_64**| BBBBBBBBBBBB | [optional] [default to null]
 **start_date** | **DATE_TIME**| CCCCCCCCC | [optional] [default to null]
 **end_date** | **DATE_TIME**| DDDDDDDDDDD | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_BUNDLE_DTO]**](Sushiswap.BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_burns_historical**
> sushiswap_get_burns_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_BURN_DTO]


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

[**LIST [SUSHISWAP_BURN_DTO]**](Sushiswap.BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_day_data_historical**
> sushiswap_get_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_DAY_DATA_DTO]


DayData (historical)

Gets day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_DAY_DATA_DTO]**](Sushiswap.DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_factory_historical**
> sushiswap_get_factory_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_FACTORY_DTO]


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

[**LIST [SUSHISWAP_FACTORY_DTO]**](Sushiswap.FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_hour_data_historical**
> sushiswap_get_hour_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_HOUR_DATA_DTO]


HourData (historical)

Gets hour data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_HOUR_DATA_DTO]**](Sushiswap.HourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_position_historical**
> sushiswap_get_liquidity_position_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]


LiquidityPosition (historical)

Gets liquidity position.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]**](Sushiswap.LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_position_snapshot_historical**
> sushiswap_get_liquidity_position_snapshot_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]


LiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]**](Sushiswap.LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_mints_historical**
> sushiswap_get_mints_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_MINT_DTO]


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

[**LIST [SUSHISWAP_MINT_DTO]**](Sushiswap.MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools_current**
> sushiswap_get_pools_current : detachable LIST [SUSHISWAP_PAIR_DTO]


Pools (current) 🔥

Gets pools.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_PAIR_DTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools_day_data_historical**
> sushiswap_get_pools_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]


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

[**LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]**](Sushiswap.PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools_historical**
> sushiswap_get_pools_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_DTO]


Pools (historical) 🔥

Gets list of pools for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe | [optional] [default to null]
 **pool_id** | **STRING_32**| The pool address. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_PAIR_DTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools_hour_data_historical**
> sushiswap_get_pools_hour_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]


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

[**LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]**](Sushiswap.PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_swaps_current**
> sushiswap_get_swaps_current : detachable LIST [SUSHISWAP_SWAP_DTO]


Swaps (current) 🔥

Gets swaps.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_SWAP_DTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_swaps_historical**
> sushiswap_get_swaps_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_SWAP_DTO]


Swaps (historical) 🔥

Gets list of swaps for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe | [optional] [default to null]
 **pool_id** | **STRING_32**| The pool address. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_SWAP_DTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens_current**
> sushiswap_get_tokens_current : detachable LIST [SUSHISWAP_TOKEN_DTO]


Tokens (current) 🔥

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_TOKEN_DTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens_day_data_historical**
> sushiswap_get_tokens_day_data_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]


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

[**LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]**](Sushiswap.TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens_historical**
> sushiswap_get_tokens_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_TOKEN_DTO]


Tokens (historical) 🔥

Gets list of tokens for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe | [optional] [default to null]
 **token_id** | **STRING_32**| The token address. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_TOKEN_DTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_transactions_historical**
> sushiswap_get_transactions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_TRANSACTION_DTO]


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

[**LIST [SUSHISWAP_TRANSACTION_DTO]**](Sushiswap.TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_users_historical**
> sushiswap_get_users_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_USER_DTO]


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

[**LIST [SUSHISWAP_USER_DTO]**](Sushiswap.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

