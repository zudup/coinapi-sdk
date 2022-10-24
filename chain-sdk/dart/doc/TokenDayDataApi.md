# openapi.api.TokenDayDataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainschainiddappsuniswapv2tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
[**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](TokenDayDataApi.md#chainschainiddappsuniswapv3tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 


# **chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**
> chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokenDayDataApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokenDayDataApi->chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet: $e\n');
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

# **chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**
> chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokenDayDataApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokenDayDataApi->chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet: $e\n');
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
