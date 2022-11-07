# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**sushiswap_get_bundles_historical**](SUSHISWAP_API.md#sushiswap_get_bundles_historical) | **Get** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswap_get_burns_historical**](SUSHISWAP_API.md#sushiswap_get_burns_historical) | **Get** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswap_get_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_day_data_historical) | **Get** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswap_get_factory_historical**](SUSHISWAP_API.md#sushiswap_get_factory_historical) | **Get** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswap_get_hour_data_historical**](SUSHISWAP_API.md#sushiswap_get_hour_data_historical) | **Get** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswap_get_liquidity_position_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_position_historical) | **Get** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswap_get_liquidity_position_snapshot_historical**](SUSHISWAP_API.md#sushiswap_get_liquidity_position_snapshot_historical) | **Get** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswap_get_mints_historical**](SUSHISWAP_API.md#sushiswap_get_mints_historical) | **Get** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswap_get_pools_current**](SUSHISWAP_API.md#sushiswap_get_pools_current) | **Get** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswap_get_pools_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_pools_day_data_historical) | **Get** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswap_get_pools_historical**](SUSHISWAP_API.md#sushiswap_get_pools_historical) | **Get** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswap_get_pools_hour_data_historical**](SUSHISWAP_API.md#sushiswap_get_pools_hour_data_historical) | **Get** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswap_get_swaps_current**](SUSHISWAP_API.md#sushiswap_get_swaps_current) | **Get** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswap_get_swaps_historical**](SUSHISWAP_API.md#sushiswap_get_swaps_historical) | **Get** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswap_get_tokens_current**](SUSHISWAP_API.md#sushiswap_get_tokens_current) | **Get** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswap_get_tokens_day_data_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_day_data_historical) | **Get** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswap_get_tokens_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_historical) | **Get** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**sushiswap_get_transactions_historical**](SUSHISWAP_API.md#sushiswap_get_transactions_historical) | **Get** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswap_get_users_historical**](SUSHISWAP_API.md#sushiswap_get_users_historical) | **Get** /dapps/sushiswap/users/historical | GetUsers (historical)


# **sushiswap_get_bundles_historical**
> sushiswap_get_bundles_historical (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ): detachable LIST [SUSHISWAP_BUNDLE_DTO]


GetBundles (historical)

Gets bundles.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

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


GetBurns (historical)

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


GetDayData (historical)

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


GetFactory (historical)

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


GetHourData (historical)

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


GetLiquidityPosition (historical)

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


GetLiquidityPositionSnapshot (historical)

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


GetMints (historical)

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


GetPools (current)

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


GetPoolsDayData (historical)

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


GetPools (historical)

Gets list of pools for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

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


GetPoolsHourData (historical)

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


GetSwaps (current)

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


GetSwaps (historical)

Gets list of swaps for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

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


GetTokens (current)

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


GetTokensDayData (historical)

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


GetTokens (historical)

Gets list of tokens for given filters.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **token_id** | **STRING_32**|  | [optional] [default to null]

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


GetTransactions (historical)

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


GetUsers (historical)

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

