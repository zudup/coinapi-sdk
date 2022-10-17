# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#chainschainiddappssushiswappoolscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#chainschainiddappssushiswapswapscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#chainschainiddappssushiswaptokenscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


# **chainsChainIdDappsSushiswapPoolsCurrentGet**
> BuiltList<PairDTO> chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapPoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsSushiswapSwapsCurrentGet**
> BuiltList<SwapDTO> chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapSwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsSushiswapTokensCurrentGet**
> BuiltList<TokenDTO> chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final String chainId = chainId_example; // String | Chain id

try {
    final response = api.chainsChainIdDappsSushiswapTokensCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapTokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**BuiltList&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

