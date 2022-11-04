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
[**dapps_sushiswap_pools_current_get**](SUSHISWAP_API.md#dapps_sushiswap_pools_current_get) | **Get** /dapps/sushiswap/pools/current | GetPools
[**dapps_sushiswap_pools_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_pools_historical_get) | **Get** /dapps/sushiswap/pools/historical | GetPools
[**dapps_sushiswap_swaps_current_get**](SUSHISWAP_API.md#dapps_sushiswap_swaps_current_get) | **Get** /dapps/sushiswap/swaps/current | GetSwaps
[**dapps_sushiswap_swaps_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_swaps_historical_get) | **Get** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**dapps_sushiswap_token_day_data_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_token_day_data_historical_get) | **Get** /dapps/sushiswap/tokenDayData/historical | 
[**dapps_sushiswap_tokens_current_get**](SUSHISWAP_API.md#dapps_sushiswap_tokens_current_get) | **Get** /dapps/sushiswap/tokens/current | GetTokens
[**dapps_sushiswap_tokens_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_tokens_historical_get) | **Get** /dapps/sushiswap/tokens/historical | GetTokens
[**dapps_sushiswap_transactions_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_transactions_historical_get) | **Get** /dapps/sushiswap/transactions/historical | 
[**dapps_sushiswap_users_historical_get**](SUSHISWAP_API.md#dapps_sushiswap_users_historical_get) | **Get** /dapps/sushiswap/users/historical | 


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

# **dapps_sushiswap_pools_current_get**
> dapps_sushiswap_pools_current_get : detachable LIST [PAIR_DTO]


GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [PAIR_DTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_pools_historical_get**
> dapps_sushiswap_pools_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [PAIR_DTO]


GetPools


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [PAIR_DTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_swaps_current_get**
> dapps_sushiswap_swaps_current_get : detachable LIST [SWAP_DTO]


GetSwaps


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SWAP_DTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_swaps_historical_get**
> dapps_sushiswap_swaps_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; pool_id:  detachable STRING_32 ): detachable LIST [SWAP_DTO]


GetSwaps (historical)


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **pool_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [SWAP_DTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

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

# **dapps_sushiswap_tokens_current_get**
> dapps_sushiswap_tokens_current_get : detachable LIST [TOKEN_DTO]


GetTokens


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [TOKEN_DTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_tokens_historical_get**
> dapps_sushiswap_tokens_historical_get (start_block:  detachable INTEGER_64 ; end_block:  detachable INTEGER_64 ; start_date:  detachable DATE_TIME ; end_date:  detachable DATE_TIME ; token_id:  detachable STRING_32 ): detachable LIST [TOKEN_DTO]


GetTokens


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **INTEGER_64**|  | [optional] [default to null]
 **end_block** | **INTEGER_64**|  | [optional] [default to null]
 **start_date** | **DATE_TIME**|  | [optional] [default to null]
 **end_date** | **DATE_TIME**|  | [optional] [default to null]
 **token_id** | **STRING_32**|  | [optional] [default to null]

### Return type

[**LIST [TOKEN_DTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

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

