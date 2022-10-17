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
> List<PairDTO> chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapPoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<PairDTO>**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsSushiswapSwapsCurrentGet**
> List<SwapDTO> chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapSwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<SwapDTO>**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsSushiswapTokensCurrentGet**
> List<TokenDTO> chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsSushiswapTokensCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->chainsChainIdDappsSushiswapTokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<TokenDTO>**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

