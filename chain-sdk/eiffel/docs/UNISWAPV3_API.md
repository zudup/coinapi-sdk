# UNISWAPV3_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv3_bundle_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_bundle_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chains_chain_id_dapps_uniswapv3_burns_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_burns_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chains_chain_id_dapps_uniswapv3_factory_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_factory_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chains_chain_id_dapps_uniswapv3_mints_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_mints_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chains_chain_id_dapps_uniswapv3_pools_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_pools_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_pools_day_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_position_snapshots_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chains_chain_id_dapps_uniswapv3_positions_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_positions_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chains_chain_id_dapps_uniswapv3_swaps_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_swaps_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv3_ticks_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_ticks_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chains_chain_id_dapps_uniswapv3_tokens_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_tokens_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**](UNISWAPV3_API.md#chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **chains_chain_id_dapps_uniswapv3_bundle_current_get**
> chains_chain_id_dapps_uniswapv3_bundle_current_get (chain_id: STRING_32 ): detachable LIST [BUNDLE_V3_DTO]


GetBundles


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [BUNDLE_V3_DTO]**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_burns_current_get**
> chains_chain_id_dapps_uniswapv3_burns_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [BURN_V3_DTO]


GetBurns


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [BURN_V3_DTO]**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_factory_current_get**
> chains_chain_id_dapps_uniswapv3_factory_current_get (chain_id: STRING_32 ): detachable LIST [FACTORY_V3_DTO]


GetFactory


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [FACTORY_V3_DTO]**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_mints_current_get**
> chains_chain_id_dapps_uniswapv3_mints_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [MINT_V3_DTO]


GetMints


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [MINT_V3_DTO]**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_current_get**
> chains_chain_id_dapps_uniswapv3_pools_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [POOL_V3_DTO]


GetPools


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [POOL_V3_DTO]**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**
> chains_chain_id_dapps_uniswapv3_pools_day_data_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [POOL_DAY_DATA_V3_DTO]


GetPoolsDayData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [POOL_DAY_DATA_V3_DTO]**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**
> chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [POOL_HOUR_DATA_V3_DTO]


GetPoolsHourData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [POOL_HOUR_DATA_V3_DTO]**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**
> chains_chain_id_dapps_uniswapv3_position_snapshots_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [POSITION_SNAPSHOT_V3_DTO]


GetPositionSnapshot


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [POSITION_SNAPSHOT_V3_DTO]**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_positions_current_get**
> chains_chain_id_dapps_uniswapv3_positions_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [POSITION_V3_DTO]


GetPositions


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [POSITION_V3_DTO]**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_swaps_current_get**
> chains_chain_id_dapps_uniswapv3_swaps_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [SWAP_V3_DTO]


GetSwaps


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [SWAP_V3_DTO]**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_current_get**
> chains_chain_id_dapps_uniswapv3_ticks_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [TICK_V3_DTO]


GetTicks


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [TICK_V3_DTO]**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**
> chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get (chain_id: STRING_32 ; filter_pool_id:  detachable STRING_32 ): detachable LIST [TICK_DAY_DATA_V3_DTO]


GetTicksDayData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [TICK_DAY_DATA_V3_DTO]**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_current_get**
> chains_chain_id_dapps_uniswapv3_tokens_current_get (chain_id: STRING_32 ; filter_token_id:  detachable STRING_32 ): detachable LIST [TOKEN_V3_DTO]


GetTokens


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [TOKEN_V3_DTO]**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**
> chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get (chain_id: STRING_32 ; filter_token_id:  detachable STRING_32 ): detachable LIST [TOKEN_V3_DAY_DATA_DTO]


GetTokensDayData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [TOKEN_V3_DAY_DATA_DTO]**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**
> chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get (chain_id: STRING_32 ; filter_token_id:  detachable STRING_32 ): detachable LIST [TOKEN_HOUR_DATA_V3_DTO]


GetTokensHourData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [TOKEN_HOUR_DATA_V3_DTO]**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**
> chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get (chain_id: STRING_32 ): detachable LIST [UNISWAP_DAY_DATA_V3_DTO]


GetUniswapDayData


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [UNISWAP_DAY_DATA_V3_DTO]**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

