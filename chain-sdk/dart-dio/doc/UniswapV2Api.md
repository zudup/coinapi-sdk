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
> BuiltList<PairV2DTO> chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv2SwapsCurrentGet**
> BuiltList<SwapV2DTO> chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2SwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv2TokensCurrentGet**
> BuiltList<TokenV2DTO> chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2TokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

