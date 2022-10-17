# openapi.api.UniswapV2Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


# **chainsChainIdDappsUniswapv2PoolsCurrentGet**
> List<PairV2DTO> chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<PairV2DTO>**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv2SwapsCurrentGet**
> List<SwapV2DTO> chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2SwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<SwapV2DTO>**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv2TokensCurrentGet**
> List<TokenV2DTO> chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2TokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<TokenV2DTO>**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

