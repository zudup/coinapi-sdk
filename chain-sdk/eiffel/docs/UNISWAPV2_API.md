# UNISWAPV2_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv2_pools_current_get**](UNISWAPV2_API.md#chains_chain_id_dapps_uniswapv2_pools_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv2_swaps_current_get**](UNISWAPV2_API.md#chains_chain_id_dapps_uniswapv2_swaps_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv2_tokens_current_get**](UNISWAPV2_API.md#chains_chain_id_dapps_uniswapv2_tokens_current_get) | **Get** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


# **chains_chain_id_dapps_uniswapv2_pools_current_get**
> chains_chain_id_dapps_uniswapv2_pools_current_get (chain_id: STRING_32 ): detachable LIST [PAIR_V2_DTO]


GetPools


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [PAIR_V2_DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv2_swaps_current_get**
> chains_chain_id_dapps_uniswapv2_swaps_current_get (chain_id: STRING_32 ): detachable LIST [SWAP_V2_DTO]


GetSwaps


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [SWAP_V2_DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv2_tokens_current_get**
> chains_chain_id_dapps_uniswapv2_tokens_current_get (chain_id: STRING_32 ): detachable LIST [TOKEN_V2_DTO]


GetTokens


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [TOKEN_V2_DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

