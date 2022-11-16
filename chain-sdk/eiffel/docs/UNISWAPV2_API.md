# UNISWAPV2_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_pools_current**](UNISWAPV2_API.md#uniswap_v2_get_pools_current) | **Get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_swaps_current**](UNISWAPV2_API.md#uniswap_v2_get_swaps_current) | **Get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_tokens_current**](UNISWAPV2_API.md#uniswap_v2_get_tokens_current) | **Get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


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

