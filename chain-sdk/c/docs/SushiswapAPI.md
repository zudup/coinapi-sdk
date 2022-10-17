# SushiswapAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SushiswapAPI_chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapAPI.md#SushiswapAPI_chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**SushiswapAPI_chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapAPI.md#SushiswapAPI_chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**SushiswapAPI_chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapAPI.md#SushiswapAPI_chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


# **SushiswapAPI_chainsChainIdDappsSushiswapPoolsCurrentGet**
```c
// GetPools
//
// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
//
list_t* SushiswapAPI_chainsChainIdDappsSushiswapPoolsCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](pair_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_chainsChainIdDappsSushiswapSwapsCurrentGet**
```c
// GetSwaps
//
list_t* SushiswapAPI_chainsChainIdDappsSushiswapSwapsCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](swap_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SushiswapAPI_chainsChainIdDappsSushiswapTokensCurrentGet**
```c
// GetTokens
//
list_t* SushiswapAPI_chainsChainIdDappsSushiswapTokensCurrentGet(apiClient_t *apiClient, char * chain_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** | Chain id | 

### Return type

[list_t](token_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

