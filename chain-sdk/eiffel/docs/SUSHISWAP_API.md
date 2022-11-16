# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_exchanges_current**](SUSHISWAP_API.md#curve_get_exchanges_current) | **Get** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dex_get_trades_current**](SUSHISWAP_API.md#dex_get_trades_current) | **Get** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswap_get_bundles_historical**](SUSHISWAP_API.md#sushiswap_get_bundles_historical) | **Get** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
[**sushiswap_get_burns_historical**](SUSHISWAP_API.md#sushiswap_get_burns_historical) | **Get** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
[**sushiswap_get_day_datas_historical**](SUSHISWAP_API.md#sushiswap_get_day_datas_historical) | **Get** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
[**sushiswap_get_factorys_historical**](SUSHISWAP_API.md#sushiswap_get_factorys_historical) | **Get** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
[**sushiswap_get_hour_datas_historical**](SUSHISWAP_API.md#sushiswap_get_hour_datas_historical) | **Get** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
[**sushiswap_get_liquidity_position_snapshots_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_position_snapshots_historical) | **Get** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
[**sushiswap_get_liquidity_positions_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_positions_historical) | **Get** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
[**sushiswap_get_mints_historical**](SUSHISWAP_API.md#sushiswap_get_mints_historical) | **Get** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
[**sushiswap_get_pair_day_datas_historical**](SUSHISWAP_API.md#sushiswap_get_pair_day_datas_historical) | **Get** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
[**sushiswap_get_pair_hour_datas_historical**](SUSHISWAP_API.md#sushiswap_get_pair_hour_datas_historical) | **Get** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
[**sushiswap_get_pairs_historical**](SUSHISWAP_API.md#sushiswap_get_pairs_historical) | **Get** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
[**sushiswap_get_pools_current**](SUSHISWAP_API.md#sushiswap_get_pools_current) | **Get** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswap_get_swaps_current**](SUSHISWAP_API.md#sushiswap_get_swaps_current) | **Get** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswap_get_swaps_historical**](SUSHISWAP_API.md#sushiswap_get_swaps_historical) | **Get** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**sushiswap_get_token_day_datas_historical**](SUSHISWAP_API.md#sushiswap_get_token_day_datas_historical) | **Get** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
[**sushiswap_get_tokens_current**](SUSHISWAP_API.md#sushiswap_get_tokens_current) | **Get** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**sushiswap_get_tokens_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_historical) | **Get** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**sushiswap_get_transactions_historical**](SUSHISWAP_API.md#sushiswap_get_transactions_historical) | **Get** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
[**sushiswap_get_users_historical**](SUSHISWAP_API.md#sushiswap_get_users_historical) | **Get** /dapps/sushiswap/users/historical | Users (historical) 🔥


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
> sushiswap_get_bundles_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_BUNDLE_DTO]


Bundles (historical) 🔥

Gets bundles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Hardcoded to &#39;1&#39;. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_BUNDLE_DTO]**](Sushiswap.BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_burns_historical**
> sushiswap_get_burns_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_BURN_DTO]


Burns (historical) 🔥

Gets burns.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_BURN_DTO]**](Sushiswap.BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_day_datas_historical**
> sushiswap_get_day_datas_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_DAY_DATA_DTO]


DayDatas (historical) 🔥

Gets daydatas.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_DAY_DATA_DTO]**](Sushiswap.DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_factorys_historical**
> sushiswap_get_factorys_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_FACTORY_DTO]


Factorys (historical) 🔥

Gets factorys.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Factory address. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_FACTORY_DTO]**](Sushiswap.FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_hour_datas_historical**
> sushiswap_get_hour_datas_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_HOUR_DATA_DTO]


HourDatas (historical) 🔥

Gets hourdatas.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Start of hour timestamp. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_HOUR_DATA_DTO]**](Sushiswap.HourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_position_snapshots_historical**
> sushiswap_get_liquidity_position_snapshots_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]


LiquidityPositionSnapshots (historical) 🔥

Gets liquiditypositionsnapshots.


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

[**LIST [SUSHISWAP_LIQUIDITY_POSITION_SNAPSHOT_DTO]**](Sushiswap.LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_liquidity_positions_historical**
> sushiswap_get_liquidity_positions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; user:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]


LiquidityPositions (historical) 🔥

Gets liquiditypositions.


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

[**LIST [SUSHISWAP_LIQUIDITY_POSITION_DTO]**](Sushiswap.LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_mints_historical**
> sushiswap_get_mints_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_MINT_DTO]


Mints (historical) 🔥

Gets mints.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_MINT_DTO]**](Sushiswap.MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pair_day_datas_historical**
> sushiswap_get_pair_day_datas_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ; token_0:  detachable STRING_32 ; token_1:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]


PairDayDatas (historical) 🔥

Gets pairdaydatas.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**|  | [optional] [default to null]
 **token_0** | **STRING_32**|  | [optional] [default to null]
 **token_1** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_PAIR_DAY_DATA_DTO]**](Sushiswap.PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pair_hour_datas_historical**
> sushiswap_get_pair_hour_datas_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]


PairHourDatas (historical) 🔥

Gets pairhourdatas.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **pair** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_PAIR_HOUR_DATA_DTO]**](Sushiswap.PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pairs_historical**
> sushiswap_get_pairs_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; name:  detachable STRING_32 ; token_0:  detachable STRING_32 ; token_1:  detachable STRING_32 ): detachable LIST [SUSHISWAP_PAIR_DTO]


Pairs (historical) 🔥

Gets pairs.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **id** | **STRING_32**|  | [optional] [default to null]
 **name** | **STRING_32**|  | [optional] [default to null]
 **token_0** | **STRING_32**|  | [optional] [default to null]
 **token_1** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_PAIR_DTO]**](Sushiswap.PairDTO.md)

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
> sushiswap_get_swaps_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; pair:  detachable STRING_32 ): detachable LIST [SUSHISWAP_SWAP_DTO]


Swaps (historical) 🔥

Gets swaps.


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

[**LIST [SUSHISWAP_SWAP_DTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_token_day_datas_historical**
> sushiswap_get_token_day_datas_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]


TokenDayDatas (historical) 🔥

Gets tokendaydatas.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Identifier, day start timestamp in unix / 86400. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_TOKEN_DAY_DATA_DTO]**](Sushiswap.TokenDayDataDTO.md)

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

# **sushiswap_get_tokens_historical**
> sushiswap_get_tokens_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ; symbol:  detachable STRING_32 ; name:  detachable STRING_32 ): detachable LIST [SUSHISWAP_TOKEN_DTO]


Tokens (historical) 🔥

Gets tokens.


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

[**LIST [SUSHISWAP_TOKEN_DTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_transactions_historical**
> sushiswap_get_transactions_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_TRANSACTION_DTO]


Transactions (historical) 🔥

Gets transactions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| Ethereum transaction hash. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_TRANSACTION_DTO]**](Sushiswap.TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_users_historical**
> sushiswap_get_users_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; id:  detachable STRING_32 ): detachable LIST [SUSHISWAP_USER_DTO]


Users (historical) 🔥

Gets users.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **end_block** | **INTEGER_64**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] [default to null]
 **id** | **STRING_32**| User address. | [optional] [default to null]

### Return type

[**LIST [SUSHISWAP_USER_DTO]**](Sushiswap.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

