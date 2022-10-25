# openapi.api.TokensApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCowTokensHistoricalGet**](TokensApi.md#chainschainiddappscowtokenshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
[**chainsChainIdDappsCurveTokensHistoricalGet**](TokensApi.md#chainschainiddappscurvetokenshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
[**chainsChainIdDappsSushiswapTokensHistoricalGet**](TokensApi.md#chainschainiddappssushiswaptokenshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
[**chainsChainIdDappsUniswapv2TokensHistoricalGet**](TokensApi.md#chainschainiddappsuniswapv2tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
[**chainsChainIdDappsUniswapv3TokensHistoricalGet**](TokensApi.md#chainschainiddappsuniswapv3tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 


# **chainsChainIdDappsCowTokensHistoricalGet**
> chainsChainIdDappsCowTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokensApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsCowTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokensApi->chainsChainIdDappsCowTokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsCurveTokensHistoricalGet**
> chainsChainIdDappsCurveTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokensApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsCurveTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokensApi->chainsChainIdDappsCurveTokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsSushiswapTokensHistoricalGet**
> chainsChainIdDappsSushiswapTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokensApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsSushiswapTokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokensApi->chainsChainIdDappsSushiswapTokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv2TokensHistoricalGet**
> chainsChainIdDappsUniswapv2TokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokensApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv2TokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokensApi->chainsChainIdDappsUniswapv2TokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TokensHistoricalGet**
> chainsChainIdDappsUniswapv3TokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokensApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv3TokensHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokensApi->chainsChainIdDappsUniswapv3TokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

