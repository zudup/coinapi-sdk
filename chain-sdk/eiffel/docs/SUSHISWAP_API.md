# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**dapps_sushiswap_bundles_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_bundles_historical_get) | **Get** /dapps/sushiswap/bundles/historical | 
[**dapps_sushiswap_burns_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_burns_historical_get) | **Get** /dapps/sushiswap/burns/historical | 
[**dapps_sushiswap_day_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_day_data_historical_get) | **Get** /dapps/sushiswap/dayData/historical | 
[**dapps_sushiswap_factory_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_factory_historical_get) | **Get** /dapps/sushiswap/factory/historical | 
[**dapps_sushiswap_hour_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_hour_data_historical_get) | **Get** /dapps/sushiswap/hourData/historical | 
[**dapps_sushiswap_liquidity_position_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_liquidity_position_historical_get) | **Get** /dapps/sushiswap/liquidityPosition/historical | 
[**dapps_sushiswap_liquidity_position_snapshots_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_liquidity_position_snapshots_historical_get) | **Get** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**dapps_sushiswap_mints_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_mints_historical_get) | **Get** /dapps/sushiswap/mints/historical | 
[**dapps_sushiswap_pool_day_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_pool_day_data_historical_get) | **Get** /dapps/sushiswap/poolDayData/historical | 
[**dapps_sushiswap_pool_hour_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_pool_hour_data_historical_get) | **Get** /dapps/sushiswap/poolHourData/historical | 
[**dapps_sushiswap_token_day_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_token_day_data_historical_get) | **Get** /dapps/sushiswap/tokenDayData/historical | 
[**dapps_sushiswap_transactions_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_transactions_historical_get) | **Get** /dapps/sushiswap/transactions/historical | 
[**dapps_sushiswap_users_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_users_historical_get) | **Get** /dapps/sushiswap/users/historical | 
[**sushiswap_get_pools_current**](SUSHISWAP_API.md#sushiswap_get_pools_current) | **Get** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswap_get_pools_historical**](SUSHISWAP_API.md#sushiswap_get_pools_historical) | **Get** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswap_get_swaps_current**](SUSHISWAP_API.md#sushiswap_get_swaps_current) | **Get** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswap_get_swaps_historical**](SUSHISWAP_API.md#sushiswap_get_swaps_historical) | **Get** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswap_get_tokens_current**](SUSHISWAP_API.md#sushiswap_get_tokens_current) | **Get** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswap_get_tokens_historical**](SUSHISWAP_API.md#sushiswap_get_tokens_historical) | **Get** /dapps/sushiswap/tokens/historical | GetTokens (historical)


# **dapps_sushiswap_bundles_historical_get**
> dapps_sushiswap_bundles_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_burns_historical_get**
> dapps_sushiswap_burns_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_day_data_historical_get**
> dapps_sushiswap_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_factory_historical_get**
> dapps_sushiswap_factory_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_hour_data_historical_get**
> dapps_sushiswap_hour_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_liquidity_position_historical_get**
> dapps_sushiswap_liquidity_position_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_liquidity_position_snapshots_historical_get**
> dapps_sushiswap_liquidity_position_snapshots_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_mints_historical_get**
> dapps_sushiswap_mints_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_pool_day_data_historical_get**
> dapps_sushiswap_pool_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_pool_hour_data_historical_get**
> dapps_sushiswap_pool_hour_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_token_day_data_historical_get**
> dapps_sushiswap_token_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_transactions_historical_get**
> dapps_sushiswap_transactions_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_users_historical_get**
> dapps_sushiswap_users_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

# **sushiswap_get_swaps_current**
> sushiswap_get_swaps_current : detachable SUSHISWAP_SWAP_DTO


GetSwaps (current)

Gets swaps.


### Parameters
This endpoint does not need any parameter.

### Return type

[**SUSHISWAP_SWAP_DTO**](Sushiswap.SwapDTO.md)

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
> sushiswap_get_tokens_current : detachable SUSHISWAP_TOKEN_DTO


GetTokens (current)

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**SUSHISWAP_TOKEN_DTO**](Sushiswap.TokenDTO.md)

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

