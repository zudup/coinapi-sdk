# UniswapV2Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens



## chainsChainIdDappsUniswapv2PoolsCurrentGet

GetPools

### Example

```bash
 chainsChainIdDappsUniswapv2PoolsCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[PairV2DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv2SwapsCurrentGet

GetSwaps

### Example

```bash
 chainsChainIdDappsUniswapv2SwapsCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[SwapV2DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv2TokensCurrentGet

GetTokens

### Example

```bash
 chainsChainIdDappsUniswapv2TokensCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[TokenV2DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

