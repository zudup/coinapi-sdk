# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_sushiswap_pools_current_get**](SUSHISWAP_API.md#chains_chain_id_dapps_sushiswap_pools_current_get) | **Get** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chains_chain_id_dapps_sushiswap_swaps_current_get**](SUSHISWAP_API.md#chains_chain_id_dapps_sushiswap_swaps_current_get) | **Get** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chains_chain_id_dapps_sushiswap_tokens_current_get**](SUSHISWAP_API.md#chains_chain_id_dapps_sushiswap_tokens_current_get) | **Get** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


# **chains_chain_id_dapps_sushiswap_pools_current_get**
> chains_chain_id_dapps_sushiswap_pools_current_get (chain_id: STRING_32 ): detachable LIST [PAIR_DTO]


GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [PAIR_DTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_sushiswap_swaps_current_get**
> chains_chain_id_dapps_sushiswap_swaps_current_get (chain_id: STRING_32 ): detachable LIST [SWAP_DTO]


GetSwaps


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [SWAP_DTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_sushiswap_tokens_current_get**
> chains_chain_id_dapps_sushiswap_tokens_current_get (chain_id: STRING_32 ): detachable LIST [TOKEN_DTO]


GetTokens


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **STRING_32**| Chain id | [default to null]

### Return type

[**LIST [TOKEN_DTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

