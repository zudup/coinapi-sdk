# UNISWAPV2_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**dapps_uniswapv2_bundles_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_bundles_historical_get) | **Get** /dapps/uniswapv2/bundles/historical | 
[**dapps_uniswapv2_burns_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_burns_historical_get) | **Get** /dapps/uniswapv2/burns/historical | 
[**dapps_uniswapv2_day_data_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_day_data_historical_get) | **Get** /dapps/uniswapv2/dayData/historical | 
[**dapps_uniswapv2_factory_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_factory_historical_get) | **Get** /dapps/uniswapv2/factory/historical | 
[**dapps_uniswapv2_liquidity_position_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_liquidity_position_historical_get) | **Get** /dapps/uniswapv2/liquidityPosition/historical | 
[**dapps_uniswapv2_liquidity_position_snapshots_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_liquidity_position_snapshots_historical_get) | **Get** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dapps_uniswapv2_mints_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_mints_historical_get) | **Get** /dapps/uniswapv2/mints/historical | 
[**dapps_uniswapv2_pool_day_data_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_pool_day_data_historical_get) | **Get** /dapps/uniswapv2/poolDayData/historical | 
[**dapps_uniswapv2_pool_hour_data_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_pool_hour_data_historical_get) | **Get** /dapps/uniswapv2/poolHourData/historical | 
[**dapps_uniswapv2_pools_current_get**](UNISWAPV2_API.md#dapps_uniswapv2_pools_current_get) | **Get** /dapps/uniswapv2/pools/current | GetPools
[**dapps_uniswapv2_pools_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_pools_historical_get) | **Get** /dapps/uniswapv2/pools/historical | 
[**dapps_uniswapv2_swaps_current_get**](UNISWAPV2_API.md#dapps_uniswapv2_swaps_current_get) | **Get** /dapps/uniswapv2/swaps/current | GetSwaps
[**dapps_uniswapv2_swaps_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_swaps_historical_get) | **Get** /dapps/uniswapv2/swaps/historical | 
[**dapps_uniswapv2_token_day_data_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_token_day_data_historical_get) | **Get** /dapps/uniswapv2/tokenDayData/historical | 
[**dapps_uniswapv2_tokens_current_get**](UNISWAPV2_API.md#dapps_uniswapv2_tokens_current_get) | **Get** /dapps/uniswapv2/tokens/current | GetTokens
[**dapps_uniswapv2_tokens_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_tokens_historical_get) | **Get** /dapps/uniswapv2/tokens/historical | 
[**dapps_uniswapv2_transactions_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_transactions_historical_get) | **Get** /dapps/uniswapv2/transactions/historical | 
[**dapps_uniswapv2_users_historical_get**](UNISWAPV2_API.md#dapps_uniswapv2_users_historical_get) | **Get** /dapps/uniswapv2/users/historical | 


# **dapps_uniswapv2_bundles_historical_get**
> dapps_uniswapv2_bundles_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





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

# **dapps_uniswapv2_burns_historical_get**
> dapps_uniswapv2_burns_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_day_data_historical_get**
> dapps_uniswapv2_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





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

# **dapps_uniswapv2_factory_historical_get**
> dapps_uniswapv2_factory_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





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

# **dapps_uniswapv2_liquidity_position_historical_get**
> dapps_uniswapv2_liquidity_position_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_liquidity_position_snapshots_historical_get**
> dapps_uniswapv2_liquidity_position_snapshots_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_mints_historical_get**
> dapps_uniswapv2_mints_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_pool_day_data_historical_get**
> dapps_uniswapv2_pool_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_pool_hour_data_historical_get**
> dapps_uniswapv2_pool_hour_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_pools_current_get**
> dapps_uniswapv2_pools_current_get (filter_pool_id:  detachable STRING_32 ): detachable LIST [UNISWAP_V2_PAIR_V2_DTO]


GetPools


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **STRING_32**| Filter pool id | [optional] [default to null]

### Return type

[**LIST [UNISWAP_V2_PAIR_V2_DTO]**](UniswapV2.PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_pools_historical_get**
> dapps_uniswapv2_pools_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_swaps_current_get**
> dapps_uniswapv2_swaps_current_get : detachable LIST [UNISWAP_V2_SWAP_V2_DTO]


GetSwaps


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

# **dapps_uniswapv2_swaps_historical_get**
> dapps_uniswapv2_swaps_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_token_day_data_historical_get**
> dapps_uniswapv2_token_day_data_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_tokens_current_get**
> dapps_uniswapv2_tokens_current_get : detachable LIST [UNISWAP_V2_TOKEN_V2_DTO]


GetTokens


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

# **dapps_uniswapv2_tokens_historical_get**
> dapps_uniswapv2_tokens_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 )





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

# **dapps_uniswapv2_transactions_historical_get**
> dapps_uniswapv2_transactions_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





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

# **dapps_uniswapv2_users_historical_get**
> dapps_uniswapv2_users_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME )





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

