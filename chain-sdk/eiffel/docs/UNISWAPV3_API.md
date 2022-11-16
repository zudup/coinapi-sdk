# UNISWAPV3_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v3_get_bundles_current**](UNISWAPV3_API.md#uniswap_v3_get_bundles_current) | **Get** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswap_v3_get_burns_current**](UNISWAPV3_API.md#uniswap_v3_get_burns_current) | **Get** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswap_v3_get_day_data_current**](UNISWAPV3_API.md#uniswap_v3_get_day_data_current) | **Get** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswap_v3_get_factory_current**](UNISWAPV3_API.md#uniswap_v3_get_factory_current) | **Get** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswap_v3_get_mints_current**](UNISWAPV3_API.md#uniswap_v3_get_mints_current) | **Get** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswap_v3_get_pools_current**](UNISWAPV3_API.md#uniswap_v3_get_pools_current) | **Get** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswap_v3_get_pools_day_data_current**](UNISWAPV3_API.md#uniswap_v3_get_pools_day_data_current) | **Get** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswap_v3_get_pools_hour_data_current**](UNISWAPV3_API.md#uniswap_v3_get_pools_hour_data_current) | **Get** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswap_v3_get_positions_current**](UNISWAPV3_API.md#uniswap_v3_get_positions_current) | **Get** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswap_v3_get_positions_snapshots_current**](UNISWAPV3_API.md#uniswap_v3_get_positions_snapshots_current) | **Get** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswap_v3_get_swaps_current**](UNISWAPV3_API.md#uniswap_v3_get_swaps_current) | **Get** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswap_v3_get_ticks_current**](UNISWAPV3_API.md#uniswap_v3_get_ticks_current) | **Get** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswap_v3_get_ticks_day_data_current**](UNISWAPV3_API.md#uniswap_v3_get_ticks_day_data_current) | **Get** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswap_v3_get_tokens_current**](UNISWAPV3_API.md#uniswap_v3_get_tokens_current) | **Get** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswap_v3_get_tokens_day_data_current**](UNISWAPV3_API.md#uniswap_v3_get_tokens_day_data_current) | **Get** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswap_v3_get_tokens_hour_data_current**](UNISWAPV3_API.md#uniswap_v3_get_tokens_hour_data_current) | **Get** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


# **uniswap_v3_get_bundles_current**
> uniswap_v3_get_bundles_current : detachable LIST [UNISWAP_V3_BUNDLE_V3_DTO]


Bundles (current)

Gets bundles.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [UNISWAP_V3_BUNDLE_V3_DTO]**](UniswapV3.BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_burns_current**
> uniswap_v3_get_burns_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_BURN_V3_DTO]


Burns (current)

Gets burns.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_BURN_V3_DTO]**](UniswapV3.BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_day_data_current**
> uniswap_v3_get_day_data_current : detachable LIST [UNISWAP_V3_UNISWAP_DAY_DATA_V3_DTO]


DayData (current)

Gets uniswapv3 day data.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [UNISWAP_V3_UNISWAP_DAY_DATA_V3_DTO]**](UniswapV3.UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_factory_current**
> uniswap_v3_get_factory_current : detachable LIST [UNISWAP_V3_FACTORY_V3_DTO]


Factory (current)

Gets factory.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [UNISWAP_V3_FACTORY_V3_DTO]**](UniswapV3.FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_mints_current**
> uniswap_v3_get_mints_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_MINT_V3_DTO]


Mints (current)

Gets mints.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_MINT_V3_DTO]**](UniswapV3.MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools_current**
> uniswap_v3_get_pools_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_POOL_V3_DTO]


Pools (current) 🔥

Gets pools.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_POOL_V3_DTO]**](UniswapV3.PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools_day_data_current**
> uniswap_v3_get_pools_day_data_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_POOL_DAY_DATA_V3_DTO]


PoolsDayData (current)

Gets pools day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_POOL_DAY_DATA_V3_DTO]**](UniswapV3.PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools_hour_data_current**
> uniswap_v3_get_pools_hour_data_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_POOL_HOUR_DATA_V3_DTO]


PoolsHourData (current)

Gets pools hour data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_POOL_HOUR_DATA_V3_DTO]**](UniswapV3.PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_positions_current**
> uniswap_v3_get_positions_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_POSITION_V3_DTO]


Positions (current)

Gets positions.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_POSITION_V3_DTO]**](UniswapV3.PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_positions_snapshots_current**
> uniswap_v3_get_positions_snapshots_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_POSITION_SNAPSHOT_V3_DTO]


PositionsSnapshots (current)

Gets positions snapshots.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_POSITION_SNAPSHOT_V3_DTO]**](UniswapV3.PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_swaps_current**
> uniswap_v3_get_swaps_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_SWAP_V3_DTO]


Swaps (current) 🔥

Gets swaps.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_SWAP_V3_DTO]**](UniswapV3.SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_ticks_current**
> uniswap_v3_get_ticks_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_TICK_V3_DTO]


Ticks (current)

Gets ticks.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_TICK_V3_DTO]**](UniswapV3.TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_ticks_day_data_current**
> uniswap_v3_get_ticks_day_data_current (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_TICK_DAY_DATA_V3_DTO]


TicksDayData (current)

Gets ticks day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_TICK_DAY_DATA_V3_DTO]**](UniswapV3.TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens_current**
> uniswap_v3_get_tokens_current (filter_token_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_TOKEN_V3_DTO]


Tokens (current) 🔥

Gets tokens.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_TOKEN_V3_DTO]**](UniswapV3.TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens_day_data_current**
> uniswap_v3_get_tokens_day_data_current (filter_token_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_TOKEN_V3_DAY_DATA_DTO]


TokensDayData (current)

Gets tokens day data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_TOKEN_V3_DAY_DATA_DTO]**](UniswapV3.TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens_hour_data_current**
> uniswap_v3_get_tokens_hour_data_current (filter_token_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V3_TOKEN_HOUR_DATA_V3_DTO]


TokensHourData (current)

Gets tokens hour data.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V3_TOKEN_HOUR_DATA_V3_DTO]**](UniswapV3.TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

